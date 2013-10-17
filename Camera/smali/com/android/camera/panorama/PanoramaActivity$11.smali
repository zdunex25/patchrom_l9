.class Lcom/android/camera/panorama/PanoramaActivity$11;
.super Ljava/lang/Thread;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaActivity;->saveHighResMosaic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 839
    iget-object v6, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/camera/panorama/PanoramaActivity;->access$3100(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 842
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/panorama/PanoramaActivity;->generateFinalMosaic(Z)Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 844
    .local v2, jpeg:Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;
    iget-object v6, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/camera/panorama/PanoramaActivity;->access$3100(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 847
    if-nez v2, :cond_0

    .line 848
    iget-object v6, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/panorama/PanoramaActivity;->access$2400(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 876
    :goto_0
    return-void

    .line 844
    .end local v2           #jpeg:Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/camera/panorama/PanoramaActivity;->access$3100(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v6

    .line 849
    .restart local v2       #jpeg:Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;
    :cond_0
    iget-boolean v6, v2, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->isValid:Z

    if-nez v6, :cond_1

    .line 850
    iget-object v6, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/panorama/PanoramaActivity;->access$2400(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 858
    :cond_1
    iget-object v6, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mDeviceOrientationAtCapture:I
    invoke-static {v6}, Lcom/android/camera/panorama/PanoramaActivity;->access$3200(Lcom/android/camera/panorama/PanoramaActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mCameraOrientation:I
    invoke-static {v7}, Lcom/android/camera/panorama/PanoramaActivity;->access$3300(Lcom/android/camera/panorama/PanoramaActivity;)I

    move-result v7

    add-int/2addr v6, v7

    rem-int/lit16 v3, v6, 0x168

    .line 859
    .local v3, orientation:I
    iget-object v6, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    iget-object v7, v2, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    iget v8, v2, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->width:I

    iget v9, v2, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->height:I

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;
    invoke-static {v6, v7, v8, v9, v3}, Lcom/android/camera/panorama/PanoramaActivity;->access$3400(Lcom/android/camera/panorama/PanoramaActivity;[BIII)Landroid/net/Uri;

    move-result-object v4

    .line 860
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 863
    iget v6, v2, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->width:I

    int-to-double v6, v6

    iget-object v8, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;
    invoke-static {v8}, Lcom/android/camera/panorama/PanoramaActivity;->access$3500(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 865
    .local v5, widthRatio:I
    iget v6, v2, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->height:I

    int-to-double v6, v6

    iget-object v8, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;
    invoke-static {v8}, Lcom/android/camera/panorama/PanoramaActivity;->access$3500(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 867
    .local v0, heightRatio:I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 869
    .local v1, inSampleSize:I
    iget-object v6, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    iget-object v7, v2, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    invoke-static {v7, v3, v1, v4}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v7

    #setter for: Lcom/android/camera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v6, v7}, Lcom/android/camera/panorama/PanoramaActivity;->access$3602(Lcom/android/camera/panorama/PanoramaActivity;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 871
    iget-object v6, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-static {v6, v4}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 873
    .end local v0           #heightRatio:I
    .end local v1           #inSampleSize:I
    .end local v5           #widthRatio:I
    :cond_2
    iget-object v6, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/panorama/PanoramaActivity;->access$2400(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/panorama/PanoramaActivity$11;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/camera/panorama/PanoramaActivity;->access$2400(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
