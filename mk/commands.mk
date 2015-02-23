# commands macros

XPATH = PATH=$(TC)/bin:$(PATH)

WGET = -wget -N -P $(GZ) -t2 -T2

CPU_CORES ?= $(shell grep processor /proc/cpuinfo |wc -l) 

MAKE = $(XPATH) make -j$(CPU_CORES)
INSTALL  = $(XPATH) make install
PINSTALL  = $(XPATH) strace -f -o $(PACK)/.strace -e trace=file make install
#open,linkat

CCACHE = ccache

BCC  = $(CCACHE) gcc -pipe
BCXX = $(CCACHE) g++ -pipe

TCC  = $(CCACHE) $(TARGET)-gcc -pipe
TCXX = $(CCACHE) $(TARGET)-g++ -pipe
STRIP = $(XPATH) $(TARGET)-strip

LDD = $(XPATH) $(TARGET)-ldd
LDCONFIG = $(XPATH) $(TARGET)-ldconfig
GETCONF = $(XPATH) $(TARGET)-getconf

