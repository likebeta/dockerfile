# Ngrok

## 构建

```sh
# 按需取出客户端
docker build -t likebeta/ngrok --target builder --build-arg DOMAIN=ngrok.pp.ua .
docker run -itd --name=ngrok --rm likebeta/ngrok /bin/sh
docker cp ngrok:/ngrok/bin/windows_amd64/ngrok.exe ./
docker stop ngrok

# 保留服务端
docker build -t likebeta/ngrok --build-arg DOMAIN=ngrok.pp.ua .
```

## 运行

运行服务端

```sh
docker run -itd --name=ngrok --restart=always -p 80:80 -p 4443:4443 -p 443:443 [IMAGE]
```

## 说明

客户端和服务端有对应关系，多次执行`docker build`生成的镜像里面的程序不能混用，如果想混用可以把`openssl`生成的文件脱离`docker build`独立存在。

`Ngrok`有内存泄漏的问题，可以将`1 */3 * * * docker stop ngrok && docker start ngrok >> ~/restart.log`加入`crontab`定时重启。
