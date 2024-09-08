# Steps to run the project
1. Clone the repository
2. Download https://www.xquartz.org/ and install it
3. Run the following commands in the terminal
```
IP=$(/usr/sbin/ipconfig getifaddr en0)
/opt/X11/bin/xhost + "$(/usr/sbin/ipconfig getifaddr en0)"
docker build -t pacman .
docker run --rm --name dev --mount type=bind,source="$(pwd)",target=/app -it --entrypoint bash -e DISPLAY="$(/usr/sbin/ipconfig getifaddr en0):0" -v /tmp/.X11-unix:/tmp/.X11-unix pacman
```

4. Run the following commands in the container
```
python pacman.py
```
