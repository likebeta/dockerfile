# Github Pages

## 构建

```sh
docker build -t likebeta/gh-pages .
```

## 运行

```sh
docker run -itd --name=gh-pages --restart=always -v /path/to/docs:/gh-pages -p 4000:4000 [IMAGE]
```
