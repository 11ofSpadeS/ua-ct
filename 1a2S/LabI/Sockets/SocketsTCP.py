import socket

def main():
# máximo de 1 cliente à espera de
# aceitação
    tcp_s.listen(1)
    # esperar por novos clientes
    client_s, client_addr = tcp_s.accept()
    while 1:
        b_data = client_s.recv(4096)
        client_s.send(b_data.upper())
        client_s.close()
    tcp_s.close()
