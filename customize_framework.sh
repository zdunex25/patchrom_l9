#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework_ext_miui"

if [ $2 = "$BUILD_OUT/framework" ]
then
    #fix wrong ids of "overscroll_edge" and "overscroll_glow"
    sed -i -e 's/1080441/1080436/' $BUILD_OUT/framework/smali/android/widget/EdgeEffect\$Injector.smali
    sed -i -e 's/1080442/1080437/' $BUILD_OUT/framework/smali/android/widget/EdgeEffect\$Injector.smali
    #fix of "java.lang.NullPointerException"
    sed -i -e 's/invoke-virtual {v5, v14}, Landroid\/view\/ViewGroup;->findViewById(I)Landroid\/view\/View;/invoke-virtual {v5, v14}, Landroid\/view\/View;->findViewById(I)Landroid\/view\/View;/' $BUILD_OUT/framework/smali/com/android/internal/telephony/SMSDispatcher.smali
    sed -i -e 's/invoke-virtual {v13, v9}, Landroid\/widget\/CheckBox;->setOnCheckedChangeListener(Landroid\/widget\/CompoundButton$OnCheckedChangeListener;)V/invoke-virtual {v13, v9}, Landroid\/widget\/CompoundButton;->setOnCheckedChangeListener(Landroid\/widget\/CompoundButton$OnCheckedChangeListener;)V/' $BUILD_OUT/framework/smali/com/android/internal/telephony/SMSDispatcher.smali
    sed -i -e 's/invoke-virtual {v3}, Landroid\/app\/AlertDialog;->getWindow()Landroid\/view\/Window;/invoke-virtual {v3}, Landroid\/app\/Dialog;->getWindow()Landroid\/view\/Window;/' $BUILD_OUT/framework/smali/com/android/internal/telephony/SMSDispatcher.smali
    sed -i -e 's/invoke-virtual {v3}, Landroid\/app\/AlertDialog;->show()V/invoke-virtual {v3}, Landroid\/app\/Dialog;->show()V/' $BUILD_OUT/framework/smali/com/android/internal/telephony/SMSDispatcher.smali
    #create secondary framework to fix "java.lang.RuntimeException: method index is too large" while compiling
    mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/android"
    mv "$BUILD_OUT/framework/smali/android/widget" "$BUILD_OUT/$SEP_FRAME/smali/android"
fi
