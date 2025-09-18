TARGET = iphone:clang:16.5:14.0
INSTALL_TARGET_PROCESSES = Calculator

THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CalculatorHistory

# 明确列出需要编译的源文件，排除不存在的 Orion 文件
CalculatorHistory_FILES = Tweak.x \
    Extensions/UIFont+Rounded.m \
    Extensions/UIImage+CalculatorHistory.m \
    Extensions/CalculatorHistoryRecord.m \
    Extensions/CalculatorHistoryRecordCell.m \
    Extensions/CalculatorHistoryRecordManager.m \
    Extensions/CalculatorHistoryViewController.m \
    Utils.m

CalculatorHistory_CFLAGS = -fobjc-arc
CalculatorHistory_LDFLAGS += -L$(PWD)/lib

include $(THEOS_MAKE_PATH)/tweak.mk
