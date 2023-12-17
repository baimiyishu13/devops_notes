package main

import (
	"github.com/gin-gonic/gin"
	"github.com/shirou/gopsutil/cpu"
	"github.com/shirou/gopsutil/mem"
	"net/http"
	"strconv"
)

func ImportStatsRoutes(router *gin.Engine) {
	// 查看 CPU 和内存的页面
	router.GET("/stats", func(c *gin.Context) {
		cpuPercent, _ := cpu.Percent(0, false)
		memInfo, _ := mem.VirtualMemory()

		// 将 CPU 使用率格式化为字符串
		cpuPercentStr := strconv.FormatFloat(cpuPercent[0], 'f', 2, 64)
		//cpuPercentStr := strconv.FormatFloat(cpuPercent[0], 2)
		memPercentStr := strconv.FormatFloat(memInfo.UsedPercent, 'f', 2, 64)

		// 渲染模板并传递数据
		c.HTML(http.StatusOK, "index.html", gin.H{
			"CPU_PERCENT": cpuPercentStr,
			"MEM_PERCENT": memPercentStr,
		})
	})
}
