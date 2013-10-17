.class Lcom/android/camera/Camera$ImageSaver;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# instance fields
.field private mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Camera$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnailLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 877
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 883
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->start()V

    .line 884
    return-void
.end method

.method private storeImage([BLandroid/location/Location;IIJI)V
    .locals 15
    .parameter "data"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "dateTaken"
    .parameter "previewWidth"

    .prologue
    .line 993
    invoke-static/range {p5 .. p6}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, title:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v6

    .line 995
    .local v6, orientation:I
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4600(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    move-wide/from16 v3, p5

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {v1 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v14

    .line 997
    .local v14, uri:Landroid/net/Uri;
    if-eqz v14, :cond_1

    .line 999
    monitor-enter p0

    .line 1004
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    const/4 v11, 0x1

    .line 1005
    .local v11, needThumbnail:Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    if-eqz v11, :cond_0

    .line 1009
    move/from16 v0, p3

    int-to-double v3, v0

    move/from16 v0, p7

    int-to-double v7, v0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v12, v3

    .line 1010
    .local v12, ratio:I
    invoke-static {v12}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    .line 1011
    .local v10, inSampleSize:I
    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v14}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v13

    .line 1013
    .local v13, t:Lcom/android/camera/Thumbnail;
    iget-object v3, p0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1016
    :try_start_1
    iput-object v13, p0, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 1017
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1018
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1020
    .end local v10           #inSampleSize:I
    .end local v12           #ratio:I
    .end local v13           #t:Lcom/android/camera/Thumbnail;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1, v14}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1022
    .end local v11           #needThumbnail:Z
    :cond_1
    return-void

    .line 1004
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 1005
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1018
    .restart local v10       #inSampleSize:I
    .restart local v11       #needThumbnail:Z
    .restart local v12       #ratio:I
    .restart local v13       #t:Lcom/android/camera/Thumbnail;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public addImage([BLandroid/location/Location;II)V
    .locals 3
    .parameter "data"
    .parameter "loc"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 889
    new-instance v0, Lcom/android/camera/Camera$SaveRequest;

    invoke-direct {v0, v1}, Lcom/android/camera/Camera$SaveRequest;-><init>(Lcom/android/camera/Camera$1;)V

    .line 890
    .local v0, r:Lcom/android/camera/Camera$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/Camera$SaveRequest;->data:[B

    .line 891
    if-nez p2, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/android/camera/Camera$SaveRequest;->loc:Landroid/location/Location;

    .line 892
    iput p3, v0, Lcom/android/camera/Camera$SaveRequest;->width:I

    .line 893
    iput p4, v0, Lcom/android/camera/Camera$SaveRequest;->height:I

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/Camera$SaveRequest;->dateTaken:J

    .line 895
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 896
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/camera/Camera$SaveRequest;->previewWidth:I

    .line 900
    :goto_1
    monitor-enter p0

    .line 901
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 903
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 904
    :catch_0
    move-exception v1

    goto :goto_2

    .line 891
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 898
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/camera/Camera$SaveRequest;->previewWidth:I

    goto :goto_1

    .line 908
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 910
    monitor-exit p0

    .line 911
    return-void

    .line 910
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 961
    monitor-enter p0

    .line 962
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageSaver;->mStop:Z

    .line 963
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 964
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 970
    :goto_0
    return-void

    .line 964
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 967
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 918
    :goto_0
    monitor-enter p0

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 924
    iget-boolean v0, p0, Lcom/android/camera/Camera$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    return-void

    .line 927
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 931
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 934
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 933
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Camera$SaveRequest;

    .line 934
    .local v8, r:Lcom/android/camera/Camera$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 935
    iget-object v1, v8, Lcom/android/camera/Camera$SaveRequest;->data:[B

    iget-object v2, v8, Lcom/android/camera/Camera$SaveRequest;->loc:Landroid/location/Location;

    iget v3, v8, Lcom/android/camera/Camera$SaveRequest;->width:I

    iget v4, v8, Lcom/android/camera/Camera$SaveRequest;->height:I

    iget-wide v5, v8, Lcom/android/camera/Camera$SaveRequest;->dateTaken:J

    iget v7, v8, Lcom/android/camera/Camera$SaveRequest;->previewWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/Camera$ImageSaver;->storeImage([BLandroid/location/Location;IIJI)V

    .line 937
    monitor-enter p0

    .line 938
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 939
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 940
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 928
    .end local v8           #r:Lcom/android/camera/Camera$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateThumbnail()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 976
    iget-object v2, p0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 977
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 978
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 979
    .local v0, t:Lcom/android/camera/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 980
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    if-eqz v0, :cond_0

    .line 983
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$4302(Lcom/android/camera/Camera;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 984
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)Lcom/android/camera/Thumbnail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 987
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mSharePopup:Lcom/android/camera/ui/SharePopup;
    invoke-static {v1, v4}, Lcom/android/camera/Camera;->access$4502(Lcom/android/camera/Camera;Lcom/android/camera/ui/SharePopup;)Lcom/android/camera/ui/SharePopup;

    .line 988
    return-void

    .line 980
    .end local v0           #t:Lcom/android/camera/Thumbnail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 946
    monitor-enter p0

    .line 947
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 949
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    goto :goto_0

    .line 954
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 955
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->updateThumbnail()V

    .line 956
    return-void

    .line 954
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
