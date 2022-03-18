APP_PLATFORM := android-16
APP_PIE      := true
LOCAL_PATH   := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE            := dtc
LOCAL_MODULE_FILENAME   := dtc
LOCAL_SRC_FILES         := ../dtc.c ../util.c ../checks.c ../data.c ../flattree.c ../fstree.c ../livetree.c ../srcpos.c ../treesource.c ../dtc-lexer.lex.c ../dtc-parser.tab.c ../libfdt/acpi.c ../libfdt/fdt.c ../libfdt/fdt_addresses.c ../libfdt/fdt_check.c ../libfdt/fdt_empty_tree.c ../libfdt/fdt_overlay.c ../libfdt/fdt_ro.c ../libfdt/fdt_rw.c ../libfdt/fdt_strerror.c ../libfdt/fdt_sw.c ../libfdt/fdt_wip.c
LOCAL_C_INCLUDES        := $(LOCAL_PATH)/../libfdt
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../libfdt
LOCAL_CFLAGS            += -Os -Wall -Werror -Wno-sign-compare -Wno-missing-field-initializers -Wno-unused-parameter -DNO_YAML
LOCAL_LDFLAGS           := -static
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE            := fdtget
LOCAL_MODULE_FILENAME   := fdtget
LOCAL_SRC_FILES         := ../fdtget.c ../util.c ../libfdt/fdt.c ../libfdt/fdt_ro.c ../libfdt/fdt_wip.c ../libfdt/fdt_sw.c ../libfdt/fdt_rw.c ../libfdt/fdt_strerror.c ../libfdt/fdt_empty_tree.c ../libfdt/fdt_addresses.c ../libfdt/fdt_overlay.c ../libfdt/fdt_check.c
LOCAL_C_INCLUDES        := $(LOCAL_PATH)/../libfdt
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../libfdt
LOCAL_CFLAGS            := -Os
LOCAL_LDFLAGS           := -static
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE            := fdtput
LOCAL_MODULE_FILENAME   := fdtput
LOCAL_SRC_FILES         := ../fdtput.c ../util.c ../libfdt/fdt.c ../libfdt/fdt_ro.c ../libfdt/fdt_wip.c ../libfdt/fdt_sw.c ../libfdt/fdt_rw.c ../libfdt/fdt_strerror.c ../libfdt/fdt_empty_tree.c ../libfdt/fdt_addresses.c ../libfdt/fdt_overlay.c ../libfdt/fdt_check.c
LOCAL_C_INCLUDES        := $(LOCAL_PATH)/../libfdt
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../libfdt
LOCAL_CFLAGS            := -Os
LOCAL_LDFLAGS           := -static
include $(BUILD_EXECUTABLE)
