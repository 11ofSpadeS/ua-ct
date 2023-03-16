import socket

def main():
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_s.bind(("127.0.0.1", 1234))
    
    while True:
        data, addr = udp_s.recvfrom(4096)
        print(f"Mensagem recebida de {addr[0]}:{addr[1]}: {data.decode('utf-8')}")
        
        resposta = input("Digite uma resposta: ")
        udp_s.sendto(resposta.encode('utf-8'), addr)

main()