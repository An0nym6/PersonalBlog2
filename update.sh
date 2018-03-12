# 自动部署脚本

# 编译网站
jekyll build
mv _site/archives.html _site/archives/index.html

# 上传网站到服务器
scp -r /Users/liuren/Documents/An0nym6.github.io/_site ubuntu@ranthot.cn:/www/

# 在服务端执行更新
ssh ubuntu@ranthot.cn "sudo nginx -s reload"
