#/bin/bash
for i in binutils compat-db control-center gcc gcc-c++ \
	glibc glibc-common  libstdc++ \
	libstdc++-devel make sysstat \
	compat-gcc-34 compat-libstdc++-296 \
	glibc-devel libaio libgcc \
	libXp openmotif22
	do
		rpm -q $i &>/dev/null || F="$F $i"
	done 
echo $F
unset F
