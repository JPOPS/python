#!/bin/bash
yum install python-devel openssl-devel

# 1.创建文件夹
mkdir -p /usr/local/src/ansible

# 2. 安装setuptools
cd /usr/local/src/ansible
tar xvzf setuptools-7.0.tar.gz
cd setuptools-7.0
python setup.py install

# 3. 安装pycrypto
cd /usr/local/src/ansible
tar xvzf pycrypto-2.6.1.tar.gz
cd pycrypto-2.6.1
python setup.py install

# 4. 安装yaml
cd /usr/local/src/ansible
tar xvzf yaml-0.1.5.tar.gz
cd yaml-0.1.5
./configure --prefix=/usr/local
make --jobs=`grep processor /proc/cpuinfo | wc -l`
make install

# 5. 安装PyYAML
cd /usr/local/src/ansible
tar xvzf PyYAML-3.11.tar.gz
cd PyYAML-3.11  
python setup.py install  
  
# 6. 安装MarkupSafe  
cd /usr/local/src/ansible  
tar xvzf MarkupSafe-0.9.3.tar.gz
cd MarkupSafe-0.9.3  
python setup.py install

# 7. 安装Jinja2  
cd /usr/local/src/ansible  
tar xvzf Jinja2-2.7.3.tar.gz  
cd Jinja2-2.7.3  
python setup.py install  
  
# 8. 安装ecdsa  
cd /usr/local/src/ansible  
tar xvzf ecdsa-0.11.tar.gz
cd ecdsa-0.11  
python setup.py install  
cd /usr/local/src/ansible
tar xvzf paramiko-1.15.1.tar.gz
cd paramiko-1.15.1
python setup.py install

# 9. 安装simplejson
cd /usr/local/src/ansible
tar xvzf simplejson-3.6.5.tar.gz
cd simplejson-3.6.5
python setup.py install

# 10. 安装ansible
cd /usr/local/src/ansible
tar xvzf ansible-1.7.2.tar.gz
cd ansible-1.7.2
python setup.py install