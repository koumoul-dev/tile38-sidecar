
# Run in background and keep pid
tile38-server &
TILE38_PID=$!

# Wait for any HTTP request on 8986 port as a KILL signal
echo "Wait for kill HTTP request on 8986"
echo -e "HTTP/1.1 200 OK\n\nKill tile38 now" | nc -q 0 -l 8986
echo "kill HTTP request received, stop the tile38 server"

# Kill it
kill $TILE38_PID
