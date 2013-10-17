.class public abstract Lcom/android/camera/ActivityBase;
.super Landroid/app/Activity;
.source "ActivityBase.java"


# static fields
.field private static LOGV:Z


# instance fields
.field protected mCameraDevice:Landroid/hardware/Camera;

.field private mOnResumePending:Z

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ActivityBase;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 4

    .prologue
    .line 135
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 136
    .local v0, kgm:Landroid/app/KeyguardManager;
    sget-boolean v1, Lcom/android/camera/ActivityBase;->LOGV:Z

    if-eqz v1, :cond_0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    const-string v1, "ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kgm.isKeyguardLocked()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". kgm.isKeyguardSecure()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract doOnResume()V
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 44
    invoke-static {}, Lcom/android/camera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setRequestedOrientation(I)V

    .line 49
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 132
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 101
    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 103
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/camera/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOnResumePending:Z

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    sget-boolean v0, Lcom/android/camera/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume. hasWindowFocus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    sget-boolean v0, Lcom/android/camera/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityBase"

    const-string v1, "onResume. mOnResumePending=true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOnResumePending:Z

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_2
    sget-boolean v0, Lcom/android/camera/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityBase"

    const-string v1, "onResume. mOnResumePending=false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->doOnResume()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOnResumePending:Z

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/camera/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged.hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mOnResumePending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mOnResumePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOnResumePending:Z

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->doOnResume()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOnResumePending:Z

    .line 60
    :cond_1
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->setResult(I)V

    .line 112
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    .line 116
    iput-object p2, p0, Lcom/android/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 118
    return-void
.end method
