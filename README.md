<h2 align='center'>  SRILM - The SRI Language Modeling Toolkit </h2>
<h4> This is the code from http://www.speech.sri.com/projects/srilm/ </h4>

<h3> Install Steps: </h3>
    1    install dependet：apt-get install tcl-dev tk-dev mesa-common-dev libjpeg-dev libtogl-dev gawk gzip bzip2 p7zip 
    2    TCL 安装：
1   下载： http://www.tcl.tk/software/tcltk/download.html
2    安装TCL
    cd unix
   ./configured   
   make
   make install
3   
安装srilm
1   
解压安装包
2   
在srilm目录下修改
Makefile
1   
# SRILM =
/home/speech/stolcke/project/srilm/devel 修改为 SRILM 的路径 SRILM =
/data/yuxianguo/tools/srilm
2   
MACHINE_TYPE := $(shell
$(SRILM)/sbin/machine-type)  修改为 MACHINE_TYPE := i686-m64
3  
在 common 目录下：
1   
将 
GAWK=/usr/bin/awk 修改为 /usr/bin/gawk
4   
修改环境变量

gedit /etc/profile 增加 export
PATH="$PATH:/data/yuxianguo/tools/srilm/bin/i686-m64:/data/yuxianguo/tools/srilm/bin"
5    编译 srilm
make World
6    测试
make test



