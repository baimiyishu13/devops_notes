## 🏆 Containers with Docker

🚀 简介

+ 最初编写此内容是为了记录自己学习 Docker 笔记
+ 这些材料内容参考了 jerome Petazzoni 大师和其他 Docker 教学贡献者的视频
+ 按照自己的步调去学习，这里将包含尽可能全的内容

建议：花一些时间阅读 Docker 或者在其他渠道系统学习

## 🌐 目录

[toc]

- [我们的培训环境](https://2022-11-live.container.training/docker.yml.html#toc-our-training-environment)
- [我们的第一个容器](https://2022-11-live.container.training/docker.yml.html#toc-our-first-containers)
- [背景容器](https://2022-11-live.container.training/docker.yml.html#toc-background-containers)
- [了解 Docker 镜像](https://2022-11-live.container.training/docker.yml.html#toc-understanding-docker-images)
- [交互式构建图像](https://2022-11-live.container.training/docker.yml.html#toc-building-images-interactively)
- [使用 Dockerfile 构建 Docker 镜像](https://2022-11-live.container.training/docker.yml.html#toc-building-docker-images-with-a-dockerfile)
- [`CMD`和`ENTRYPOINT`](https://2022-11-live.container.training/docker.yml.html#toc-cmd-and-entrypoint)
- [在构建期间复制文件](https://2022-11-live.container.training/docker.yml.html#toc-copying-files-during-the-build)
- [练习——编写 Dockerfile](https://2022-11-live.container.training/docker.yml.html#toc-exercise--writing-dockerfiles)

### ⛳️ 学习环境

本地安装 Docker 【99.99% 的docker 都在linux上，推荐使用 远程Linux】

+ 安装 docker【Mac】 ：https://docs.docker.com/desktop/install/mac-install/

```sh
✗ docker -v
Docker version 23.0.5, build bc4487a
```

当然也可以 云虚拟机上安装 Docker

如果是linux

+ 登录后，确保您可以运行基本的 Docker 命令：

```sh
$ docker version
Client:
	...
Server:
	...
```

当我们说运行docker 安装docker时，到底是什么意思？

#### 🚀 What is Docker

+ 安装docker 实际上意味着：“安装docker 引擎 和 CLI”
+ Docker 引擎：一个守护进程（在后台运行），负责管理容器【就像 VM的管理程序管理 VM一样】
+ 使用Docker CLI 和 Docker引擎 通过API通信 【还有许多其他程序也通过该API】



### ⛳️ 第一个容器

目标

+ 看到 Docker 的实际应用
+ 启动你的第一个容器

#### 🚀 非常简单的容器

只需运行该命令：

+ 使用了现有的最小、最简单的 image 之一：`busybox`
+ 运行了一个进程并 echo `hello world`

```sh
➜  ~ docker run busybox echo hello world
Unable to find image 'busybox:latest' locally
latest: Pulling from library/busybox
29f4353257d6: Pull complete
Digest: sha256:ba76950ac9eaa407512c9d859cea48114eeff8a6f12ebaa5d32ce79d4a017dd8
Status: Downloaded newer image for busybox:latest
hello world
```

如果 Docker 安装是全新的，还会看到一些额外的行，对于镜像的下载`busybox`

再次运行：【不再需要下载】

```sh
➜  ~ docker run busybox echo hello world
hello world
```

镜像：

```sh
➜  ~ docker images
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
busybox      latest    23466caa55cb   4 days ago    4.04MB
```





#### 🚀 更有用的容器

运行容器：

```
➜  ~ docker run -it ubuntu
root@ebc33dfe0a56:/# dpkg -l | wc -l
106
root@ebc33dfe0a56:/# exit
exit
```

+ 运行一个简单的`ubuntu`系统
+ -it`是 的简写`-i -t
  + `-i`告诉 Docker 将我们连接到容器的标准输入。【input / output】
  + `-t`告诉 Docker 我们需要一个伪终端。【terminal】

镜像大小：

```
➜  ~ docker images
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
ubuntu       latest    da935f064913   10 days ago   69.3MB
```

