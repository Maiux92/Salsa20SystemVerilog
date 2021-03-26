import sys

class Salsa20:

    SIGMA = [[101, 120, 112, 97], [110, 100, 32, 51], [50, 45, 98, 121], [116, 101, 32, 107]]
    TAU   = [[101, 120, 112, 97], [110, 100, 32, 49], [54, 45, 98, 121], [116, 101, 32, 107]]

    BLOCK_SIZE = 64

    def __init__(self, key, nonce, version = 20, debug=False):

        if len(key) != 16 and len(key) != 32:
            print("Key error!")
            sys.exit(0)

        if len(nonce) != 8:
            print("Nonce error!")
            sys.exit(0)

        self.num_rounds = version // 2
        self.nonce = nonce
        self.blkid = 0

        self.debug = debug

        if len(key) == 16:
            self.key = key + key
            self.keylength = 16
            self.constants = self.TAU

        else:
            self.key = key
            self.keylength = 32
            self.constants = self.SIGMA

    @staticmethod
    def parse_in_txt(txt):
        return [ord(x) for x in txt]

    @staticmethod
    def parse_out_txt(txt):
        return ''.join([chr(x) for x in txt])

    def parse_block(self, txt):
        padding = [0 for _ in range(0, self.BLOCK_SIZE - len(txt))]
        return txt + padding

    @staticmethod
    def rotl32(w, r):
        return ((w << r) & 0xffffffff) | (w >> (32 -r))

    @staticmethod
    def littleendian(b0, b1, b2, b3):
        return b0 ^ (b1 << 8) ^ (b2 << 16) ^ (b3 << 24)

    @staticmethod
    def littleendianreverse(b):
        b0 = b & 0xff
        b1 = (b >> 8) & 0xff
        b2 = (b >> 16) & 0xff
        b3 = (b >> 24) & 0xff

        return b0, b1, b2, b3

    def debug_print(self, label, data):
        if not self.debug:
            return

        if data is None:
            print("{}".format(label))
            return

        print("{}: {}".format(label, self.data2hex(data)))

    def next_block_id(self):
        self.blkid += 1

    def quarterround(self, y0, y1, y2, y3):
        z1 = y1 ^ self.rotl32((y0 + y3) & 0xffffffff, 7)
        z2 = y2 ^ self.rotl32((z1 + y0) & 0xffffffff, 9)
        z3 = y3 ^ self.rotl32((z2 + z1) & 0xffffffff, 13)
        z0 = y0 ^ self.rotl32((z3 + z2) & 0xffffffff, 18)

        return z0, z1, z2, z3

    def rowround(self, y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15):
        z0, z1, z2, z3     = self.quarterround(y0, y1, y2, y3)
        z5, z6, z7, z4     = self.quarterround(y5, y6, y7, y4)
        z10, z11, z8, z9   = self.quarterround(y10, y11, y8, y9)
        z15, z12, z13, z14 = self.quarterround(y15, y12, y13, y14)

        return z0, z1, z2, z3, z4, z5, z6, z7, z8, z9, z10, z11, z12, z13, z14, z15

    def columnround(self, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15):
        y0, y4, y8, y12  = self.quarterround(x0, x4, x8, x12)
        y5, y9, y13, y1  = self.quarterround(x5, x9, x13, x1)
        y10, y14, y2, y6 = self.quarterround(x10, x14, x2, x6)
        y15, y3, y7, y11 = self.quarterround(x15, x3, x7, x11)

        return y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15

    def doubleround(self, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15):
        y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15 = self.columnround(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15)
        return self.rowround(y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15)

    def parse_input(self, x):
        x_little = []

        for i in range(0, 16):
            x_little.append(self.littleendian(x[i*4], x[i*4+1],  x[i*4+2],x[i*4+3]))

        return x_little

    def parse_output(self, x_little):
        x = []

        for i in range(0, 16):
            b = self.littleendianreverse(x_little[i])
            for j in range(0, 4):
                x.append(b[j])

        return x

    def salsa20hash(self, x):
        x_little = tuple(self.parse_input(x))
        x_init = [x for x in x_little]

        for i in range(0, self.num_rounds):
            x_little = self.doubleround(*x_little)

        x_little = list(x_little)

        for i,val in enumerate(x_little):
            x_init[i] = (x_init[i] + val) & 0xffffffff

        return x_init

    def salsa20nonce(self):
        nonce_blkid = [i for i in self.nonce]

        b = self.littleendianreverse(self.blkid >> 32 & 0xffffffff)
        for i in range(0, 4):
            nonce_blkid.append(b[3-i])

        b = self.littleendianreverse(self.blkid & 0xffffffff)
        for i in range(0, 4):
            nonce_blkid.append(b[3-i])

        return nonce_blkid

    def salsa20key(self):
        nonce = self.salsa20nonce()

        x = [0 for _ in range(0, 64)]

        for i in range(0, 16):
            x[i+4] = self.key[i]
            x[i+44] = self.key[i+16]

        for i in range(0, 16):
            x[i+24] = nonce[i]

        for i in range(0,4):
            x[i]    = self.constants[0][i]
            x[i+20] = self.constants[1][i]
            x[i+40] = self.constants[2][i]
            x[i+60] = self.constants[3][i]

        salsa_key = self.salsa20hash(x)

        return self.parse_output(salsa_key)

    def salsa20(self, txt):
        txt = self.parse_block(txt)

        salsa_key = self.salsa20key()

        self.debug_print("Key", salsa_key)

        out = []

        for i in range(0, 64):
            x = (salsa_key[i] ^ txt[i]) & 0xffffffff
            out.append(x)

        return out

    def run(self, txt):
        data = self.salsa20(txt)

        self.debug_print("In ", txt)
        self.debug_print("Out", data)
        self.debug_print("", None)

        self.next_block_id()

        return data

    @staticmethod
    def data2hex(x):
        data = ""

        for i in x:
            data += "{0:0{1}x}".format(i, 2)

        return data
