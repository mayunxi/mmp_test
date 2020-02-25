TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    utils/utils.c \
    mpi_dec_test.cpp \
    convertpic.cpp

HEADERS += \
    inc/mpp_buffer.h \
    inc/mpp_err.h \
    inc/mpp_frame.h \
    inc/mpp_meta.h \
    inc/mpp_packet.h \
    inc/mpp_task.h \
    inc/rk_mpi_cmd.h \
    inc/rk_mpi.h \
    inc/rk_type.h \
    inc/rk_venc_cmd.h \
    inc/vpu_api.h \
    inc/vpu.h \
    inc/mpp_allocator.h \
    inc/mpp_common.h \
    inc/mpp_env.h \
    inc/mpp_list.h \
    inc/mpp_log.h \
    inc/mpp_mem.h \
    inc/mpp_platform.h \
    inc/mpp_queue.h \
    inc/mpp_runtime.h \
    inc/mpp_thread.h \
    inc/mpp_time.h \
    inc/utils.h \
    convertpic.h


unix:!macx: LIBS += -L$$PWD/lib/ -lrockchip_mpp

INCLUDEPATH += $$PWD/inc
INCLUDEPATH += $$PWD/utils

LIBS += /usr/lib/arm-linux-gnueabihf/libopencv_highgui.so.2.4 \
        /usr/lib/arm-linux-gnueabihf/libopencv_core.so.2.4    \
        /usr/lib/arm-linux-gnueabihf/libopencv_imgproc.so.2.4 \
        /usr/lib/arm-linux-gnueabihf/libopencv_objdetect.so.2.4  \
        /usr/lib/arm-linux-gnueabihf/libopencv_video.so.2.4       \
        /usr/lib/arm-linux-gnueabihf/libopencv_calib3d.so.2.4                 \
        /usr/local/lib/libavformat.so \
        /usr/local/lib/libavutil.so     \
        /usr/local/lib/libavcodec.so   \
        /usr/local/lib/libswscale.so    \
        /usr/local/lib/libavdevice.so  \
        /usr/local/lib/libavfilter.so   \
        /usr/local/lib/libswresample.so
