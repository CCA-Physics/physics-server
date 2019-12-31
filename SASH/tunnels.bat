SET PATH="C:\Program Files\Git\usr\bin";%PATH%
bash -c "ssh -N -L 0.0.0.0:80:localhost:80 -L 0.0.0.0:34242:localhost:34242 -L 0.0.0.0:4242:localhost:4242 -R 0.0.0.0:1433:sash-mosaiq:1433 -R 10.0.0.1:44445:192.168.40.10:445 -R 10.0.0.3:44447:localhost:445 -R 0.0.0.0:43104:192.168.40.10:104 -o ServerAliveInterval=248 pexit@203.35.78.27 -p 38471"
echo tunnels stopped at %DATE% %TIME%