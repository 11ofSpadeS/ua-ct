from Crypto.Cipher import ARC4
import argparse
import os


def decrypt_file(filename, key):
    with open(filename, 'rb') as f:
        ciphertext = f.read()
    cipher = ARC4.new(key.encode())
    plaintext = cipher.decrypt(ciphertext)
    with open(filename[:-10], 'wb') as f:
        f.write(plaintext)


parser = argparse.ArgumentParser(
    description='Decrypt a file encrypted with RC4')
parser.add_argument('filename', help='Name of file to decrypt')
parser.add_argument('key', help='Decryption key')

args = parser.parse_args()

decrypt_file(args.filename, args.key)
