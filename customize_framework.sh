#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework_ext.jar.out"

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework_ext.jar.out
    for file2 in `find framework_ext.jar.out -name *.smali`; do
            file=${file2/framework_ext.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    # remove all files at out/framework those exist in telephony-common.jar.out
    for file4 in `find telephony-common.jar.out -name *.smali`; do
            file3=${file4/telephony-common.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file3"
            rm -rf "$file3"
    done

    #fix wrong ids of "overscroll_edge" and "overscroll_glow"
    sed -i -e 's/1080441/1080436/' $BUILD_OUT/framework/smali/android/widget/EdgeEffect\$Injector.smali
    sed -i -e 's/1080442/1080437/' $BUILD_OUT/framework/smali/android/widget/EdgeEffect\$Injector.smali
    #fix of "java.lang.NullPointerException"
    #sed -i -e 's/invoke-virtual {v5, v14}, Landroid\/view\/ViewGroup;->findViewById(I)Landroid\/view\/View;/invoke-virtual {v5, v14}, Landroid\/view\/View;->findViewById(I)Landroid\/view\/View;/' $BUILD_OUT/framework/smali/com/android/internal/telephony/SMSDispatcher.smali
    #sed -i -e 's/invoke-virtual {v13, v9}, Landroid\/widget\/CheckBox;->setOnCheckedChangeListener(Landroid\/widget\/CompoundButton$OnCheckedChangeListener;)V/invoke-virtual {v13, v9}, Landroid\/widget\/CompoundButton;->setOnCheckedChangeListener(Landroid\/widget\/CompoundButton$OnCheckedChangeListener;)V/' $BUILD_OUT/framework/smali/com/android/internal/telephony/SMSDispatcher.smali
    #sed -i -e 's/invoke-virtual {v3}, Landroid\/app\/AlertDialog;->getWindow()Landroid\/view\/Window;/invoke-virtual {v3}, Landroid\/app\/Dialog;->getWindow()Landroid\/view\/Window;/' $BUILD_OUT/framework/smali/com/android/internal/telephony/SMSDispatcher.smali
    #sed -i -e 's/invoke-virtual {v3}, Landroid\/app\/AlertDialog;->show()V/invoke-virtual {v3}, Landroid\/app\/Dialog;->show()V/' $BUILD_OUT/framework/smali/com/android/internal/telephony/SMSDispatcher.smali
    #create secondary framework to fix "java.lang.RuntimeException: method index is too large" while compiling
    rm -rf "$BUILD_OUT/framework/smali/com/google/android/mms"
    mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/android"
    mv "$BUILD_OUT/framework/smali/android/widget" "$BUILD_OUT/$SEP_FRAME/smali/android"
fi

if [ $2 = "$BUILD_OUT/framework_ext" ]
then
    # remove all files at out/framework_ext those exist in framework.jar.out
    for file2 in `find framework.jar.out -name *.smali`; do
            file=${file2/framework.jar.out/$BUILD_OUT\/framework_ext}
            echo "rm file: $file"
            rm -rf "$file"
    done

    cp -rf "$BUILD_OUT/framework_miui/smali/com/google/android/mms" "$BUILD_OUT/framework_ext/smali/com/google/android"
    cp -u -r $BUILD_OUT/$SEP_FRAME/*  $BUILD_OUT/framework_ext
    rm -rf $BUILD_OUT/$SEP_FRAME
fi
