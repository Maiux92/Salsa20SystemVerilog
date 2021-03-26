from salsa20 import *

salsa_version = 20
#salsa_version = 12
#salsa_version = 8
key = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216]
#key = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

nonce = [101, 102, 103, 104, 105, 106, 107, 108]
input_data = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras commodo vestibulum augue vel suscipit. Pellentesque consequat in leo id luctus. Proin laoreet ligula id mi mattis pharetra. Nulla quis pulvinar elit. Vivamus feugiat diam ac augue aliquam iaculis. Donec fringilla mi sed eros rhoncus molestie. Suspendisse lobortis dolor eget laoreet accumsan. Cras tincidunt ut ipsum vel hendrerit. Nulla facilisi. Praesent placerat sodales vehicula. Sed accumsan suscipit varius. In sed dignissim nibh, a dignissim metus. Ut ante turpis, pulvinar id molestie ut, hendrerit ac mauris. Pellentesque habitant morbi tristique senectus et netus quam."

s = Salsa20(key, nonce, salsa_version, True)

# output data format:
# 1 byte keylength
# 1 byte rounds
# 32 byte key
# 16 byte nonce
# plaintext
# ciphertext

#out_file = 'salsa20_test_data.bin'
out_file = '../vivado/salsa20/salsa20.sim/sim_1/behav/xsim/salsa20_test_data.bin'

txt = s.parse_in_txt(input_data)

ptx = []
ctx = []

for i in range(0, len(txt), 64):
    _ptx = s.parse_block(txt[i:i+64])
    _ctx = s.run(_ptx)

    ptx.extend(_ptx)
    ctx.extend(_ctx)


with open(out_file, "wb") as fp:
    fp.write(bytearray([1 if s.keylength == 32 else 0]))
    fp.write(bytearray([salsa_version//2]))

    fp.write(bytearray(s.key))
    fp.write(bytearray(s.nonce))

    fp.write(bytearray(ptx))
    fp.write(bytearray(ctx))
