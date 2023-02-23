from Crypto.Cipher import ARC4
import argparse
import os


def encrypt_file(filename, key):
    with open(filename, 'rb') as f:
        plaintext = f.read()
    cipher = ARC4.new(key.encode())
    ciphertext = cipher.encrypt(plaintext)
    with open(filename + '.encrypted', 'wb') as f:
        f.write(ciphertext)


parser = argparse.ArgumentParser(description='Encrypt a file using RC4')
parser.add_argument('filename', help='Name of file to encrypt')
parser.add_argument('key', help='Encryption key')

args = parser.parse_args()

encrypt_file(args.filename, args.key)
