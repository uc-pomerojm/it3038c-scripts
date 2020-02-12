import socket, sys
def gethostbynamebyip(h):
try:
    hostname = str(h)
    ip = socket.gethostbyname(hostname)
    print(hostname + "has an ip of " + ip)
except:
    print('oops something is wrong')

gethostbynamebyip(sys.argv[1])
#hosts = ["www.uc.edu","www.google.com","www.reddit.com"]
#print("working from host: " + socket.getfqdn)
#for h in hosts:
#    print(h + ":" +socket.gethostbyname(h))
