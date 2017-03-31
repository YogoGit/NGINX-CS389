The name of the docker image is nginx-cs389

To build, ensure you have the go image build (see above), and run the command
in the current directory;

```
% docker build -t nginx-cs389 .
```

To run the image, something like the following (in the foreground to watch logs)

```
% docker run --rm --name nginx -it \
   -e NODE_IP=192.168.99.100 \
   -p 80:80 \
   nginx-cs389
```
