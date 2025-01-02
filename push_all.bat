@echo off
setlocal

REM 切换到你的 Git 仓库目录（如果需要的话）
REM cd /d "path\to\your\git\repository"

REM 添加所有更改
git add .

REM 从文件中读取提交信息并提交
set /p COMMIT_MESSAGE=<commit_message.txt
git commit -m "%COMMIT_MESSAGE%"

REM 推送到远程仓库（假设你已经设置了默认的远程和分支）
git push

endlocal
@echo on