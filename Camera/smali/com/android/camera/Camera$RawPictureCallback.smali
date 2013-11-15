.class final Lcom/android/camera/Camera$RawPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/Camera;->access$3702(Lcom/android/camera/Camera;J)J

    .line 730
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$3804(Lcom/android/camera/Camera;)I

    .line 734
    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBurstRawCallbackNum:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3800(Lcom/android/camera/Camera;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->getCameraRotation()I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 738
    :cond_0
    return-void
.end method
