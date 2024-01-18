## 深入 Ansible 课程实验室

### 运行实验室

然后，应该能够直接从 divintoansible-lab 目录在命令提示符或终端中运行以下命令 -

```
docker-compose up
```

如果一切顺利，就应该启动实验室环境了。当看到类似以下内容的文本时，实验室就可以使用了 -

```
Attaching to docker, centos1, ubuntu2, ubuntu3, centos2, centos3, ubuntu-c, ubuntu1, portal
```

在浏览器中，浏览到[http://localhost:1000](http://localhost:1000/)，应该会看到实验室界面。如果发现无法使用ansible和password密码登录Ansible控制主机（ubuntu-c），那么的配置有问题。如果是这种情况，请务必在进行故障排除或更改配置之前执行以下操作。按 CTRL-C，然后运行以下命令 -

```
docker-compose rm
```

