# 分支修改说明

## 修改内容
1. 语言汉化，对界面展示进行了中文汉化
2. 调整了[Dockerfile](Dockerfile)打包，移除了从镜像中打包，改为手动打包
3. 修复了[Dockerfile](Dockerfile)打包时候拉取MongoDB，导致的镜像构建失败问题

## 打包流程
1. 编译项目源码:` mvn clean package -Dmaven.test.skip=true`
2. 打包镜像：` docker build -t protegeproject/webprotege:latest .`

## 部署流程
1. docker-compose启动：` docker compose up -d`
2. 进入镜像设置管理员账号：` docker exec -it webprotege bash`
3. 执行 cli 命令，设置管理员用户名密码：`java -jar webprotege-cli.jar create-admin-account`
4. 打开浏览器，进入页面：[设置页面](http://localhost:8080/#application/settings)，完善相关配置即可

