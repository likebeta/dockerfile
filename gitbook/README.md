# Gitbook

## 构建

```sh
docker build -t likebeta/gitbook .
```

## 运行

```sh
docker run -itd --name=gitbook --restart=always -v /path/to/docs:/gitbook -p 4000:4000 [IMAGE]
```

## 说明

如果在`book.json`中添加了插件，导致运行失败，可以先使用执行一次如下命令`docker run -it --name=gitbook --rm -v /path/to/docs:/gitbook [IMAGE] gitbook install`
