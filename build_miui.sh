#!/bin/bash
cd ../..
export PATH=$PATH:/home/$USER/android-sdk-linux/tools:/home/$USER/android-sdk-linux/platform-tools
cd patchromv542
. build/envsetup.sh
cd l9
mkdir Mms/smali/com/android/mms/data
mkdir Mms/smali/com/android/mms/transaction
mkdir Mms/smali/com/android/mms/ui
mkdir -p MiuiSystemUI/smali/com/android/systemui/statusbar/phone
mkdir Settings/res/xml
mkdir -p Settings/smali/com/android/settings
mkdir -p temp/pl
cd ../miuipolska/Polish/main
for i in * ; do cp -r "$i" "../../../l9/temp/pl/${i//\.apk/}" ; done
cd ../../../l9/temp
find pl -name "*-hdpi" | xargs rm -rf
find pl -name "*-xxhdpi" | xargs rm -rf
find pl -name "hdpi" | xargs rm -rf
find pl -name "xxhdpi" | xargs rm -rf

'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/MiuiSystemUI.apk'
cat 'MiuiSystemUI/res/values/public.xml' | sed -e 's/id=\"0x7f030030\" \/>/id=\"0x7f030030\" \/>\
    <public type=\"layout\" name=\"signal_cluster_view_miui\" id=\"0x7f030031\" \/>\
    <public type=\"layout\" name=\"status_bar_miui\" id=\"0x7f030032\" \/>\
    <public type=\"layout\" name=\"super_status_bar_miui\" id=\"0x7f030033\" \/>/' > '../MiuiSystemUI/res/values/public.xml'
cat 'MiuiSystemUI/smali/com/android/systemui/statusbar/phone/PhoneStatusBar.smali' | sed -e 's/.method private getTabIndicatorPosition(I)I/.method private getStatusBarType(I)I\
    .locals 6\
    .parameter\
\
    .prologue\
    const\/4 v0, 0x0\
\
    .line 3190\
    iget-object v1, p0, Lcom\/android\/systemui\/statusbar\/phone\/PhoneStatusBar;->mContext:Landroid\/content\/Context;\
\
    invoke-virtual {v1}, Landroid\/content\/Context;->getContentResolver()Landroid\/content\/ContentResolver;\
\
    move-result-object v1\
\
    const-string v2, \"m7StatusBarType\"\
\
    invoke-static {v1, v2, v0}, Landroid\/provider\/Settings$System;->getInt(Landroid\/content\/ContentResolver;Ljava\/lang\/String;I)I\
\
    move-result v5\
\
    const\/4 v3, 0x1\
\
    if-eq v3, v5, :cond_0\
\
    return p1\
\
    :cond_0\
    const v4, 0x7f030033\
\
    return v4\
.end method\
\
.method private getTabIndicatorPosition(I)I/' > 'MiuiSystemUI/smali/com/android/systemui/statusbar/phone/PhoneStatusBar2.smali'
cat 'MiuiSystemUI/smali/com/android/systemui/statusbar/phone/PhoneStatusBar2.smali' | sed -e 's/const v0, 0x7f030020/const v0, 0x7f030020\
\
    invoke-direct {p0, v0}, Lcom\/android\/systemui\/statusbar\/phone\/PhoneStatusBar;->getStatusBarType(I)I\
\
    move-result v0/' > '../MiuiSystemUI/smali/com/android/systemui/statusbar/phone/PhoneStatusBar.smali'
'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/Mms.apk'
cat 'Mms/AndroidManifest.xml' | sed -e "s/android:screenOrientation=\"portrait\" //g" \
				| sed -e "s/ android:screenOrientation=\"portrait\"//g" > '../Mms/AndroidManifest.xml'
cat 'Mms/smali/com/android/mms/data/WorkingMessage.smali' | sed -e 's/invoke-static {v3, v2}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {v3}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
\
    move-result-object v3\
\
    invoke-static {v3, v2}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/data/WorkingMessage.smali'
cat 'Mms/smali/com/android/mms/transaction/SmsMessageSender.smali' | sed -e 's/iput-object p3, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;/iput-object p3, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;\
\
    invoke-static {p3}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->textToGSM(Ljava\/lang\/String;)Ljava\/lang\/String;\
\
    move-result-object v2\
\
    iput-object v2, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;/' > '../Mms/smali/com/android/mms/transaction/SmsMessageSender.smali'
cat 'Mms/smali/com/android/mms/ui/MessageUtils.smali' | sed -e 's/invoke-static {p0, v3}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {p0}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
\
    move-result-object v2\
\
    invoke-static {v2, v3}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/ui/MessageUtils.smali'
cat 'Mms/smali/com/android/mms/ui/MessageEditableActivityBase.smali' | sed -e 's/invoke-static {v0, v1}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {v0}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
\
    move-result-object v0\
\
    invoke-static {v0, v1}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/ui/MessageEditableActivityBase.smali'
'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/Settings.apk'
cat 'Settings/res/xml/settings_headers.xml' | sed -e "s/<header android:id=\"@id\/manufacturer_settings\">/<header android:title=\"@string\/header_category_optimus\" \/>/g" \
					| sed -e 's/    <intent android:action=\"com.android.settings.MANUFACTURER_APPLICATION_SETTING\" \/>/<header android:icon=\"@drawable\/ic_ringer_volume_settings\" android:title=\"@string\/viper_settings\">\
        <intent android:action="com.android.settings.VIPER\" \/>\
    <\/header>\
    <header android:icon=\"@drawable\/ic_mobile_network_settings\" android:title=\"@string\/carrier_settings\">\
        <intent android:action="com.android.settings.CARRIER\" \/>\
    <\/header>\
    <header android:icon=\"@drawable\/ic_accessibility_settings\" android:title=\"@string\/age_settings\">\
        <intent android:action="com.android.settings.GESTURE\" \/>\
    <\/header>\
    <header android:icon=\"@drawable\/ic_status_bar_settings\" android:title=\"@string\/cp_settings\">\
        <intent android:action="com.android.settings.M7PARTS\" \/>/' > '../Settings/res/xml/settings_headers.xml'
cat 'Settings/res/xml/sound_settings.xml' | sed -e "s/android.musicfx/miui.player/g" \
				| sed -e "s/ControlPanelPicker/ui.EqualizerActivity/g" > '../Settings/res/xml/sound_settings.xml'
cat 'Settings/res/xml/device_info_settings.xml' | sed -e 's/android:key=\"kernel_version\" \/>/android:key=\"kernel_version\" \/>\
	<miui.preference.ValuePreference android:title=\"@string\/build_author\" android:key=\"build_author\" \/>\
	<miui.preference.ValuePreference android:title=\"@string\/polish_translation\" android:key=\"polish_translation\" \/>/' > '../Settings/res/xml/device_info_settings.xml'
#cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali' | sed -e 's/MenuInflater;)V/MenuInflater;)V \
#    return-void/' > 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings2.smali'
cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali' | sed -e 's/invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V/invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V\
\
    .line 116\
    const-string v22, \"build_author\"\
\
    new-instance v23, Ljava\/lang\/StringBuilder;\
\
    invoke-direct\/range {v23 .. v23}, Ljava\/lang\/StringBuilder;-><init>()V\
\
    const-string v24, \"ZduneX25\"\
\
    invoke-virtual\/range {v23 .. v24}, Ljava\/lang\/StringBuilder;->append(Ljava\/lang\/String;)Ljava\/lang\/StringBuilder;\
\
    move-result-object v23\
\
    invoke-virtual\/range {v23 .. v23}, Ljava\/lang\/StringBuilder;->toString()Ljava\/lang\/String;\
\
    move-result-object v23\
\
    move-object\/from16 v0, p0\
\
    move-object\/from16 v1, v22\
\
    move-object\/from16 v2, v23\
\
    invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V\
\
    .line 118\
    const-string v22, \"polish_translation\"\
\
    new-instance v23, Ljava\/lang\/StringBuilder;\
\
    invoke-direct\/range {v23 .. v23}, Ljava\/lang\/StringBuilder;-><init>()V\
\
    const-string v24, \"Acid (MIUI Polska)\"\
\
    invoke-virtual\/range {v23 .. v24}, Ljava\/lang\/StringBuilder;->append(Ljava\/lang\/String;)Ljava\/lang\/StringBuilder;\
\
    move-result-object v23\
\
    invoke-virtual\/range {v23 .. v23}, Ljava\/lang\/StringBuilder;->toString()Ljava\/lang\/String;\
\
    move-result-object v23\
\
    move-object\/from16 v0, p0\
\
    move-object\/from16 v1, v22\
\
    move-object\/from16 v2, v23\
\
    invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V/' > '../Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali'
'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/LBESEC_MIUI.apk'
cp -u -r pl/LBESEC_MIUI/* LBESEC_MIUI
'../../tools/apktool' --quiet b -f 'LBESEC_MIUI' '../other/unsigned-LBESEC_MIUI.apk'
cp -u -r pl/Mms/* Mms
cp -f ../Mms/AndroidManifest.xml Mms/AndroidManifest.xml
'../../tools/apktool' --quiet b -f 'Mms' '../other/unsigned-Mms.apk'
rm -rf pl/ApplicationsProvider
rm -rf pl/BackupRestoreConfirmation
rm -rf pl/Bluetooth
rm -rf pl/CABLService
rm -rf pl/CellConnService
rm -rf pl/CertInstaller
rm -rf pl/Cit
rm -rf pl/DrmProvider
rm -rf pl/Ds
rm -rf pl/DsUI
rm -rf pl/EngineerMode
rm -rf pl/GuardProvider
rm -rf pl/LBESEC_MIUI
rm -rf pl/lenovo-res
rm -rf pl/LiveWallpapers
rm -rf pl/LiveWallpapersPicker
rm -rf pl/mediatek-res
rm -rf pl/MIUIStats
rm -rf pl/MtkBt
rm -rf pl/MusicFX
rm -rf pl/NetworkLocation
rm -rf pl/Nfc
rm -rf pl/Stk
rm -rf pl/Stk1
rm -rf pl/StkSelection
rm -rf pl/TelocationProvider
rm -rf pl/YGPS
sed -i -e 's/<item>Strona<\/item>/<!--item>Strona<\/item-->/' pl/MiuiHome/res/values-pl/arrays.xml
sed -i -e 's/<item>Obrót<\/item>/<!--item>Obrót<\/item-->/' pl/MiuiHome/res/values-pl/arrays.xml
cp -u -r pl/MiuiHome/* ../MiuiHome
cp -u -r pl/MiuiSystemUI/* ../MiuiSystemUI
cp -u -r pl/Mms/* ../Mms
sed -i -e 's/\"no_effect\">Płaski/\"no_effect\">ViPER FX/' pl/Music/res/values-pl/strings.xml
cp -u -r pl/Music/* ../Music
cp -u -r pl/Phone/* ../Phone
sed -i -e 's/>Wyłącz okno Zasilania/>Wyłącz okno zasilania/' pl/Settings/res/values-pl/strings.xml
sed -i -e 's/>Szybkie zdjęcie/>Wstecz to skrót aparatu/' pl/Settings/res/values-pl/strings.xml
sed -i -e 's/<\/resources>/  <string name=\"polish_translation\">Spolszczenie<\/string>\
  <string name=\"cp_settings\">Panel sterowania<\/string>\
<\/resources>/' pl/Settings/res/values-pl/strings.xml
cp -u -r pl/Settings/* ../Settings
cp -f ../Settings/res/drawable-en-xhdpi/miui_logo.png  ../Settings/res/drawable-pl-xhdpi/miui_logo.png
cp -u -r ../../miuipolska/Polish/device/m0/Settings.apk/* ../Settings
cp -u -r pl/ThemeManager/* ../ThemeManager
cp -u -r pl/Updater/* ../Updater
cp -f ../Updater/res/drawable-en-xhdpi/miui_title.png  ../Updater/res/drawable-pl-xhdpi/miui_title.png
cp -u -r pl/framework-miui-res/res/* ../../miui/src/frameworks/miui/core/res/res
rm -rf pl/Bluetooth
rm -rf pl/MiuiHome
rm -rf pl/MiuiSystemUI
rm -rf pl/Mms
rm -rf pl/Music
rm -rf pl/Phone
rm -rf pl/Settings
rm -rf pl/ThemeManager
rm -rf pl/Updater
rm -rf pl/framework-miui-res
cp -u -r pl/* ..
cd ..
rm -r temp
make fullota

if [ -f "out/fullota.zip" ];
then
unzip -q out/fullota.zip -d out/temp
echo -e "\nPreparing flashable zips.."

cp -f other/updater-script-rom out/temp/META-INF/com/google/android/updater-script
#sed -i -e 's/show_progress(0.200000, 10);/show_progress(0.200000, 10);\
#package_extract_file(\"boot.img\", \"\/dev\/block\/mmcblk0p5\");/' out/temp/META-INF/com/google/android/updater-script

x=`date +%Y`
y=`date +.%-m.%-d`
z=${x: -1:1}
version=$z$y
time=`date +%c`
utc=`date +%s`
ota=`date +%Y%m%d-%H%M`

sed -i -e "s/ro\.build\.date=.*/ro\.build\.date=$time/g" out/temp/system/build.prop
sed -i -e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc/g" out/temp/system/build.prop
sed -i -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/g" out/temp/system/build.prop
sed -i -e "s/updater\.time=.*/updater\.time=$ota/g" out/temp/system/build.prop
sed -i -e "s/updater\.ver=.*/updater\.ver=$version/g" out/temp/system/build.prop
sed -i -e "s/ro\.goo\.version=.*/ro\.goo\.version=$version/g" out/temp/system/build.prop
sed -i -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=p760_z25/g" out/temp/system/build.prop
rm -f out/temp/system/etc/weather_city.db
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "other/unsigned-LBESEC_MIUI.apk" "other/signed-LBESEC_MIUI.apk"
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "other/unsigned-Mms.apk" "other/signed-Mms.apk"
'other/zipalign' -f 4 "other/signed-LBESEC_MIUI.apk" "other/LBESEC_MIUI.apk"
'other/zipalign' -f 4 "other/signed-Mms.apk" "other/Mms.apk"
mv -f other/LBESEC_MIUI.apk out/temp/system/app/LBESEC_MIUI.apk
mkdir out/temp/system/usr/extras
mv -f other/Mms.apk out/temp/system/usr/extras/Mms.apk
cp -f other/unicode.sh out/temp/system/bin/unicode.sh
find other -name "unsigned-*" | xargs rm -f
find other -name "signed-*" | xargs rm -f

#cp other/extras/gapps/*.apk out/temp/system/app
cp -r other/extras/misc out/temp/data/
cp -f -r other/extras/data/* out/temp/system/media/theme/.data
cp -f ../miuipolska/Polish/extras/system/etc/apns-conf.xml out/temp/system/etc/apns-conf.xml
cp -f ../miuipolska/Polish/extras/system/etc/gps.conf out/temp/system/etc/gps.conf
cp -f ../miuipolska/Polish/extras/system/etc/hosts out/temp/system/etc/hosts
cp -f ../miuipolska/Polish/extras/system/etc/spn-conf.xml out/temp/system/etc/spn-conf.xml

mv out/temp/system/media/theme/default/alarmscreen out/temp/system/media/theme/default/alarmscreen.zip
mv out/temp/system/media/theme/default/lockscreen out/temp/system/media/theme/default/lockscreen.zip
cd ../miuipolska/Polish/extras/alarmscreen
zip ../../../../l9/out/temp/system/media/theme/default/alarmscreen.zip -q strings/strings_pl.xml
cd ../lockscreen
zip ../../../../l9/out/temp/system/media/theme/default/lockscreen.zip -q advance/strings/strings_pl.xml
cd ../../../../l9
mv out/temp/system/media/theme/default/alarmscreen.zip out/temp/system/media/theme/default/alarmscreen
mv out/temp/system/media/theme/default/lockscreen.zip out/temp/system/media/theme/default/lockscreen

mv out/temp/system/media/theme/.data/content/clock_2x4/clock.mrc out/temp/system/media/theme/.data/content/clock_2x4/clock.zip
cp out/temp/system/media/theme/.data/content/clock_2x4/clock.zip out/temp/system/media/theme/.data/content/clock_2x4/clock_center.zip
cp out/temp/system/media/theme/.data/content/clock_2x4/clock.zip out/temp/system/media/theme/.data/content/clock_2x4/clock_left.zip
cd ../miuipolska/Polish/extras/clocks
zip ../../../../l9/out/temp/system/media/theme/.data/content/clock_2x4/clock.zip -q strings/strings_pl.xml
zip ../../../../l9/out/temp/system/media/theme/.data/content/clock_2x4/clock_center.zip -q strings/strings_pl.xml
zip ../../../../l9/out/temp/system/media/theme/.data/content/clock_2x4/clock_left.zip -q strings/strings_pl.xml
cd Bateria_Prawy
zip ../../../../../l9/out/temp/system/media/theme/.data/content/clock_2x4/clock.zip -q manifest.xml
cd ../Bateria_Srodek
zip ../../../../../l9/out/temp/system/media/theme/.data/content/clock_2x4/clock_center.zip -q manifest.xml
#cd ../left
#zip ../../../../../l9/out/temp/system/media/theme/.data/content/clock_2x4/clock_left.zip -q manifest.xml
cd ../../../../../l9
mv out/temp/system/media/theme/.data/content/clock_2x4/clock.zip out/temp/system/media/theme/.data/content/clock_2x4/clock.mrc
mv out/temp/system/media/theme/.data/content/clock_2x4/clock_center.zip out/temp/system/media/theme/.data/content/clock_2x4/clock_center.mrc
#mv out/temp/system/media/theme/.data/content/clock_2x4/clock_left.zip out/temp/system/media/theme/.data/content/clock_2x4/clock_left.mrc

mv out/temp/system/media/theme/.data/content/clock_2x4/simple_clock.mrc out/temp/system/media/theme/.data/content/clock_2x4/simple_clock.zip
cd ../miuipolska/Polish/extras/simple_clock
zip ../../../../l9/out/temp/system/media/theme/.data/content/clock_2x4/simple_clock.zip -q images_pl/*.png
cd ../../../../l9
mv out/temp/system/media/theme/.data/content/clock_2x4/simple_clock.zip out/temp/system/media/theme/.data/content/clock_2x4/simple_clock.mrc

for DIR in out/temp/system/app/; do
	cd $DIR;
	for APK in *.apk; do
		ZIPCHECK=`../../../../other/zipalign -c -v 4 $APK | grep FAILED | wc -l`;
		if [ $ZIPCHECK == "1" ]; then
			echo "Now aligning: $DIR/$APK" >> ../../../../zipalign_app.log;
			mkdir ../app_done
			../../../../other/zipalign -v -f 4 $APK ../app_done/$APK;
			cp -f -p ../app_done/$APK $APK;
			rm -rf ../app_done
		else
			echo "Already aligned: $DIR/$APK" >> ../../../../zipalign_app.log;
		fi;
	done;
	cd ../../../..
done;

cd out/temp

rm META-INF/CERT.RSA
rm META-INF/CERT.SF
rm META-INF/MANIFEST.MF
zip -q -r "../../unsigned-miuioptimus-v5-p760-$version-4.2.zip" 'data' 'META-INF' 'system' 'boot.img'
cd ../..
fi
. ../build/envsetup.sh
cd l9
rm -rf AntiSpam
rm -rf Backup
rm -rf Browser
rm -rf BugReport
rm -rf Calculator
rm -rf Calendar
rm -rf CalendarProvider
rm -rf CloudService
rm -rf Contacts
rm -rf ContactsProvider
rm -rf DeskClock
rm -rf DownloadProvider
rm -rf DownloadProviderUi
rm -rf Email
rm -rf Exchange2
rm -rf FileExplorer
rm -rf MiuiCompass
rm -rf MiuiGallery
rm -rf MiuiHome/res/drawable-pl-xhdpi
rm -rf MiuiHome/res/values-pl
rm -rf MiuiSystemUI/res/values-pl
rm -rf MiuiSystemUI/res/values/public.xml
rm -rf MiuiSystemUI/smali
rm -rf MiuiVideoPlayer
rm -rf MiWallpaper
rm -f Mms/AndroidManifest.xml
rm -rf Mms/res/raw-pl
rm -rf Mms/res/values-pl
rm -rf Mms/smali/com/android/mms/data
rm -rf Mms/smali/com/android/mms/transaction
rm -rf Mms/smali/com/android/mms/ui
rm -rf Music/res/drawable-pl-xhdpi
rm -rf Music/res/values-pl
rm -rf NetworkAssistant
rm -rf Notes
rm -rf PackageInstaller
rm -rf PaymentService
rm -rf Phone/res/values-pl
rm -rf Provision
rm -rf QuickSearchBox
rm -rf Settings/res/drawable-pl-xhdpi
rm -rf Settings/res/drawable-pl-xhdpi
rm -rf Settings/res/values-pl
rm -rf Settings/res/values-pl-rPL
rm -rf Settings/res/xml
rm -rf Settings/res/xml-pl
rm -rf Settings/smali
rm -rf SoundRecorder
rm -rf TelephonyProvider
rm -rf ThemeManager/res/drawable-pl-xhdpi
rm -rf ThemeManager/res/drawable-pl-xhdpi
rm -rf ThemeManager/res/values-pl
rm -rf Transfer
rm -rf Updater/res/drawable-pl-xhdpi
rm -rf Updater/res/values-pl
rm -rf VpnDialogs
rm -rf WeatherProvider
rm -rf XiaomiServiceFramework
rm -rf YellowPage
find other -name "unsigned-*" | xargs rm -f
find ../miui/src/frameworks/miui/core/res/res -name "*-pl-*" | xargs rm -rf
make clean
echo Signing rom
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuioptimus-v5-p760-$version-4.2.zip" "miuioptimus-v5-p760-$version-4.2.zip"
rm -r unsigned-miuioptimus-v5-p760-$version-4.2.zip

#echo $ota
md5=`md5sum miuioptimus-v5-p760-$version-4.2.zip | cut -d" " -f1`
size=`du -sh md5sum miuioptimus-v5-p760-$version-4.2.zip | cut -c1-4`
data=`date +%-d/%-m/%Y`
LINK_PL="http://91.205.75.29//zdunex25/$version/miuioptimus-v5-p760-$version-4.2.zip"
forum="<a href='http://bit.ly/19UDoYQ'>Dyskusja na forum</a>"
MIRROR1_PL="http://goo.im/devs/mikegapinski/miuiv5/4.2.2/p760/miuioptimus-v5-p760-$version-4.2.zip"
#MIRROR2_PL="http://htcfanboys.com/download/acid/files/MIUIv5/$version/miuioptimus-v5-p760-$version-4.2.zip"
echo '[dwl producent="'LG'" board="'p760'" tytul="LG&nbsp;Optimus&nbsp;L9" android="'4.2.2'" miui="'$version'" data="'$data'" md5="'$md5'" informacje="'$forum'" status="" link="'$LINK_PL'" mirror1="'$MIRROR1_PL'" mirror2="" rozmiar="'$size'" rodzaj="pelna"]
    
    ' > download_v5.txt
read -p "Done, miuioptimus-v5-p760-$version-4.2.zip has been created in root of l9 directory, copy to sd and flash it!"
