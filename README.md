<h2 align='center'>  SRILM - The SRI Language Modeling Toolkit </h2>
<h4> This is the code from http://www.speech.sri.com/projects/srilm/ </h4>

<h3> Install Steps: </h3>
&emsp;&emsp;&emsp;&emsp;1    install dependent：apt-get install tcl-dev tk-dev mesa-common-dev libjpeg-dev libtogl-dev gawk gzip bzip2 p7zip  </br>
&emsp;&emsp;&emsp;&emsp;2    TCL 安装 </br>：
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;1   下载： http://www.tcl.tk/software/tcltk/download.html </br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;2    安装TCL </br>
                                                    cd unix </br>
                                                    ./configured </br>  
                                                    make </br>
                                                    make install </br>
&emsp;&emsp;&emsp;&emsp;3   安装srilm </br>
                            1   解压安装包 </br>
                            2   在srilm目录下修改 Makefile </br>
                                1   SRILM =/home/speech/stolcke/project/srilm/devel 修改为 SRILM 的路径 SRILM = /data/yuxianguo/tools/srilm   </br>
                                2   MACHINE_TYPE := $(shell$(SRILM)/sbin/machine-type)  修改为 MACHINE_TYPE := i686-m64    </br>
                            3  在 common 目录下：</br>
                                1   将 GAWK=/usr/bin/awk 修改为 /usr/bin/gawk </br>
                            4   修改环境变量  </br>
                                gedit /etc/profile 增加 export PATH="$PATH:/data/yuxianguo/tools/srilm/bin/i686-m64:/data/yuxianguo/tools/srilm/bin"   </br>
                            5    编译 srilm </br>
                                make World   </br>
                            6    测试 </br>
                                make test  </br>



