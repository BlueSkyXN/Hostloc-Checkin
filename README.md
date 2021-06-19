# hostloc-checkin
Hostloc 签到 并自动推送至Telegram（TG-BOT） 基于Shell和Python3

# 项目分析

由一个py主程序和sh辅助程序来完成签到

py负载签到，sh负责推送

## 准备工作

Shell，Python3全家桶，Hostloc账号名和密码

## 使用方法

py，sh，自己上传到对应目录即可，默认用的/root/

如果是其他目录请自行修改SH的文件内容

### 配置

需要配置的有

py文件中175-176两行的账户名和密码

sh文件中的tgid，tgbotapi

为了避免触发防CC，我把单次访问时间拉高到了60s，所以执行时间会非常非常长

### 定时

参考同款项目 https://github.com/BlueSkyXN/lovespeed

# 参考资料
https://github.com/Jox2018/hostloc_getPoints
