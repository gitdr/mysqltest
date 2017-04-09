#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

yum -y install epel-release 
yum -y update  && yum -y install mariadb-server mariadb python-pip python-devel

pip install --upgrade pip

systemctl start mariadb
systemctl enable mariadb

pip install sqlalchemy jupyter matplotlib seaborn pymysql 