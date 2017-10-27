# localtunnel

This is a minimal docker image for the [localtunnel](https://localtunnel.me/)
client based on Alpine linux. `localtunnel` exposes your localhost to the world
for easy testing and sharing. More information can be found
[here](https://github.com/localtunnel/localtunnel).

This client allows setting the runtime parameters using environment variables (very handy for e.g. Synology DSM Docker server, where Docker run command is not available in the GUI).

The available environment variables are:
* LTPORT - the port you forward to the outside world. "80" by default.
* LTSUBDOMAIN - this is a hint to localserver.me to use the name to generate the forwarding URL. If the name is not yet used, will generate name like LTSUBDOMAIN_VALUE.localserver.me. If not set, a random value will be assigned by the localtunnel.me server (check the console or logs for the actual value).
* LTLOCALHOST - a server in the local network which you forward to the outside world. "localhost" by default.
* LTHOST - an upstream server with localhost software installed. "localtunnel.me" by default.

If you use UIs like Synology Docker Server appliance, please define the values under the "Environment" tab.
If you use the docker run command directly, you should use the following syntax:
docker run --env LTSUBDOMAIN=your_subdomain_name --env LTPORT=8000 --env LTLOCALHOST=192.168.1.123 qnstie/localtunnel
