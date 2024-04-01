import socket

HOST = "192.168.4.1"  # Standard loopback interface address (localhost)
PORT = 4999 # Port to listen on (non-privileged ports are > 1023)

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.connect((HOST, PORT))

    s.sendall(b"motorl 80\n")
    s.sendall(b"datasend 1\n")
    while True:

      data = s.recv(16384).decode('ascii')
      print(f"{data}")


