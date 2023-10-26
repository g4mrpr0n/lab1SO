import os

size = os.path.getsize("print.bin")

small = open("print.bin", "rb")
big = open("print.img", "wb")
big.write(small.read())
bytes = b'\x00' * (1474560 - size)
big.write(bytes)