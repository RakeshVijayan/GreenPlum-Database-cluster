Hadoop and greeen plum installation 

rvd@rvd ~ $ ssh root@11.0.0.20
Password: 
hmaster:~ # clear

hmaster:~ # zypper lr --uri
# | Alias                                            | Name                                             | Enabled | Refresh | URI                    
--+--------------------------------------------------+--------------------------------------------------+---------+---------+------------------------
1 | SUSE-Linux-Enterprise-Server-11-SP4 11.4.4-1.109 | SUSE-Linux-Enterprise-Server-11-SP4 11.4.4-1.109 | Yes     | No      | cd:///?devices=/dev/sr0
hmaster:~ # zypper ar -f  http://download.opensuse.org/tumbleweed/repo/oss/ oss
Adding repository 'oss' [done]
Repository 'oss' successfully added
Enabled: Yes
Autorefresh: Yes
GPG check: Yes
URI: http://download.opensuse.org/tumbleweed/repo/oss/

hmaster:~ # zypper in snappy
Retrieving repository 'oss' metadata [|]

New repository or package signing key received:
Key ID: B88B2FD43DBDC284
Key Name: openSUSE Project Signing Key <opensuse@opensuse.org>
Key Fingerprint: 22C07BA534178CD02EFE22AAB88B2FD43DBDC284
Key Created: Monday 05 May 2014 02:07:40 PM IST
Key Expires: Thursday 02 May 2024 02:07:40 PM IST
Repository: oss

Do you want to reject the key, trust temporarily, or trust always? [r/t/a/? shows all options] (r): a
Retrieving repository 'oss' metadata [done]
Building repository 'oss' cache [done]
Loading repository data...
Reading installed packages...
'snappy' not found in package names. Trying capabilities.
No provider of 'snappy' found.
Resolving package dependencies...

Nothing to do.
hmaster:~ # zypper in snappy-devel
Loading repository data...
Reading installed packages...
Resolving package dependencies...

Problem: solvable libstdc++6-6.2.1+r239849-1.2.x86_64 conflicts with libstdc++6 provided by itself
 Solution 1: do not install snappy-devel-1.1.3-1.5.x86_64
 Solution 2: do not install snappy-devel-1.1.3-1.5.x86_64

Choose from above solutions by number or cancel [1/2/c] (c): 1
Resolving dependencies...
Resolving package dependencies...

Nothing to do.
hmaster:~ # zypper in lz4
Loading repository data...
Reading installed packages...
Resolving package dependencies...

Problem: solvable libstdc++6-6.2.1+r239849-1.2.x86_64 conflicts with libstdc++6 provided by itself
 Solution 1: deinstallation of nscd-2.11.3-17.84.1.x86_64
 Solution 2: do not install lz4-131-1.3.x86_64
 Solution 3: do not install lz4-131-1.3.x86_64

Choose from above solutions by number or cancel [1/2/3/c] (c): 1
Resolving dependencies...
Resolving package dependencies...

The following NEW packages are going to be installed:
  glibc-extra liblz4-1_7 lz4 

The following package is going to be REMOVED:
  nscd 

The following packages are going to be upgraded:
  glibc glibc-32bit glibc-devel glibc-devel-32bit glibc-locale 

The following packages are not supported by their vendor:
  glibc glibc-32bit glibc-devel glibc-devel-32bit glibc-extra glibc-locale 
  liblz4-1_7 lz4 

5 packages to upgrade, 3 new, 1 to remove.
Overall download size: 10.3 MiB. After the operation, 27.6 MiB will be freed.
Continue? [y/n/? shows all options] (y): y
Retrieving package glibc-32bit-2.24-1.1.x86_64 (1/8), 1.2 MiB (3.5 MiB unpacked)
Retrieving: glibc-32bit-2.24-1.1.x86_64.rpm [done (171.0 KiB/s)]
Retrieving package glibc-2.24-1.1.x86_64 (2/8), 1.8 MiB (6.4 MiB unpacked)
Retrieving: glibc-2.24-1.1.x86_64.rpm [done (196.0 KiB/s)]
Retrieving package glibc-devel-2.24-1.1.x86_64 (3/8), 777.0 KiB (3.0 MiB unpacked)
Retrieving: glibc-devel-2.24-1.1.x86_64.rpm [done (179.8 KiB/s)]
Retrieving package glibc-locale-2.24-1.1.x86_64 (4/8), 6.2 MiB (123.3 MiB unpacked)
Retrieving: glibc-locale-2.24-1.1.x86_64.rpm [done (210.8 KiB/s)]
Retrieving package glibc-devel-32bit-2.24-1.1.x86_64 (5/8), 244.0 KiB (319.0 KiB unpacked)
Retrieving: glibc-devel-32bit-2.24-1.1.x86_64.rpm [done (137.0 KiB/s)]
Retrieving package liblz4-1_7-131-1.3.x86_64 (6/8), 37.0 KiB (71.0 KiB unpacked)
Retrieving: liblz4-1_7-131-1.3.x86_64.rpm [done (881 B/s)]
Retrieving package glibc-extra-2.24-1.1.x86_64 (7/8), 92.0 KiB (24.0 KiB unpacked)
Retrieving: glibc-extra-2.24-1.1.x86_64.rpm [done (32.1 KiB/s)]
Retrieving package lz4-131-1.3.x86_64 (8/8), 58.0 KiB (136.0 KiB unpacked)
Retrieving: lz4-131-1.3.x86_64.rpm [done (49.1 KiB/s)]
Removing nscd-2.11.3-17.84.1 [done]
Installing: glibc-32bit-2.24-1.1 [done]
Installing: glibc-2.24-1.1 [done]
Installing: glibc-devel-2.24-1.1 [done]
Installing: glibc-locale-2.24-1.1 [done]
Installing: glibc-devel-32bit-2.24-1.1 [done]
Installing: liblz4-1_7-131-1.3 [done]
Installing: glibc-extra-2.24-1.1 [done]
Installing: lz4-131-1.3 [done]
There are some running programs that use files deleted by recent upgrade. You may wish to restart some of them. Run 'zypper ps' to list these programs.
hmaster:~ # zypper se lz4
Loading repository data...
Reading installed packages...

S | Name         | Summary                                       | Type   
--+--------------+-----------------------------------------------+--------
i | liblz4-1_7   | Hash-based predictive Lempel-Ziv compressor   | package
  | liblz4-devel | Development files for the LZ4 compressor      | package
i | lz4          | Hash-based Predictive Lempel–Ziv compressor | package
hmaster:~ # zypper in liblz4-devel
Loading repository data...
Reading installed packages...
Resolving package dependencies...

The following NEW package is going to be installed:
  liblz4-devel 

The following package is not supported by its vendor:
  liblz4-devel 

1 new package to install.
Overall download size: 19.0 KiB. After the operation, additional 44.0 KiB will 
be used.
Continue? [y/n/? shows all options] (y): y
Retrieving package liblz4-devel-131-1.3.x86_64 (1/1), 19.0 KiB (44.0 KiB unpacked)
Retrieving: liblz4-devel-131-1.3.x86_64.rpm [done (0 B/s)]
Installing: liblz4-devel-131-1.3 [done]
hmaster:~ #

hmaster:~ # zypper se bzip2
Loading repository data...
Reading installed packages...

S | Name                | Summary                                   | Type      
--+---------------------+-------------------------------------------+-----------
i | bzip2               | A Program for Compressing Files           | package   
  | bzip2               | A Program for Compressing Files           | srcpackage
  | bzip2-doc           | The bzip2 program and Library Documenta-> | package   
  | lbzip2              | Parallel bzip2/bunzip2 Filter             | package   
  | pbzip2              | Parallelized Implementation of bzip2      | package   
  | perl-Compress-Bzip2 | Interface to Bzip2 compression library    | package   
hmaster:~ # zypper in lbzip2 bzip2-doc 
Loading repository data...
Reading installed packages...
Resolving package dependencies...

The following NEW packages are going to be installed:
  bzip2-doc lbzip2 

The following packages are not supported by their vendor:
  bzip2-doc lbzip2 

2 new packages to install.
Overall download size: 511.0 KiB. After the operation, additional 797.0 KiB 
will be used.
Continue? [y/n/? shows all options] (y): y
Retrieving package bzip2-doc-1.0.6-37.79.noarch (1/2), 419.0 KiB (596.0 KiB unpacked)
Retrieving: bzip2-doc-1.0.6-37.79.noarch.rpm [done (128.6 KiB/s)]
Retrieving package lbzip2-2.5-4.7.x86_64 (2/2), 92.0 KiB (201.0 KiB unpacked)
Retrieving: lbzip2-2.5-4.7.x86_64.rpm [done (83.6 KiB/s)]
Installing: bzip2-doc-1.0.6-37.79 [done]
Installing: lbzip2-2.5-4.7 [done]
hmaster:~ #

hmaster:~ # zypper se openssl 
Loading repository data...
Reading installed packages...

S | Name                       | Summary                            | Type      
--+----------------------------+------------------------------------+-----------
  | libgnutls-openssl-devel    | Development package for gnutls     | package   
  | libgnutls-openssl27        | The GNU Transport Layer Security-> | package   
  | libopenssl-devel           | Include Files and Libraries mand-> | package   
  | libopenssl-devel-32bit     | Include Files and Libraries mand-> | package   
i | libopenssl0_9_8            | Secure Sockets and Transport Lay-> | package   
i | libopenssl0_9_8-32bit      | Secure Sockets and Transport Lay-> | package   
  | libopenssl0_9_8-hmac       | HMAC files for FIPS-140-2 integr-> | package   
  | libopenssl0_9_8-hmac-32bit | HMAC files for FIPS-140-2 integr-> | package   
  | libopenssl1_0_0            | Secure Sockets and Transport Lay-> | package   
  | libopenssl1_0_0-32bit      | Secure Sockets and Transport Lay-> | package   
  | libopenssl1_0_0-hmac       | HMAC files for FIPS-140-2 integr-> | package   
  | libopenssl1_0_0-hmac-32bit | HMAC files for FIPS-140-2 integr-> | package   
  | libxmlsec1-openssl1        | OpenSSL crypto plugin for XML Se-> | package   
i | openssl                    | Secure Sockets and Transport Lay-> | package   
  | openssl                    | Secure Sockets and Transport Lay-> | srcpackage
i | openssl-certs              | CA certificates for OpenSSL        | package   
  | openssl-certs              | CA certificates for OpenSSL        | srcpackage
  | openssl-doc                | Additional Package Documentation   | package   
  | openssl-engine-af_alg      | AF_ALG engine for OpenSSL          | package   
  | openssl-ibmca              | The IBMCA OpenSSL dynamic engine   | srcpackage
  | openssl-ibmca-32bit        | The IBMCA OpenSSL dynamic engine   | package   
  | openssl-ibmpkcs11          | OpenSSL Dynamic PKCS #11 Engine    | package   
  | openssl-ibmpkcs11          | OpenSSL Dynamic PKCS #11 Engine    | srcpackage
  | openssl_tpm_engine         | OpenSSL TPM interface engine plu-> | package   
  | openssl_tpm_engine         | OpenSSL TPM interface engine plu-> | srcpackage
  | perl-Crypt-OpenSSL-Bignum  | OpenSSL's multiprecision integer-> | package   
  | perl-Crypt-OpenSSL-RSA     | RSA encoding and decoding, using-> | package   
  | perl-Crypt-OpenSSL-RSA     | RSA encoding and decoding, using-> | srcpackage
  | perl-Crypt-OpenSSL-Random  | Routines for accessing the OpenS-> | package   
  | php5-openssl               | PHP5 Extension Module              | package   
  | php53-openssl              | PHP5 Extension Module              | package   
  | php7-openssl               | PHP7 Extension Module              | package   
  | python-openssl             | Python wrapper module around the-> | package   
  | python-openssl             | Python wrapper module around the-> | srcpackage
  | python-pyOpenSSL           | Python wrapper module around the-> | package   
  | python-pyOpenSSL-doc       | Documentation for python-pyOpenSSL | package   
  | python3-pyOpenSSL          | Python wrapper module around the-> | package   
  | python3-pyOpenSSL-doc      | Python wrapper module around the-> | package   
  | xmlsec1-openssl-devel      | OpenSSL crypto plugin for XML Se-> | package   
hmaster:~ # zypper in  libopenssl-devel libopenssl1_0_0 
Loading repository data...
Reading installed packages...
Resolving package dependencies...

The following NEW packages are going to be installed:
  libopenssl1_0_0 libopenssl-devel libz1 zlib-devel 

The following package is going to be REMOVED:
  zlib 

The following package is going to be upgraded:
  openssl 

The following package is recommended, but will not be installed:
  ca-certificates-mozilla 

The following packages are not supported by their vendor:
  libopenssl1_0_0 libopenssl-devel libz1 openssl zlib-devel 

1 package to upgrade, 4 new, 1 to remove.
Overall download size: 2.2 MiB. After the operation, additional 5.6 MiB will be 
used.
Continue? [y/n/? shows all options] (y): y
Retrieving package libz1-1.2.8-11.75.x86_64 (1/5), 56.0 KiB (87.0 KiB unpacked)
Retrieving: libz1-1.2.8-11.75.x86_64.rpm [done (33.7 KiB/s)]
Retrieving package zlib-devel-1.2.8-11.75.x86_64 (2/5), 111.0 KiB (375.0 KiB unpacked)
Retrieving: zlib-devel-1.2.8-11.75.x86_64.rpm [done (49.6 KiB/s)]
Retrieving package libopenssl1_0_0-1.0.2h-1.4.x86_64 (3/5), 1.1 MiB (3.1 MiB unpacked)
Retrieving: libopenssl1_0_0-1.0.2h-1.4.x86_64.rpm [done (198.8 KiB/s)]
Retrieving package openssl-1.0.2h-1.4.x86_64 (4/5), 666.0 KiB (1.5 MiB unpacked)
Retrieving: openssl-1.0.2h-1.4.x86_64.rpm [done (155.0 KiB/s)]
Retrieving package libopenssl-devel-1.0.2h-1.4.x86_64 (5/5), 273.0 KiB (1.7 MiB unpacked)
Retrieving: libopenssl-devel-1.0.2h-1.4.x86_64.rpm [done (128.8 KiB/s)]
Installing: libz1-1.2.8-11.75 [done]
Installing: zlib-devel-1.2.8-11.75 [done]
Installing: libopenssl1_0_0-1.0.2h-1.4 [done]
Installing: openssl-1.0.2h-1.4 [done]
Installing: libopenssl-devel-1.0.2h-1.4 [done]
There are some running programs that use files deleted by recent upgrade. You may wish to restart some of them. Run 'zypper ps' to list these programs.
hmaster:~ #

hmaster:~ # zypper se libtool
Loading repository data...
Reading installed packages...

S | Name          | Summary                          | Type      
--+---------------+----------------------------------+-----------
i | libtool       | A Tool to Build Shared Libraries | package   
  | libtool       | A Tool to Build Shared Libraries | srcpackage
i | libtool-32bit | A Tool to Build Shared Libraries | package   
hmaster:~ # zypper in libtool
Loading repository data...
Reading installed packages...
Resolving package dependencies...

The following packages are going to be upgraded:
  libltdl7 libtool m4 

The following packages are not supported by their vendor:
  libltdl7 libtool m4 

3 packages to upgrade.
Overall download size: 1.0 MiB. After the operation, additional 1.2 MiB will be 
used.
Continue? [y/n/? shows all options] (y): y
Retrieving package m4-1.4.17-5.6.x86_64 (1/3), 243.0 KiB (504.0 KiB unpacked)
Retrieving: m4-1.4.17-5.6.x86_64.rpm [done (92.8 KiB/s)]
Retrieving package libltdl7-2.4.6-4.68.x86_64 (2/3), 36.0 KiB (39.0 KiB unpacked)
Retrieving: libltdl7-2.4.6-4.68.x86_64.rpm [done]
Retrieving package libtool-2.4.6-4.68.x86_64 (3/3), 751.0 KiB (3.5 MiB unpacked)
Retrieving: libtool-2.4.6-4.68.x86_64.rpm [done (187.9 KiB/s)]
Installing: m4-1.4.17-5.6 [done]
Installing: libltdl7-2.4.6-4.68 [done]
Installing: libtool-2.4.6-4.68 [done]
There are some running programs that use files deleted by recent upgrade. You may wish to restart some of them. Run 'zypper ps' to list these programs.
hmaster:~ # zypper in autoconf
Loading repository data...
Reading installed packages...
Resolving package dependencies...

The following package is going to be upgraded:
  autoconf 

The following package is going to change architecture:
  autoconf  x86_64 -> noarch


The following package is not supported by its vendor:
  autoconf 

1 package to upgrade, 1 to change arch.
Overall download size: 713.0 KiB. After the operation, additional 260.0 KiB 
will be used.
Continue? [y/n/? shows all options] (y): y
Retrieving package autoconf-2.69-13.83.noarch (1/1), 713.0 KiB (2.2 MiB unpacked)
Retrieving: autoconf-2.69-13.83.noarch.rpm [done (74.1 KiB/s)]
Installing: autoconf-2.69-13.83 [done]
There are some running programs that use files deleted by recent upgrade. You may wish to restart some of them. Run 'zypper ps' to list these programs.
hmaster:~ # zypper in automake
Loading repository data...
Reading installed packages...
Resolving package dependencies...

The following package is going to be upgraded:
  automake 

The following package is going to change architecture:
  automake  x86_64 -> noarch


The following package is not supported by its vendor:
  automake 

1 package to upgrade, 1 to change arch.
Overall download size: 829.0 KiB. After the operation, additional 1011.0 KiB 
will be used.
Continue? [y/n/? shows all options] (y): y
Retrieving package automake-1.15-4.3.noarch (1/1), 829.0 KiB (2.4 MiB unpacked)
Retrieving: automake-1.15-4.3.noarch.rpm [done (167.3 KiB/s)]
Installing: automake-1.15-4.3 [done]
There are some running programs that use files deleted by recent upgrade. You may wish to restart some of them. Run 'zypper ps' to list these programs.
hmaster:~ #


rvd@rvd ~/maven $ scp jdk-8u101-linux-x64.rpm  root@11.0.0.20:~/
Password: 
jdk-8u101-linux-x64.rpm                       100%  158MB  11.3MB/s   00:14    
rvd@rvd ~/maven $ scp maven-3.3.9-4.1.noarch.rpm root@11.0.0.20:~/
Password: 
maven-3.3.9-4.1.noarch.rpm                    100% 8081KB   7.9MB/s   00:00    
rvd@rvd ~/maven $
rvd@rvd ~/maven $ scp hadoop-2.7.2.tar.gz root@11.0.0.20:/greenplum 
Password: 
hadoop-2.7.2.tar.gz                           100%  202MB  11.2MB/s   00:18    
rvd@rvd ~/maven $ 



hmaster:~ # rpm -Uvh jdk-8u101-linux-x64.rpm 
Preparing...                ########################################### [100%]
   1:jdk1.8.0_101           ########################################### [100%]
Unpacking JAR files...
	tools.jar...
	plugin.jar...
	javaws.jar...
	deploy.jar...
	rt.jar...
	jsse.jar...
	charsets.jar...
	localedata.jar...
hmaster:~ # java -version
java version "1.8.0_101"
Java(TM) SE Runtime Environment (build 1.8.0_101-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.101-b13, mixed mode)
hmaster:~ #
hmaster:~ # rpm -Uvh maven-3.3.9-4.1.noarch.rpm 
warning: maven-3.3.9-4.1.noarch.rpm: Header V3 DSA signature: NOKEY, key ID 9591c39b
Preparing...                ########################################### [100%]
   1:maven                  ########################################### [100%]
hmaster:~ #



hmaster:~ # mkdir /greenplum 
hmaster:~ # groupadd gpadmin
hmaster:~ # useradd -m -s $(which bash) gpadmin -g gpadmin
hmaster:~ # chown -R gpadmin:gpamdin /greenplum/
chown: invalid group: `gpadmin:gpamdin'
hmaster:~ # chown -R gpadmin:gpadmin /greenplum/
hmaster:~ # cd /greenplum/
hmaster:/greenplum # ls
hadoop-2.7.2.tar.gz
hmaster:/greenplum # du -sh .
203M	.
hmaster:/greenplum # df -H .
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        22G  3.3G   17G  17% /
hmaster:/greenplum # ls /dev/sd*
/dev/sda  /dev/sda1  /dev/sda2  /dev/sda3  /dev/sda4
hmaster:/greenplum # fdisk -L
fdisk: invalid option -- 'L'
Usage:
 fdisk [options] <disk>    change partition table
 fdisk [options] -l <disk> list partition table(s)
 fdisk -s <partition>      give partition size(s) in blocks

Options:
 -b <size>             sector size (512, 1024, 2048 or 4096)
 -c[=<mode>]           compatible mode: 'dos' or 'nondos' (default)
 -h                    print this help text
 -u[=<unit>]           display units: 'cylinders' or 'sectors' (default)
 -v                    print program version
 -C <number>           specify the number of cylinders
 -H <number>           specify the number of heads
 -S <number>           specify the number of sectors per track

hmaster:/greenplum # fdisk -l

WARNING: GPT (GUID Partition Table) detected on '/dev/sda'! The util fdisk doesn't support GPT. Use GNU Parted.


Disk /dev/sda: 300.0 GB, 300000000000 bytes
255 heads, 63 sectors/track, 36472 cylinders, total 585937500 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk identifier: 0x90909090

   Device Boot      Start         End      Blocks   Id  System
/dev/sda1               1   585937499   292968749+  ee  GPT
hmaster:/greenplum # cd ..
hmaster:/ # mount /dev/sda3 /greenplum/
hmaster:/ # df -T
Filesystem     Type  1K-blocks    Used Available Use% Mounted on
/dev/sda1      ext3   20642428 3135804  16458048  17% /
udev           tmpfs   4025096     136   4024960   1% /dev
tmpfs          tmpfs   4025096       4   4025092   1% /dev/shm
/dev/sda2      vfat   10472440   12488  10459952   1% /boot/efi
/dev/sda3      xfs   236345600  685060 235660540   1% /greenplum
hmaster:/ # vi /etc/fstab

/dev/disk/by-id/scsi-35000c500331ca793-part4 swap                 swap       defaults              0 0
/dev/disk/by-id/scsi-35000c500331ca793-part1 /                    ext3       acl,user_xattr        1 1
/dev/disk/by-id/scsi-35000c500331ca793-part2 /boot/efi            vfat       umask=0002,utf8=true  0 0
proc                 /proc                proc       defaults              0 0
sysfs                /sys                 sysfs      noauto                0 0
debugfs              /sys/kernel/debug    debugfs    noauto                0 0
usbfs                /proc/bus/usb        usbfs      noauto                0 0
devpts               /dev/pts             devpts     mode=0620,gid=5       0 0
/dev/sda3 /greenplum xfs rw,noatime,inode64,allocsize=16m 0 0
~                                                                  
hmaster:/greenplum # tar -zxvf hadoop-2.7.2.tar.gz 

hmaster:/greenplum # mv hadoop-2.7.2 hadoop
hmaster:/greenplum # ls
hadoop  hadoop-2.7.2.tar.gz
hmaster:/greenplum # rm hadoop-2.7.2.tar.gz 
hmaster:/greenplum # mkdir datanode
hmaster:/greenplum # mkdir namenode
hmaster:/greenplum # ll
total 0
drwxr-xr-x 2 root  root    6 Sep 21 13:21 datanode
drwxr-xr-x 9 10011 10011 139 Jan 26  2016 hadoop
drwxr-xr-x 2 root  root    6 Sep 21 13:21 namenode
hmaster:/greenplum # chown -R gpadmin:gpadmin .
hmaster:/greenplum # ll
total 0
drwxr-xr-x 2 gpadmin gpadmin   6 Sep 21 13:21 datanode
drwxr-xr-x 9 gpadmin gpadmin 139 Jan 26  2016 hadoop
drwxr-xr-x 2 gpadmin gpadmin   6 Sep 21 13:21 namenode
hmaster:/greenplum # passwd gpadmin
Changing password for gpadmin.
New Password: 
Reenter New Password: 
Password changed.
hmaster:/greenplum #

hmaster:/greenplum # su gpadmin
gpadmin@hmaster:/greenplum> cd
gpadmin@hmaster:~> readlink -f /usr/bin/javac
/usr/java/jdk1.8.0_101/bin/javac
gpadmin@hmaster:~> vi .bashrc


export JAVA_HOME=/usr/java/jdk1.8.0_101/
export PATH=$PATH:$JAVA_HOME/bin
export CLASSPATH=.:$JAVA_HOME/jre/lib:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar
## HADOOP env variables
export HADOOP_HOME=/greenplum/hadoop
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_YARN_HOME=$HADOOP_HOME
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin

gpadmin@hmaster:~> ssh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (/home/gpadmin/.ssh/id_rsa): 
Created directory '/home/gpadmin/.ssh'.
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/gpadmin/.ssh/id_rsa.
Your public key has been saved in /home/gpadmin/.ssh/id_rsa.pub.
The key fingerprint is:
4b:a5:17:77:03:3d:d5:c1:3f:db:2f:d6:d4:ec:91:c0 [MD5] gpadmin@hmaster
The key's randomart image is:
+--[ RSA 2048]----+
|            ...o+|
|             .o..|
|          o o o..|
|         o o E o.|
|        S .   ..*|
|       . o     +=|
|        .      +o|
|              o +|
|             . . |
+--[MD5]----------+
gpadmin@hmaster:~>

gpadmin@hmaster:~> hostname 
hmaster
gpadmin@hmaster:~> cat /etc/hosts
#
# hosts         This file describes a number of hostname-to-address
#               mappings for the TCP/IP subsystem.  It is mostly
#               used at boot time, when no name servers are running.
#               On small systems, this file can be used instead of a
#               "named" name server.
# Syntax:
#    
# IP-Address  Full-Qualified-Hostname  Short-Hostname
#

127.0.0.1       localhost

# special IPv6 addresses
::1             localhost ipv6-localhost ipv6-loopback

fe00::0         ipv6-localnet

ff00::0         ipv6-mcastprefix
ff02::1         ipv6-allnodes
ff02::2         ipv6-allrouters
ff02::3         ipv6-allhosts
11.0.0.20       hmaster.suse hmaster
gpadmin@hmaster:~>
gpadmin@hmaster:~> hostname -f
hmaster.suse
gpadmin@hmaster:~> ssh-copy-id -i .ssh/id_rsa.pub gpadmin@hmaster
The authenticity of host 'hmaster (11.0.0.20)' can't be established.
ECDSA key fingerprint is 42:5c:7d:ce:b7:c7:d9:86:eb:01:11:7e:4e:9a:e0:92 [MD5].
Are you sure you want to continue connecting (yes/no)? yes
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
Password: 

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'gpadmin@hmaster'"
and check to make sure that only the key(s) you wanted were added.

gpadmin@hmaster:~> ssh hmaster
gpadmin@hmaster:~> exit
logout
Connection to hmaster closed.
gpadmin@hmaster:~> ssh hmaster.suse
The authenticity of host 'hmaster.suse (11.0.0.20)' can't be established.
ECDSA key fingerprint is 42:5c:7d:ce:b7:c7:d9:86:eb:01:11:7e:4e:9a:e0:92 [MD5].
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'hmaster.suse' (ECDSA) to the list of known hosts.
Last login: Wed Sep 21 13:38:20 2016 from hmaster.suse
gpadmin@hmaster:~> ssh hmaster.suse
Last login: Wed Sep 21 13:38:36 2016 from hmaster.suse
gpadmin@hmaster:~> exit
logout
Connection to hmaster.suse closed.
gpadmin@hmaster:~>

gpadmin@hmaster:/greenplum/hadoop/etc/hadoop> vi hdfs-site.xml 
gpadmin@hmaster:/greenplum/hadoop/etc/hadoop> vi hdfs-site.xml 
gpadmin@hmaster:/greenplum/hadoop/etc/hadoop> vi hdfs-site.xml 
gpadmin@hmaster:/greenplum/hadoop/etc/hadoop> vi core-site.xml 
gpadmin@hmaster:/greenplum/hadoop/etc/hadoop> vi yarn-site.xml 
gpadmin@hmaster:/greenplum/hadoop/etc/hadoop> vi yarn-site.xml 
gpadmin@hmaster:/greenplum/hadoop/etc/hadoop> cp mapred-site.xml.template mapred-site.xml
gpadmin@hmaster:/greenplum/hadoop/etc/hadoop> vi mapred-site.xml
gpadmin@hmaster:/greenplum/hadoop/etc/hadoop> vi masters
gpadmin@hmaster:/greenplum/hadoop/etc/hadoop> vi slaves 
gpadmin@hmaster:/greenplum/hadoop/etc/hadoop>



gpadmin@hmaster:~> hadoop namenode -format
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

16/09/21 14:11:31 INFO namenode.NameNode: STARTUP_MSG: 
/************************************************************
STARTUP_MSG: Starting NameNode
STARTUP_MSG:   host = hmaster.suse/11.0.0.20
STARTUP_MSG:   args = [-format]
STARTUP_MSG:   version = 2.7.2
STARTUP_MSG:   classpath = /greenplum/hadoop/etc/hadoop:/greenplum/hadoop/share/hadoop/common/lib/commons-compress-1.4.1.jar:/greenplum/hadoop/share/hadoop/common/lib/jersey-server-1.9.jar:/greenplum/hadoop/share/hadoop/common/lib/jets3t-0.9.0.jar:/greenplum/hadoop/share/hadoop/common/lib/jersey-core-1.9.jar:/greenplum/hadoop/share/hadoop/common/lib/hadoop-auth-2.7.2.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-digester-1.8.jar:/greenplum/hadoop/share/hadoop/common/lib/log4j-1.2.17.jar:/greenplum/hadoop/share/hadoop/common/lib/java-xmlbuilder-0.4.jar:/greenplum/hadoop/share/hadoop/common/lib/curator-client-2.7.1.jar:/greenplum/hadoop/share/hadoop/common/lib/jetty-util-6.1.26.jar:/greenplum/hadoop/share/hadoop/common/lib/xmlenc-0.52.jar:/greenplum/hadoop/share/hadoop/common/lib/activation-1.1.jar:/greenplum/hadoop/share/hadoop/common/lib/jackson-core-asl-1.9.13.jar:/greenplum/hadoop/share/hadoop/common/lib/jaxb-impl-2.2.3-1.jar:/greenplum/hadoop/share/hadoop/common/lib/curator-framework-2.7.1.jar:/greenplum/hadoop/share/hadoop/common/lib/apacheds-kerberos-codec-2.0.0-M15.jar:/greenplum/hadoop/share/hadoop/common/lib/netty-3.6.2.Final.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-collections-3.2.2.jar:/greenplum/hadoop/share/hadoop/common/lib/htrace-core-3.1.0-incubating.jar:/greenplum/hadoop/share/hadoop/common/lib/apacheds-i18n-2.0.0-M15.jar:/greenplum/hadoop/share/hadoop/common/lib/jetty-6.1.26.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-configuration-1.6.jar:/greenplum/hadoop/share/hadoop/common/lib/asm-3.2.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-io-2.4.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-codec-1.4.jar:/greenplum/hadoop/share/hadoop/common/lib/jackson-mapper-asl-1.9.13.jar:/greenplum/hadoop/share/hadoop/common/lib/curator-recipes-2.7.1.jar:/greenplum/hadoop/share/hadoop/common/lib/mockito-all-1.8.5.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-math3-3.1.1.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-net-3.1.jar:/greenplum/hadoop/share/hadoop/common/lib/snappy-java-1.0.4.1.jar:/greenplum/hadoop/share/hadoop/common/lib/jsch-0.1.42.jar:/greenplum/hadoop/share/hadoop/common/lib/stax-api-1.0-2.jar:/greenplum/hadoop/share/hadoop/common/lib/jackson-jaxrs-1.9.13.jar:/greenplum/hadoop/share/hadoop/common/lib/api-util-1.0.0-M20.jar:/greenplum/hadoop/share/hadoop/common/lib/jsp-api-2.1.jar:/greenplum/hadoop/share/hadoop/common/lib/httpclient-4.2.5.jar:/greenplum/hadoop/share/hadoop/common/lib/guava-11.0.2.jar:/greenplum/hadoop/share/hadoop/common/lib/zookeeper-3.4.6.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-lang-2.6.jar:/greenplum/hadoop/share/hadoop/common/lib/xz-1.0.jar:/greenplum/hadoop/share/hadoop/common/lib/jackson-xc-1.9.13.jar:/greenplum/hadoop/share/hadoop/common/lib/hadoop-annotations-2.7.2.jar:/greenplum/hadoop/share/hadoop/common/lib/jaxb-api-2.2.2.jar:/greenplum/hadoop/share/hadoop/common/lib/jersey-json-1.9.jar:/greenplum/hadoop/share/hadoop/common/lib/protobuf-java-2.5.0.jar:/greenplum/hadoop/share/hadoop/common/lib/httpcore-4.2.5.jar:/greenplum/hadoop/share/hadoop/common/lib/avro-1.7.4.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-beanutils-core-1.8.0.jar:/greenplum/hadoop/share/hadoop/common/lib/servlet-api-2.5.jar:/greenplum/hadoop/share/hadoop/common/lib/api-asn1-api-1.0.0-M20.jar:/greenplum/hadoop/share/hadoop/common/lib/gson-2.2.4.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-cli-1.2.jar:/greenplum/hadoop/share/hadoop/common/lib/junit-4.11.jar:/greenplum/hadoop/share/hadoop/common/lib/jettison-1.1.jar:/greenplum/hadoop/share/hadoop/common/lib/jsr305-3.0.0.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-logging-1.1.3.jar:/greenplum/hadoop/share/hadoop/common/lib/slf4j-log4j12-1.7.10.jar:/greenplum/hadoop/share/hadoop/common/lib/hamcrest-core-1.3.jar:/greenplum/hadoop/share/hadoop/common/lib/slf4j-api-1.7.10.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-httpclient-3.1.jar:/greenplum/hadoop/share/hadoop/common/lib/commons-beanutils-1.7.0.jar:/greenplum/hadoop/share/hadoop/common/lib/paranamer-2.3.jar:/greenplum/hadoop/share/hadoop/common/hadoop-nfs-2.7.2.jar:/greenplum/hadoop/share/hadoop/common/hadoop-common-2.7.2.jar:/greenplum/hadoop/share/hadoop/common/hadoop-common-2.7.2-tests.jar:/greenplum/hadoop/share/hadoop/hdfs:/greenplum/hadoop/share/hadoop/hdfs/lib/jersey-server-1.9.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/leveldbjni-all-1.8.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/jersey-core-1.9.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/netty-all-4.0.23.Final.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/log4j-1.2.17.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/jetty-util-6.1.26.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/xmlenc-0.52.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/xercesImpl-2.9.1.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/jackson-core-asl-1.9.13.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/commons-daemon-1.0.13.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/netty-3.6.2.Final.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/htrace-core-3.1.0-incubating.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/jetty-6.1.26.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/asm-3.2.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/commons-io-2.4.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/xml-apis-1.3.04.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/commons-codec-1.4.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/jackson-mapper-asl-1.9.13.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/guava-11.0.2.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/commons-lang-2.6.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/protobuf-java-2.5.0.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/servlet-api-2.5.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/commons-cli-1.2.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/jsr305-3.0.0.jar:/greenplum/hadoop/share/hadoop/hdfs/lib/commons-logging-1.1.3.jar:/greenplum/hadoop/share/hadoop/hdfs/hadoop-hdfs-2.7.2-tests.jar:/greenplum/hadoop/share/hadoop/hdfs/hadoop-hdfs-2.7.2.jar:/greenplum/hadoop/share/hadoop/hdfs/hadoop-hdfs-nfs-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/lib/commons-compress-1.4.1.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jersey-server-1.9.jar:/greenplum/hadoop/share/hadoop/yarn/lib/leveldbjni-all-1.8.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jersey-core-1.9.jar:/greenplum/hadoop/share/hadoop/yarn/lib/log4j-1.2.17.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jersey-client-1.9.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jetty-util-6.1.26.jar:/greenplum/hadoop/share/hadoop/yarn/lib/activation-1.1.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jackson-core-asl-1.9.13.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jaxb-impl-2.2.3-1.jar:/greenplum/hadoop/share/hadoop/yarn/lib/netty-3.6.2.Final.jar:/greenplum/hadoop/share/hadoop/yarn/lib/commons-collections-3.2.2.jar:/greenplum/hadoop/share/hadoop/yarn/lib/aopalliance-1.0.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jetty-6.1.26.jar:/greenplum/hadoop/share/hadoop/yarn/lib/asm-3.2.jar:/greenplum/hadoop/share/hadoop/yarn/lib/commons-io-2.4.jar:/greenplum/hadoop/share/hadoop/yarn/lib/commons-codec-1.4.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jersey-guice-1.9.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jackson-mapper-asl-1.9.13.jar:/greenplum/hadoop/share/hadoop/yarn/lib/zookeeper-3.4.6-tests.jar:/greenplum/hadoop/share/hadoop/yarn/lib/javax.inject-1.jar:/greenplum/hadoop/share/hadoop/yarn/lib/stax-api-1.0-2.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jackson-jaxrs-1.9.13.jar:/greenplum/hadoop/share/hadoop/yarn/lib/guice-3.0.jar:/greenplum/hadoop/share/hadoop/yarn/lib/guava-11.0.2.jar:/greenplum/hadoop/share/hadoop/yarn/lib/zookeeper-3.4.6.jar:/greenplum/hadoop/share/hadoop/yarn/lib/commons-lang-2.6.jar:/greenplum/hadoop/share/hadoop/yarn/lib/xz-1.0.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jackson-xc-1.9.13.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jaxb-api-2.2.2.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jersey-json-1.9.jar:/greenplum/hadoop/share/hadoop/yarn/lib/protobuf-java-2.5.0.jar:/greenplum/hadoop/share/hadoop/yarn/lib/servlet-api-2.5.jar:/greenplum/hadoop/share/hadoop/yarn/lib/guice-servlet-3.0.jar:/greenplum/hadoop/share/hadoop/yarn/lib/commons-cli-1.2.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jettison-1.1.jar:/greenplum/hadoop/share/hadoop/yarn/lib/jsr305-3.0.0.jar:/greenplum/hadoop/share/hadoop/yarn/lib/commons-logging-1.1.3.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-api-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-server-applicationhistoryservice-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-server-web-proxy-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-server-resourcemanager-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-server-sharedcachemanager-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-applications-distributedshell-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-applications-unmanaged-am-launcher-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-registry-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-client-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-common-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-server-common-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-server-nodemanager-2.7.2.jar:/greenplum/hadoop/share/hadoop/yarn/hadoop-yarn-server-tests-2.7.2.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/commons-compress-1.4.1.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/jersey-server-1.9.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/leveldbjni-all-1.8.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/jersey-core-1.9.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/log4j-1.2.17.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/jackson-core-asl-1.9.13.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/netty-3.6.2.Final.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/aopalliance-1.0.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/asm-3.2.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/commons-io-2.4.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/jersey-guice-1.9.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/jackson-mapper-asl-1.9.13.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/javax.inject-1.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/snappy-java-1.0.4.1.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/guice-3.0.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/xz-1.0.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/hadoop-annotations-2.7.2.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/protobuf-java-2.5.0.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/avro-1.7.4.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/guice-servlet-3.0.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/junit-4.11.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/hamcrest-core-1.3.jar:/greenplum/hadoop/share/hadoop/mapreduce/lib/paranamer-2.3.jar:/greenplum/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.2.jar:/greenplum/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-hs-plugins-2.7.2.jar:/greenplum/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-common-2.7.2.jar:/greenplum/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-jobclient-2.7.2-tests.jar:/greenplum/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-hs-2.7.2.jar:/greenplum/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-shuffle-2.7.2.jar:/greenplum/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-core-2.7.2.jar:/greenplum/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-jobclient-2.7.2.jar:/greenplum/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-app-2.7.2.jar:/greenplum/hadoop/contrib/capacity-scheduler/*.jar:/greenplum/hadoop/contrib/capacity-scheduler/*.jar
STARTUP_MSG:   build = https://git-wip-us.apache.org/repos/asf/hadoop.git -r b165c4fe8a74265c792ce23f546c64604acf0e41; compiled by 'jenkins' on 2016-01-26T00:08Z
STARTUP_MSG:   java = 1.8.0_101
************************************************************/
16/09/21 14:11:31 INFO namenode.NameNode: registered UNIX signal handlers for [TERM, HUP, INT]
16/09/21 14:11:31 INFO namenode.NameNode: createNameNode [-format]
Formatting using clusterid: CID-26b400db-7b69-4009-b053-5a3d9fc8579d
16/09/21 14:11:32 INFO namenode.FSNamesystem: No KeyProvider found.
16/09/21 14:11:32 INFO namenode.FSNamesystem: fsLock is fair:true
16/09/21 14:11:32 INFO blockmanagement.DatanodeManager: dfs.block.invalidate.limit=1000
16/09/21 14:11:32 INFO blockmanagement.DatanodeManager: dfs.namenode.datanode.registration.ip-hostname-check=true
16/09/21 14:11:32 INFO blockmanagement.BlockManager: dfs.namenode.startup.delay.block.deletion.sec is set to 000:00:00:00.000
16/09/21 14:11:32 INFO blockmanagement.BlockManager: The block deletion will start around 2016 Sep 21 14:11:32
16/09/21 14:11:32 INFO util.GSet: Computing capacity for map BlocksMap
16/09/21 14:11:32 INFO util.GSet: VM type       = 64-bit
16/09/21 14:11:32 INFO util.GSet: 2.0% max memory 889 MB = 17.8 MB
16/09/21 14:11:32 INFO util.GSet: capacity      = 2^21 = 2097152 entries
16/09/21 14:11:32 INFO blockmanagement.BlockManager: dfs.block.access.token.enable=false
16/09/21 14:11:32 INFO blockmanagement.BlockManager: defaultReplication         = 1
16/09/21 14:11:32 INFO blockmanagement.BlockManager: maxReplication             = 512
16/09/21 14:11:32 INFO blockmanagement.BlockManager: minReplication             = 1
16/09/21 14:11:32 INFO blockmanagement.BlockManager: maxReplicationStreams      = 2
16/09/21 14:11:32 INFO blockmanagement.BlockManager: replicationRecheckInterval = 3000
16/09/21 14:11:32 INFO blockmanagement.BlockManager: encryptDataTransfer        = false
16/09/21 14:11:32 INFO blockmanagement.BlockManager: maxNumBlocksToLog          = 1000
16/09/21 14:11:32 INFO namenode.FSNamesystem: fsOwner             = gpadmin (auth:SIMPLE)
16/09/21 14:11:32 INFO namenode.FSNamesystem: supergroup          = supergroup
16/09/21 14:11:32 INFO namenode.FSNamesystem: isPermissionEnabled = true
16/09/21 14:11:32 INFO namenode.FSNamesystem: HA Enabled: false
16/09/21 14:11:32 INFO namenode.FSNamesystem: Append Enabled: true
16/09/21 14:11:32 INFO util.GSet: Computing capacity for map INodeMap
16/09/21 14:11:32 INFO util.GSet: VM type       = 64-bit
16/09/21 14:11:32 INFO util.GSet: 1.0% max memory 889 MB = 8.9 MB
16/09/21 14:11:32 INFO util.GSet: capacity      = 2^20 = 1048576 entries
16/09/21 14:11:32 INFO namenode.FSDirectory: ACLs enabled? false
16/09/21 14:11:32 INFO namenode.FSDirectory: XAttrs enabled? true
16/09/21 14:11:32 INFO namenode.FSDirectory: Maximum size of an xattr: 16384
16/09/21 14:11:32 INFO namenode.NameNode: Caching file names occuring more than 10 times
16/09/21 14:11:32 INFO util.GSet: Computing capacity for map cachedBlocks
16/09/21 14:11:32 INFO util.GSet: VM type       = 64-bit
16/09/21 14:11:32 INFO util.GSet: 0.25% max memory 889 MB = 2.2 MB
16/09/21 14:11:32 INFO util.GSet: capacity      = 2^18 = 262144 entries
16/09/21 14:11:32 INFO namenode.FSNamesystem: dfs.namenode.safemode.threshold-pct = 0.9990000128746033
16/09/21 14:11:32 INFO namenode.FSNamesystem: dfs.namenode.safemode.min.datanodes = 0
16/09/21 14:11:32 INFO namenode.FSNamesystem: dfs.namenode.safemode.extension     = 30000
16/09/21 14:11:32 INFO metrics.TopMetrics: NNTop conf: dfs.namenode.top.window.num.buckets = 10
16/09/21 14:11:32 INFO metrics.TopMetrics: NNTop conf: dfs.namenode.top.num.users = 10
16/09/21 14:11:32 INFO metrics.TopMetrics: NNTop conf: dfs.namenode.top.windows.minutes = 1,5,25
16/09/21 14:11:32 INFO namenode.FSNamesystem: Retry cache on namenode is enabled
16/09/21 14:11:32 INFO namenode.FSNamesystem: Retry cache will use 0.03 of total heap and retry cache entry expiry time is 600000 millis
16/09/21 14:11:32 INFO util.GSet: Computing capacity for map NameNodeRetryCache
16/09/21 14:11:32 INFO util.GSet: VM type       = 64-bit
16/09/21 14:11:32 INFO util.GSet: 0.029999999329447746% max memory 889 MB = 273.1 KB
16/09/21 14:11:32 INFO util.GSet: capacity      = 2^15 = 32768 entries
16/09/21 14:11:32 INFO namenode.FSImage: Allocated new BlockPoolId: BP-1032641629-11.0.0.20-1474447292818
16/09/21 14:11:32 INFO common.Storage: Storage directory /greenplum/hdfs/namenode has been successfully formatted.
16/09/21 14:11:32 INFO namenode.NNStorageRetentionManager: Going to retain 1 images with txid >= 0
16/09/21 14:11:32 INFO util.ExitUtil: Exiting with status 0
16/09/21 14:11:32 INFO namenode.NameNode: SHUTDOWN_MSG: 
/************************************************************
SHUTDOWN_MSG: Shutting down NameNode at hmaster.suse/11.0.0.20
************************************************************/
gpadmin@hmaster:~>

gpadmin@hmaster:~> hadoop checknative -a
16/09/21 14:15:44 WARN bzip2.Bzip2Factory: Failed to load/initialize native-bzip2 library system-native, will use pure-Java version
16/09/21 14:15:44 INFO zlib.ZlibFactory: Successfully loaded & initialized native-zlib library
16/09/21 14:15:44 ERROR snappy.SnappyCompressor: failed to load SnappyCompressor
java.lang.UnsatisfiedLinkError: Cannot load libsnappy.so.1 (libsnappy.so.1: cannot open shared object file: No such file or directory)!
	at org.apache.hadoop.io.compress.snappy.SnappyCompressor.initIDs(Native Method)
	at org.apache.hadoop.io.compress.snappy.SnappyCompressor.<clinit>(SnappyCompressor.java:61)
	at org.apache.hadoop.io.compress.SnappyCodec.isNativeCodeLoaded(SnappyCodec.java:80)
	at org.apache.hadoop.util.NativeLibraryChecker.main(NativeLibraryChecker.java:82)
Native library checking:
hadoop:  true /greenplum/hadoop/lib/native/libhadoop.so.1.0.0
zlib:    true /lib64/libz.so.1
snappy:  false 
lz4:     true revision:99
bzip2:   false 
openssl: true /usr/lib64/libcrypto.so
16/09/21 14:15:45 INFO util.ExitUtil: Exiting with status 1
gpadmin@hmaster:~>

gpadmin@hmaster:~> start-dfs.sh
Starting namenodes on [hmaster.suse]
hmaster.suse: starting namenode, logging to /greenplum/hadoop/logs/hadoop-gpadmin-namenode-hmaster.out
hmaster.suse: starting datanode, logging to /greenplum/hadoop/logs/hadoop-gpadmin-datanode-hmaster.out
Starting secondary namenodes [0.0.0.0]
The authenticity of host '0.0.0.0 (0.0.0.0)' can't be established.
ECDSA key fingerprint is 42:5c:7d:ce:b7:c7:d9:86:eb:01:11:7e:4e:9a:e0:92 [MD5].
Are you sure you want to continue connecting (yes/no)? yes
0.0.0.0: Warning: Permanently added '0.0.0.0' (ECDSA) to the list of known hosts.
0.0.0.0: starting secondarynamenode, logging to /greenplum/hadoop/logs/hadoop-gpadmin-secondarynamenode-hmaster.out
gpadmin@hmaster:~>

gpadmin@hmaster:~> jps
27043 NameNode
27155 DataNode
27371 SecondaryNameNode
27532 Jps
gpadmin@hmaster:~> star
star                 start-all.sh         start-dfs.cmd        start-secure-dns.sh  start-yarn.cmd       
start-all.cmd        start-balancer.sh    start-dfs.sh         startx               start-yarn.sh        
gpadmin@hmaster:~> start-yarn.sh 
starting yarn daemons
starting resourcemanager, logging to /greenplum/hadoop/logs/yarn-gpadmin-resourcemanager-hmaster.out
hmaster.suse: starting nodemanager, logging to /greenplum/hadoop/logs/yarn-gpadmin-nodemanager-hmaster.out
gpadmin@hmaster:~> jps
27043 NameNode
27155 DataNode
28004 Jps
27704 NodeManager
27371 SecondaryNameNode
27583 ResourceManager
gpadmin@hmaster:~> 

Installation of Mysql 

https://dev.mysql.com/doc/mysql-sles-repo-quick-guide/en/

hmaster:~ # rpm -Uvh mysql57-community-release-sles11-7.noarch.rpm 
Preparing...                ########################################### [100%]
   1:mysql57-community-relea########################################### [100%]
hmaster:~ # zypper lr --uri
#  | Alias                                            | Name                                             | Enabled | Refresh | URI                                                                 
---+--------------------------------------------------+--------------------------------------------------+---------+---------+---------------------------------------------------------------------
 1 | SUSE-Linux-Enterprise-Server-11-SP4 11.4.4-1.109 | SUSE-Linux-Enterprise-Server-11-SP4 11.4.4-1.109 | Yes     | No      | cd:///?devices=/dev/sr0                                             
 2 | mysql-connectors-community                       | MySQL Connectors Community                       | Yes     | No      | http://repo.mysql.com/yum/mysql-connectors-community/sles/11/x86_64/
 3 | mysql-connectors-community-source                | MySQL Connectors Community - Source              | No      | No      | http://repo.mysql.com/yum/mysql-connectors-community/sles/11/SRPMS  
 4 | mysql-tools-community                            | MySQL Tools Community                            | Yes     | No      | http://repo.mysql.com/yum/mysql-tools-community/sles/11/x86_64/     
 5 | mysql-tools-community-source                     | MySQL Tools Community - Source                   | No      | No      | http://repo.mysql.com/yum/mysql-tools-community/sles/11/SRPMS       
 6 | mysql55-community                                | MySQL 5.5 Community Server                       | No      | No      | http://repo.mysql.com/yum/mysql-5.5-community/sles/11/x86_64/       
 7 | mysql55-community-source                         | MySQL 5.5 Community Server - Source              | No      | No      | http://repo.mysql.com/yum/mysql-5.5-community/sles/11/SRPMS         
 8 | mysql56-community                                | MySQL 5.6 Community Server                       | No      | No      | http://repo.mysql.com/yum/mysql-5.6-community/sles/11/x86_64/       
 9 | mysql56-community-source                         | MySQL 5.6 Community Server - Source              | No      | No      | http://repo.mysql.com/yum/mysql-5.6-community/sles/11/SRPMS         
10 | mysql57-community                                | MySQL 5.7 Community Server                       | Yes     | No      | http://repo.mysql.com/yum/mysql-5.7-community/sles/11/x86_64/       
11 | mysql57-community-source                         | MySQL 5.7 Community Server - Source              | No      | No      | http://repo.mysql.com/yum/mysql-5.7-community/sles/11/SRPMS         
12 | oss                                              | oss                                              | Yes     | Yes     | http://download.opensuse.org/tumbleweed/repo/oss/                   
hmaster:~ # zypper modifyrepo -d oss
Repository 'oss' has been successfully disabled.
hmaster:~ # zypper in mysql
Building repository 'MySQL Connectors Community' cache [done]
Building repository 'MySQL Tools Community' cache [done]
Building repository 'MySQL 5.7 Community Server' cache [done]
Loading repository data...
Reading installed packages...
Resolving package dependencies...

The following NEW packages are going to be installed:
  mysql mysql-community-client mysql-community-common mysql-community-libs 

The following package needs additional customer contract to get support:
  mysql 

The following packages are not supported by their vendor:
  mysql-community-client mysql-community-common mysql-community-libs 

4 new packages to install.
Overall download size: 38.5 MiB. After the operation, additional 160.0 MiB 
will be used.
Continue? [y/n/? shows all options] (y): y
Retrieving package mysql-community-common-5.7.15-1.sles11.x86_64 (1/4), 281.0 KiB (2.5 MiB unpacked)
Retrieving: mysql-community-common-5.7.15-1.sles11.x86_64.rpm [done (94.6 KiB/s)]
Retrieving package mysql-community-libs-5.7.15-1.sles11.x86_64 (2/4), 2.2 MiB (9.4 MiB unpacked)
Retrieving: mysql-community-libs-5.7.15-1.sles11.x86_64.rpm [done (229.4 KiB/s)]
Retrieving package mysql-community-client-5.7.15-1.sles11.x86_64 (3/4), 25.0 MiB (105.6 MiB unpacked)
Retrieving: mysql-community-client-5.7.15-1.sles11.x86_64.rpm [done (233.2 KiB/s)]
Retrieving package mysql-5.5.43-0.7.3.x86_64 (4/4), 11.0 MiB (42.5 MiB unpackedInstalling: mysql-community-common-5.7.15-1.sles11 [done]
Installing: mysql-community-libs-5.7.15-1.sles11 [done]
Installing: mysql-community-client-5.7.15-1.sles11 [done]
Installing: mysql-5.5.43-0.7.3 [done]
hmaster:~ # 
hmaster:~ # mysql_secure_installation 




NOTE: RUNNING ALL PARTS OF THIS SCRIPT IS RECOMMENDED FOR ALL MySQL
      SERVERS IN PRODUCTION USE!  PLEASE READ EACH STEP CAREFULLY!


In order to log into MySQL to secure it, we'll need the current
password for the root user.  If you've just installed MySQL, and
you haven't set the root password yet, the password will be blank,
so you should just press enter here.

Enter current password for root (enter for none): 
OK, successfully used password, moving on...

Setting the root password ensures that nobody can log into the MySQL
root user without the proper authorisation.

Set root password? [Y/n] Rakesh vijayan
New password: 
Re-enter new password: 
Password updated successfully!
Reloading privilege tables..
 ... Success!



By default, a MySQL installation has an anonymous user, allowing anyone
to log into MySQL without having to have a user account created for
them.  This is intended only for testing, and to make the installation
go a bit smoother.  You should remove them before moving into a
production environment.

Remove anonymous users? [Y/n] y
 ... Success!

Normally, root should only be allowed to connect from 'localhost'.  This
ensures that someone cannot guess at the root password from the network.

Disallow root login remotely? [Y/n] y
 ... Success!

By default, MySQL comes with a database named 'test' that anyone can
access.  This is also intended only for testing, and should be removed
before moving into a production environment.

Remove test database and access to it? [Y/n] y
 - Dropping test database...
 ... Success!
 - Removing privileges on test database...
 ... Success!

Reloading the privilege tables will ensure that all changes made so far
will take effect immediately.

Reload privilege tables now? [Y/n] y
 ... Success!

Cleaning up...



All done!  If you've completed all of the above steps, your MySQL
installation should now be secure.

Thanks for using MySQL!


hmaster:~ # mysql -u root -p$Tr@T@gile
mysql: [Warning] Using a password on the command line interface can be insecure.
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)
hmaster:~ # mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 5.5.43 SUSE MySQL package

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> exit
Bye
hmaster:~ #


Hive Installation 


rvd@rvd ~/maven $ scp apache-hive-0.14.0-bin.tar.gz root@11.0.0.20:/greenplum/
Password: 
Password: 
apache-hive-0.14.0-bin.tar.gz                100%   77MB  10.9MB/s   00:07    
rvd@rvd ~/maven $ scp mysql-connector-java-5.1.23-bin.jar root@11.0.0.20:/greenplum/
Password: 
mysql-connector-java-5.1.23-bin.jar          100%  823KB 823.3KB/s   00:00    
rvd@rvd ~/maven $ 

hmaster:/greenplum #tar -zxvf apache-hive-0.14.0-bin.tar.gz
hmaster:/greenplum # ls
apache-hive-0.14.0-bin         hadoop  mysql-connector-java-5.1.23-bin.jar
apache-hive-0.14.0-bin.tar.gz  hdfs
hmaster:/greenplum # mv apache-hive-0.14.0-bin hive
hmaster:/greenplum # cd h
hadoop/ hdfs/   hive/   
hmaster:/greenplum # cd hive/
hmaster:/greenplum/hive # ls
bin   examples  lib      NOTICE      RELEASE_NOTES.txt
conf  hcatalog  LICENSE  README.txt  scripts
hmaster:/greenplum/hive # cd ..
hmaster:/greenplum # cp mysql-connector-java-5.1.23-bin.jar hive/lib/
hmaster:/greenplum # cd hive/conf/
hmaster:/greenplum/hive/conf # cp -rp hive-default.xml.template hive-site.xml
hmaster:/greenplum/hive/conf # cp -rp hive-env.sh.template hive-env.sh
hmaster:/greenplum/hive/conf # mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 5.5.43 SUSE MySQL package

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE USER 'hiveuser'@'localhost' IDENTIFIED BY 'Hive123!';
Query OK, 0 rows affected (0.00 sec)

mysql> create database metastore;
Query OK, 1 row affected (0.00 sec)

mysql> grant all privileges on metastore.* to 'hiveuser'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> use metastore
Database changed


mysql> SOURCE /greenplum/hive/scripts/metastore/upgrade/mysql/hive-schema-0.14.0.mysql.sql
Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql>

mysql> flush privileges;
Query OK, 0 rows affected (0.00 sec)

mysql> exit
Bye
hmaster:/greenplum/hive/conf # vi hive-env.sh
export HADOOP_HOME=/greenplum/hadoop
exit



<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<configuration>

   <property>

      <name>javax.jdo.option.ConnectionURL</name>

      <value>jdbc:mysql://localhost/metastore?createDatabaseIfNotExist=true</value>

      <description>metadata is stored in a MySQL server</description>

   </property>

   <property>

      <name>javax.jdo.option.ConnectionDriverName</name>

      <value>com.mysql.jdbc.Driver</value>

      <description>MySQL JDBC driver class</description>

   </property>

   <property>

      <name>javax.jdo.option.ConnectionUserName</name>

      <value>hiveuser</value>

      <description>user name for connecting to mysql server</description>

   </property>

   <property>

      <name>javax.jdo.option.ConnectionPassword</name>

      <value>hivepassword</value>

      <description>password for connecting to mysql server</description>

   </property>

</configuration>
exit 


hmaster:/greenplum/hive/conf # cd 
hmaster:~ # su gpadmin
gpadmin@hmaster:/root> cd
gpadmin@hmaster:~> vi .bashrc 
gpadmin@hmaster:~> 
export HIVE_HOME=/greenplum/hive
export PATH=$PATH:$HIVE_HOME/bin
export CLASSPATH=$CLASSPATH:/greenplum/hadoop/lib/*:.
export CLASSPATH=$CLASSPATH:/greenplum/hive/lib/*:.


gpadmin@hmaster:>hive

Logging initialized using configuration in jar:file:/greenplum/hive/lib/hive-common-0.14.0.jar!/hive-log4j.properties
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/greenplum/hadoop/share/hadoop/common/lib/slf4j-log4j12-1.7.10.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/greenplum/hive/lib/hive-jdbc-0.14.0-standalone.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
hive> 
hive> show databases;
OK
default
demo
Time taken: 0.013 seconds, Fetched: 2 row(s)
hive> quit;

hmaster:/greenplum # cp greenplum-db-4.2.8.0-build-1-SuSE10-x86_64.zip /greenplum/
hmaster:/greenplum # unzip greenplum-db-4.2.8.0-build-1-SuSE10-x86_64.zip
hmaster:/greenplum # ./greenplum-db-4.2.8.0-build-1-SuSE10-x86_64.bin 

give details 

Extracting product to /usr/local/greenplum-db-4.2.8.0


Skipping migration of Greenplum Database extensions...

********************************************************************************
Installation complete.
Greenplum Database is installed in /usr/local/greenplum-db-4.2.8.0

Pivotal Greenplum documentation is available
for download at http://docs.gopivotal.com/gpdb
********************************************************************************
hmaster:/greenplum # 


fill here 


gpadmin@hmaster:~> echo "export MASTER_DATA_DIRECTORY=/greenplumdb/master/gpsne-1" >> ~/.bashrc
gpadmin@hmaster:~> source .bashrc 
gpadmin@hmaster:~> gpstart
20160921:18:55:33:023043 gpstart:hmaster:gpadmin-[INFO]:-Starting gpstart with args: 
20160921:18:55:33:023043 gpstart:hmaster:gpadmin-[INFO]:-Gathering information and validating the environment...
20160921:18:55:33:023043 gpstart:hmaster:gpadmin-[CRITICAL]:-gpstart failed. (Reason='[Errno 2] No such file or directory: '/greenplumdb/master/gpsne-1/postgresql.conf'') exiting...
gpadmin@hmaster:~> psql postgres
psql (8.2.15)
Type "help" for help.

postgres=# \1
Invalid command \1. Try \? for help.
postgres=# \l
                  List of databases
   Name    |  Owner  | Encoding |  Access privileges  
-----------+---------+----------+---------------------
 postgres  | gpadmin | UTF8     | 
 template0 | gpadmin | UTF8     | =c/gpadmin          
                                : gpadmin=CTc/gpadmin
 template1 | gpadmin | UTF8     | =c/gpadmin          
                                : gpadmin=CTc/gpadmin
(3 rows)

postgres=#\q

gpadmin@hmaster:~> gpstop 
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-Starting gpstop with args: 
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-Gathering information and validating the environment...
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-Obtaining Greenplum Master catalog information
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-Obtaining Segment details from master...
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-Greenplum Version: 'postgres (Greenplum Database) 4.2.8.0 build 1'
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:---------------------------------------------
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-Master instance parameters
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:---------------------------------------------
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-   Master Greenplum instance process active PID   = 15582
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-   Database                                       = template1
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-   Master port                                    = 5432
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-   Master directory                               = /greenplumdb/master/gpsne-1
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-   Shutdown mode                                  = smart
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-   Timeout                                        = 600
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-   Shutdown Master standby host                   = Off
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:---------------------------------------------
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-Segment instances that will be shutdown:
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:---------------------------------------------
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-   Host      Datadir                     Port    Status
20160921:21:48:04:017231 gpstop:hmaster:gpadmin-[INFO]:-   hmaster   /greenplumdb/data1/gpsne0   40000   u

Continue with Greenplum instance shutdown Yy|Nn (default=N):
> y
20160921:21:48:10:017231 gpstop:hmaster:gpadmin-[INFO]:-There are 0 connections to the database
20160921:21:48:10:017231 gpstop:hmaster:gpadmin-[INFO]:-Commencing Master instance shutdown with mode='smart'
20160921:21:48:10:017231 gpstop:hmaster:gpadmin-[INFO]:-Master host=hmaster
20160921:21:48:10:017231 gpstop:hmaster:gpadmin-[INFO]:-Commencing Master instance shutdown with mode=smart
20160921:21:48:10:017231 gpstop:hmaster:gpadmin-[INFO]:-Master segment instance directory=/greenplumdb/master/gpsne-1
20160921:21:48:11:017231 gpstop:hmaster:gpadmin-[INFO]:-No standby master host configured
20160921:21:48:11:017231 gpstop:hmaster:gpadmin-[INFO]:-Commencing parallel segment instance shutdown, please wait...
.. 
20160921:21:48:13:017231 gpstop:hmaster:gpadmin-[INFO]:-----------------------------------------------------
20160921:21:48:13:017231 gpstop:hmaster:gpadmin-[INFO]:-   Segments stopped successfully      = 1
20160921:21:48:13:017231 gpstop:hmaster:gpadmin-[INFO]:-   Segments with errors during stop   = 0
20160921:21:48:13:017231 gpstop:hmaster:gpadmin-[INFO]:-----------------------------------------------------
20160921:21:48:13:017231 gpstop:hmaster:gpadmin-[INFO]:-Successfully shutdown 1 of 1 segment instances 
20160921:21:48:13:017231 gpstop:hmaster:gpadmin-[INFO]:-Database successfully shutdown with no errors reported
gpadmin@hmaster:~> jps
3840 SecondaryNameNode
4022 ResourceManager
17318 Jps
3496 NameNode
4330 NodeManager
3647 DataNode
gpadmin@hmaster:~>






