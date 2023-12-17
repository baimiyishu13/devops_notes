package main

import "github.com/gin-gonic/gin"

func main() {
	router := gin.Default()

	router.LoadHTMLGlob("templates/*")
	// 使用 gin.Static 中间件来处理静态文件
	router.Static("/static", "./static")

	// 导入 login.go 中的路由和处理函数
	ImportLoginRoutes(router)

	router.GET("/", func(c *gin.Context) {
		c.HTML(200, "login.html", nil)
	})

	// 导入 stats.go 中的路由和处理函数
	ImportStatsRoutes(router)

	// 启动服务
	router.Run(":5050")
}
