LOCAL_SRC_FILES := $(SF_SRC_FILES)
LOCAL_CFLAGS    := -std=c++17 -O3 -fno-exceptions -DNNUE_EMBEDDING_OFF -DUSE_PTHREADS \
                   -fPIE $(MY_ARCH_DEF) -s -flto=thin
LOCAL_LDFLAGS	+= -fPIE -s -flto=thin -lm
LOCAL_LDFLAGS   += "-Wl,-z,max-page-size=16384"
LOCAL_LDFLAGS   += "-Wl,-z,common-page-size=16384"
include $(BUILD_EXECUTABLE)
