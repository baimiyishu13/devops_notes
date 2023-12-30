#### Jenkins

---

1. 运行测试：确保需要的工具可用、测试环境可用性、测试中间件等等
2. 构建工件：docker 可用
3. 发布工件：docker仓库凭证
4. 部署工件
5. 发生通知

Jenkins需要和其他软件结合：Docker、仓库、构建工具、部署的服务器等等

+ Jenkins相当于一个中间管理人



Jenkins部署：

+ 通常来说是部署在自己的服务器或者云上找一台云服务器部署

实验环境：本地部署 [docker](https://github.com/jenkinsci/docker/blob/master/README.md)

```sh
docker run -d -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17
```



Jenkins中安装软件：

```sh
$ docker exec -it -u 0 ed bash
$ apt update
```



```sh
➜  ~ docker run -d -p 8080:8080 -p 50000:50000 \
-v jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(which docker):/usr/bin/docker jenkins/jenkins:lts-jdk17

docker run -d -p 8080:8080 -p 50000:50000 \
-v jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
 jenkins/jenkins:lts-jdk17
```

【MAC】

```sh
root@a78b9a6c00a7:/# apt-get install docker-ce-cli
root@a78b9a6c00a7:/# chmod 666 /var/run/docker.sock
```

