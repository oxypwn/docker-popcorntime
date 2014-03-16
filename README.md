# Build popcorntime

Build base docker image.

```
docker build -t popcorntime .
```

Clone repository.
```
git clone https://github.com/Yify/popcorn-app.git
```

Build.
```
docker run -it -v $PWD/popcorn-app:/popcorn-app popcorntime
```
