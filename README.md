<h2 align='center'>  SRILM - The SRI Language Modeling Toolkit </h2>
<h4> This is the code from http://www.speech.sri.com/projects/srilm/ </h4>

<h3> Install Steps: </h3>
<h4> &emsp;&emsp;1  install dependent：apt-get install tcl-dev tk-dev mesa-common-dev libjpeg-dev libtogl-dev gawk gzip bzip2 p7zip  </h4> 
<h4> &emsp;&emsp;2    TCL install  </h4> 
&emsp;&emsp;&emsp;1   wget TCL： http://www.tcl.tk/software/tcltk/download.html </br>
&emsp;&emsp;&emsp;2    install TCL </br>
&emsp;&emsp;&emsp;&emsp;cd unix </br>
&emsp;&emsp;&emsp;&emsp;./configured </br>  
&emsp;&emsp;&emsp;&emsp;make </br>
&emsp;&emsp;&emsp;&emsp;make install </br>
<h4> &emsp;&emsp;&emsp;3   install srilm </h4>
&emsp;&emsp;&emsp;&emsp;1   unzip </br>
&emsp;&emsp;&emsp;&emsp;2   in srilm directory modify  Makefile </br>
&emsp;&emsp;&emsp;&emsp;&emsp;1   SRILM =/home/speech/stolcke/project/srilm/devel ---->   SRILM = /data/yuxianguo/tools/srilm<your srilm path>   </br>
&emsp;&emsp;&emsp;&emsp;&emsp;2   MACHINE_TYPE := $(shell$(SRILM)/sbin/machine-type)  ---->  MACHINE_TYPE := i686-m64    </br>
&emsp;&emsp;&emsp;&emsp;&emsp;3  in common directory：</br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;1    GAWK=/usr/bin/awk ----> /usr/bin/gawk </br>
<h4> &emsp;&emsp;&emsp;&emsp;&emsp;4   modify env path  </h4>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;gedit /etc/profile </br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;export PATH="$PATH:/data/yuxianguo/tools/srilm/bin/i686-m64:/data/yuxianguo/tools/srilm/bin"   </br>
<h4> &emsp;&emsp;&emsp;&emsp;&emsp;5   compile srilm </h4>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;make World   </br>
<h4> &emsp;&emsp;&emsp;&emsp;&emsp;6    test </h4>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;make test  </br>



