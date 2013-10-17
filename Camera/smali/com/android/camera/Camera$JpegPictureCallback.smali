.class final Lcom/android/camera/Camera$JpegPictureCallback;
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
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p2, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 749
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 10
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const-wide/16 v8, 0x0

    .line 753
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPausing:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3, v4, v5}, Lcom/android/camera/Camera;->access$3002(Lcom/android/camera/Camera;J)J

    .line 761
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_2

    .line 762
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 764
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 772
    :goto_1
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v5, v5, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 776
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)V

    .line 777
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 780
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 781
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3200(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 782
    .local v2, s:Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/camera/Camera$ImageSaver;->addImage([BLandroid/location/Location;II)V

    .line 796
    .end local v2           #s:Landroid/hardware/Camera$Size;
    :goto_2
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->checkStorage()V
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)V

    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 799
    .local v0, now:J
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;)J

    move-result-wide v4

    sub-long v4, v0, v4

    iput-wide v4, v3, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    .line 800
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mJpegCallbackFinishTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v5, v5, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3, v8, v9}, Lcom/android/camera/Camera;->access$3002(Lcom/android/camera/Camera;J)J

    goto/16 :goto_0

    .line 767
    .end local v0           #now:J
    :cond_2
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 769
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 784
    :cond_3
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mJpegImageData:[B
    invoke-static {v3, p1}, Lcom/android/camera/Camera;->access$3302(Lcom/android/camera/Camera;[B)[B

    .line 785
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mQuickCapture:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 786
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showPostCaptureAlert()V
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)V

    goto :goto_2

    .line 788
    :cond_4
    iget-object v3, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->doAttach()V
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)V

    goto :goto_2
.end method
