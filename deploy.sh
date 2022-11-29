# deploy.sh文件
###
 # @Author: coderQls 1064341174@qq.com
 # @Date: 2022-11-29 16:30:24
 # @LastEditors: coderQls 1064341174@qq.com
 # @LastEditTime: 2022-11-29 16:30:45
 # @Description: 
### 
# 确保脚本抛出遇到的错误
set -e

npm run build

# 进入生成的文件夹
# cd ./vuepress/dist

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:coderQls/my-blog.git main

cd ..