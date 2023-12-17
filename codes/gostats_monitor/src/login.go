// routes.go
package main

import "github.com/gin-gonic/gin"

// ImportLoginRoutes 导入登录相关的路由
func ImportLoginRoutes(router *gin.Engine) {
	router.POST("/login", loginHandler)
}

func loginHandler(c *gin.Context) {
	username := c.PostForm("username")
	password := c.PostForm("password")

	// 假设这里有验证逻辑
	if isValidLogin(username, password) {
		// 登录成功，重定向到 /stats
		c.Redirect(302, "/stats")
	} else {
		c.JSON(401, gin.H{"error": "Invalid username or password"})
	}
}

func isValidLogin(username, password string) bool {
	// 假设这里有验证逻辑，例如验证用户名和密码是否匹配
	return username == "admin" && password == "admin"
}
