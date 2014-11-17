ifeq ($(call my-dir),$(call project-path-for,qcom-media)/$(TARGET_BOARD_PLATFORM))
QCOM_MEDIA_ROOT := $(call my-dir)
ifneq ($(filter msm8974 msm8960 msm8660 msm7x27a msm7x27 msm7x30,$(TARGET_BOARD_PLATFORM)),)
include $(QCOM_MEDIA_ROOT)/mm-core/Android.mk
include $(QCOM_MEDIA_ROOT)/libstagefrighthw/Android.mk
endif

ifneq ($(filter msm8974 msm8960 msm8660 msm7x30,$(TARGET_BOARD_PLATFORM)),)
include $(QCOM_MEDIA_ROOT)/mm-video/Android.mk
include $(QCOM_MEDIA_ROOT)/libI420colorconvert/Android.mk
endif

ifneq ($(filter qsd8k,$(TARGET_BOARD_PLATFORM)),)
include $(QCOM_MEDIA_ROOT)/libc2dcolorconvert/Android.mk
endif
endif
