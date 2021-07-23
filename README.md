# hostloc-checkin
Hostloc 签到 并自动推送至Telegram（TG-BOT） 基于Python3

## 准备工作

SSH，Python3全家桶，Hostloc账号名和密码

## 使用方法

py自己上传到对应目录即可，默认用的/root/

如果是其他目录请自行修改SH的文件内容

### 配置

需要配置的有

195-196两行的账户名和密码

15行的TG的BOTAPI和TGID

为了避免触发防CC，我把单次访问时间拉高到了60s（23行），所以执行时间会非常非常长

如果你不喜欢太久，可以自己改时间

默认访问12个空间（170行）

像华为云函数只能900S，所以要控制好，也可以考虑分开签到

云函数部署参考： https://www.blueskyxn.com/202107/4816.html

可以把PIP包上传到依赖包空间，然后主文件上传/复制进去修改就行

[![image.png](https://p.pstatp.com/origin/pgc-image/140547a1842b4c4cbef68735ec1f87fe)](https://p.pstatp.com/origin/pgc-image/140547a1842b4c4cbef68735ec1f87fe)

也可以把整个serverless包上传

上传完记得修改参数和超时时间，然后测试ok后加上定时器

### 定时

参考同款项目 https://github.com/BlueSkyXN/lovespeed

参考： 

/var/spool/cron/root 或者 /var/spool/cron/crontabs/root

这个文件中添加

30 1 * * * python3 /root/hostloc.py

[或者把python3的路径也加上]

# 参考资料

https://github.com/Jox2018/hostloc_getPoints
