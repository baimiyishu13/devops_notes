## 🏆 Build & Package Manager Tools

[toc]

#### 🚀  Databases

🎯 数据库如何融入整体软件开发过程 

例：用户通过UI提交信息，存储在数据库中，也可以从数据库中提取

开发选择 【取决场景】

1. 本地安装数据库【不会弄乱影响其他开发】所以基本每个开发都有自己的本地数据库
2. 托管的数据库



🎯 如何连接到数据库

+ 每一种编程语言都有雨数据库连接的库

所以开发都会使用一些库的代码来连接数据库，但是必须告诉：

+ 使用的是哪个数据库
+ 数据库凭证

> 一切都在代码中的样子

python为例子：

```python
import mysql.connector

# 设置数据库连接信息
config = {
    'user': 'your_username',
    'password': 'your_password',
    'host': 'localhost',
    'database': 'your_database',
    'port': '3306'
}

# 创建数据库连接
connection = mysql.connector.connect(**config)

# 关闭连接
connection.close()
```

最佳实践是使用 “环境变量”，所以可以在外部配置。

+ 切换数据库也不需要更改密码

也可以当作启动命令传入【命令行参数】



🧡最佳方法：配置文件



#### 🚀  Databases Types

不同类型的数据库

1. MySQL
2. PostgreSQL
3. MongoDB
4. Redis
5. Elasticsearch

等等

为什么需要这么多数据库，它们的区别是什么，以及应用程序该选择哪一种

##### 🎯 key value databases

+ Redis
+ Etcd

这些数据库非常快

例如：kubernetes etcd数据库，实时存储集群信息数据【每一个小变化都会在etcd中更新 】

##### 🎯 文档数据库

+ MongoDB

非结构化数据，不需要在之前建立架构 

##### 🎯 关系型数据库

+ MySQL
+ PostgreSQL 

一个结构数据库，不能用它来存储结构化数据，需要严格的模式，数据被组织 成表

+ 所以写入如何东西前都需要建立架构
+ 属性、数据类型、大小等等
+ 可选还是必选

##### 🎯 搜索引擎数据库

+ ElasticSearch

