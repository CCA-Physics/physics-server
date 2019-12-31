SET PATH="C:\Program Files\Git\usr\bin";%PATH%
bash -c "ssh -N -L 0.0.0.0:80:localhost:80 -L 0.0.0.0:4242:localhost:4242 -R 0.0.0.0:31433:nbccc-msq:1433 -L 0.0.0.0:34242:localhost:34242 -R 10.0.0.2:44446:192.168.17.40:445 -R 10.0.0.4:44448:nbccc-pdc:445 -R 0.0.0.0:44104:192.168.17.40:104 -o ServerAliveInterval=241 pexit@203.35.78.27 -p 38471"
echo tunnels stopped at %DATE% %TIME%