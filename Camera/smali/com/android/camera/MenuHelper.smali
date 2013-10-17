.class public Lcom/android/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V
    .locals 5
    .parameter "menu"
    .parameter "mode"
    .parameter "r"

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 55
    :pswitch_0
    const v2, 0x7f0b005a

    .line 56
    .local v2, labelId:I
    const v0, 0x7f020047

    .line 70
    .local v0, iconId:I
    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/android/camera/MenuHelper$1;

    invoke-direct {v4, p2}, Lcom/android/camera/MenuHelper$1;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 77
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 59
    .end local v0           #iconId:I
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v2           #labelId:I
    :pswitch_1
    const v2, 0x7f0b0059

    .line 60
    .restart local v2       #labelId:I
    const v0, 0x1080037

    .line 61
    .restart local v0       #iconId:I
    goto :goto_1

    .line 63
    .end local v0           #iconId:I
    .end local v2           #labelId:I
    :pswitch_2
    const v2, 0x7f0b005b

    .line 64
    .restart local v2       #labelId:I
    const v0, 0x7f020012

    .line 65
    .restart local v0       #iconId:I
    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static gotoCameraMode(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.camera.Camera"

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static gotoCameraMode(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 137
    const-string v0, "com.android.camera.Camera"

    invoke-static {p0, p1, v0}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static gotoMode(ILandroid/app/Activity;)V
    .locals 5
    .parameter "mode"
    .parameter "activity"

    .prologue
    .line 101
    packed-switch p0, :pswitch_data_0

    .line 115
    const-string v2, "MenuHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown camera mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const-string v0, "com.android.camera.panorama.PanoramaActivity"

    .line 104
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.camera.panorama.PanoramaActivity"

    .line 118
    .local v1, className:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_1
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 108
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.VideoCamera"

    .line 109
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_2
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 112
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.Camera"

    .line 113
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gotoVideoMode(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 133
    const-string v0, "com.android.camera.VideoCamera"

    invoke-static {p0, p1, v0}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private static startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "intent"
    .parameter "className"

    .prologue
    .line 82
    const/high16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->keep()V

    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 97
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
