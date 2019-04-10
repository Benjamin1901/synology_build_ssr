#### 小记：从外网hei到了几台群辉NAS（synology）服务器，利用服务器搭建ssr。

## 准备
##### 在DSM的控制面板里启用终端机的SSH连接  
![开启ssh](https://github.com/Benjamin1901/synology_build_ssr/blob/master/pic/1.png)      

  
  

##### 之后进入套件中心 - 开发者工具，安装python module和python3  
![安装py3](https://github.com/Benjamin1901/synology_build_ssr/blob/master/pic/2.png)   
   
     
       
       
##### 然后点击套件中心上方的设置，在套件来源里添加 https://www.cphub.net/，  
##### 添加后套件中心左侧栏最下方会多出社群选项卡。  
![配置套件来源](https://github.com/Benjamin1901/synology_build_ssr/blob/master/pic/4.png)    
  
    
      
      
##### 在社群选项卡中找到Easy Bootstrap Installer，下载安装。安装后启动服务。   
![安装](https://github.com/Benjamin1901/synology_build_ssr/blob/master/pic/5.png)    
  
    
      
      
##### 开启端口，可以和我一样开启8010、8388、22端口，如果和我不一样，则要修改shell文件里面的端口。   
![开启端口](https://github.com/Benjamin1901/synology_build_ssr/blob/master/pic/3.png)   
  
    
      
        
## 安装
##### 然后使用Xshell之类的工具连接SSH，用户名和密码等同于DSM里管理员帐号密码。  
##### 连接后执行：GitHub下载的shell文件  
##### 运行shell命令：sh ./ssr.sh

##### 启动后，使用客户端就可以正常连接了!
