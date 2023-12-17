# 阶段1: 构建Go应用
FROM golang:1.21.1 AS builder

# 在容器中设置工作目录
WORKDIR /app

# 复制Go模块文件
COPY go.* ./

# 下载和安装依赖
RUN go mod download

# 复制整个应用程序
COPY . .

# 构建Go应用程序
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app ./src

# 阶段2: 创建最终轻量级镜像
FROM scratch

# 在容器中设置工作目录
WORKDIR /app

# 从第一个阶段复制二进制文件
COPY --from=builder /app/app .
COPY --from=builder /app/src/templates ./templates
COPY --from=builder /app/src/static ./static

# 暴露端口
EXPOSE 5050

# 运行可执行文件
CMD ["./app"]
