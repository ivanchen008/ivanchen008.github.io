bash#!/bin/bash

echo "🚀 开始部署黑洞项目..."

# 克隆项目
git clone https://github.com/ivanchen008/singularity.git temp-deploy
cd temp-deploy

# 安装依赖
npm install

# 构建
npm run build

# 创建 gh-pages 分支并推送
cd dist
git init
git add -A
git commit -m 'Deploy black hole visualization'
git push -f git@github.com:ivanchen008/singularity.git master:gh-pages

cd ../..
rm -rf temp-deploy

echo "✅ 部署完成！"
echo "📍 访问: https://ivanchen008.github.io/singularity/"