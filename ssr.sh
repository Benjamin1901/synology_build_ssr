echo "准备获取root权限，下载pip！>"
sleep 1
echo "请您输入root密码！>"

#install pip
sudo -i
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py


#install ss
pip install shadowsocks


echo "请输入您的ssr登录密码！>"
read
echo "设置密码完成！"
sleep 1


#etc file
cat > /etc/shadowsocks.json << END_TEXT
{
  "server": 0.0.0.0,
  "server_port": 8388,
  "local_address": "127.0.0.1",
  "local_port": 1080,
  "password": $REPLY,
  "timeout": 300,
  "method": "aes-256-cfb",
  "fast_open": false
}
END_TEXT

echo "正在准备启动文件中！"

#star 
cd /usr/lib/python2.7/ctypes
mv util.py backup_util.py
wget https://iobaka.com/cloud/util.py
ssserver -c /etc/shadowsocks.json -d start

echo "ssr已经成功启动!"
echo "确保1080端口和8388端口已开启！"
echo "密码：" $REPLY


