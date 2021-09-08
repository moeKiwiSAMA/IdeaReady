# EnvReady

This image contains common utils I use everyday.

## Start


### With Xserver

```bash
docker run --rm -it -w /root --net=host -e DISPLAY -v $HOME/.Xauthority:/root/.Xauthority moekiwisama/ideaready:latest
```
