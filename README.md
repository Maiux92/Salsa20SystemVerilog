# SystemVerilog design and implementation of the Salsa20 stream cipher

This is the final project of the course "[DIGITAL DESIGN OF EMBEDDED SYSTEMS IN THE IOT AND RISC-V OPEN CORE ERA](https://www11.ceda.polimi.it/schedaincarico/schedaincarico/controller/scheda_pubblica/SchedaPublic.do?&evn_default=evento&c_classe=746344&polij_device_category=DESKTOP&__pj0=0&__pj1=999b5b20a837b6c1f2940f608e994d70)" for PhD students at Politecnico di Milano (Italy), held by Prof. Davide Zoni and Prof. William Fornaciari.

## Repo structure

* **Salsa20 software implementation**: a Salsa20 python3 implementation is available in the [salsa20-python](salsa20-python) folder, which also contains a test generator for the test bench
* **Source**: the SystemVerilog sources are in the [src/rtl](src/tb) folder
* **Test bench**: the SystemVerilog test bench sources are in the [src/tb](src/tb) folder
* **Schematics**: the schematics after synthesis and implementation are available in the [schematics](schematics) folder
* **Resources utilization**: the resources utilization after synthesis and implementation are available in the [results](results) folder
* **Technical report**: a technical report of the implemented modules is available in the [report](report/report.pdf) folder

## Technical details

This repo contains the design and implementation of the Salsa20 stream cipher \[[1](https://cr.yp.to/snuffle.html)\].
Our design supports different variants of the Salsa20 algorithm (e.g. Salsa12 and Salsa8), as the number of rounds is provided as an input during the setup phase.

### Resources utilization
Our design uses 2586 LUTs, 2590 registers, and 139 IOB ports.

### Throughput
Our design uses a circular buffer to continuously generate new keys.
Upon initialization, our design requires `n+2` clock cycles to switch to a ready state, with `n` equal to the number of rounds of the considered Salsa20 version.
When a burst of requests consumes the first generated key, our design requires `n-6` clock cycles to terminate the generation of the new key.
For example, the Salsa20 version requires `4` clock cycles (`n` is `10`), and the Salsa12 version requires no extra clock cycle.
Whenever a key is ready, our design is able to fullfil an encryption/decryption request, which has one clock cycle delay to provide the output.
Note that you can retrieve the result while providing the input for the next request.

### Workflow
1. Configure the keylength and the number of rounds
2. Initialize the Key - you need to divide it into 4 chunks of 8 bytes each, and provide each chunk in a different clock cycle
3. Initialize the nonce
4. Send the init signal
5. Wait for the ready signal
6. Send 8 bytes of plaintext (ciphertext) and set the data_encdec signal
7. Retrieve the resulting ciphertext (plaintext) in the next clock cycle

Note that 6 and 7 can happen simultaneously, as you can send the new encryption/decryption request while you retrieve the result of the previous request.


## References
\[[1](https://cr.yp.to/snuffle.html)\] Salsa20 stream cipher - Daniel J. Bernstein - https://cr.yp.to/snuffle.html
