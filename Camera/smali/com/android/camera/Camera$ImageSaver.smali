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

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 980
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 986
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 987
    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIIZ)V
    .locals 22
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"
    .parameter "quickSave"

    .prologue
    .line 1095
    const/16 v19, 0x0

    .line 1096
    .local v19, ok:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/ActivityBase;->addSecureNum(I)V

    .line 1097
    if-eqz p9, :cond_2

    .line 1098
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1099
    .local v6, currentTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    move-object/from16 v8, p4

    move/from16 v9, p8

    move-object/from16 v10, p1

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v4 .. v13}, Lcom/android/camera/Storage;->addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZ)Landroid/net/Uri;

    move-result-object p2

    .line 1101
    if-eqz p2, :cond_1

    const/16 v19, 0x1

    .line 1108
    .end local v6           #currentTime:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/camera/Camera$ImageSaver$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/Camera$ImageSaver$1;-><init>(Lcom/android/camera/Camera$ImageSaver;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1115
    if-eqz v19, :cond_4

    .line 1117
    monitor-enter p0

    .line 1122
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_3

    const/16 v18, 0x1

    .line 1123
    .local v18, needThumbnail:Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    if-eqz v18, :cond_0

    .line 1127
    move/from16 v0, p5

    int-to-double v4, v0

    move/from16 v0, p7

    int-to-double v8, v0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v20, v0

    .line 1128
    .local v20, ratio:I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v17

    .line 1129
    .local v17, inSampleSize:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->needMirrorInStorage()Z
    invoke-static {v4}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)Z

    move-result v4

    move-object/from16 v0, p1

    move/from16 v1, p8

    move/from16 v2, v17

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v21

    .line 1132
    .local v21, t:Lcom/android/camera/Thumbnail;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1135
    :try_start_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 1136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/4 v8, 0x7

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1137
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1139
    .end local v17           #inSampleSize:I
    .end local v20           #ratio:I
    .end local v21           #t:Lcom/android/camera/Thumbnail;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1143
    .end local v18           #needThumbnail:Z
    :goto_2
    return-void

    .line 1101
    .restart local v6       #currentTime:J
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 1103
    .end local v6           #currentTime:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->needMirrorInStorage()Z
    invoke-static {v4}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)Z

    move-result v16

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p8

    move-object/from16 v13, p1

    move/from16 v14, p5

    move/from16 v15, p6

    invoke-static/range {v8 .. v16}, Lcom/android/camera/Storage;->updateImage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BIIZ)Z

    move-result v19

    goto/16 :goto_0

    .line 1122
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 1123
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1137
    .restart local v17       #inSampleSize:I
    .restart local v18       #needThumbnail:Z
    .restart local v20       #ratio:I
    .restart local v21       #t:Lcom/android/camera/Thumbnail;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1141
    .end local v17           #inSampleSize:I
    .end local v18           #needThumbnail:Z
    .end local v20           #ratio:I
    .end local v21           #t:Lcom/android/camera/Thumbnail;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/ActivityBase;->addSecureNum(I)V

    goto :goto_2
.end method


# virtual methods
.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIIZ)V
    .locals 3
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"
    .parameter "quickSave"

    .prologue
    const/4 v1, 0x0

    .line 993
    new-instance v0, Lcom/android/camera/Camera$SaveRequest;

    invoke-direct {v0, v1}, Lcom/android/camera/Camera$SaveRequest;-><init>(Lcom/android/camera/Camera$1;)V

    .line 994
    .local v0, r:Lcom/android/camera/Camera$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/Camera$SaveRequest;->data:[B

    .line 995
    iput-object p2, v0, Lcom/android/camera/Camera$SaveRequest;->uri:Landroid/net/Uri;

    .line 996
    iput-object p3, v0, Lcom/android/camera/Camera$SaveRequest;->title:Ljava/lang/String;

    .line 997
    if-nez p4, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/android/camera/Camera$SaveRequest;->loc:Landroid/location/Location;

    .line 998
    iput p5, v0, Lcom/android/camera/Camera$SaveRequest;->width:I

    .line 999
    iput p6, v0, Lcom/android/camera/Camera$SaveRequest;->height:I

    .line 1000
    iput p7, v0, Lcom/android/camera/Camera$SaveRequest;->thumbnailWidth:I

    .line 1001
    iput p8, v0, Lcom/android/camera/Camera$SaveRequest;->orientation:I

    .line 1002
    iput-boolean p9, v0, Lcom/android/camera/Camera$SaveRequest;->quickSave:Z

    .line 1003
    monitor-enter p0

    .line 1004
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 1006
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1007
    :catch_0
    move-exception v1

    goto :goto_1

    .line 997
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 1011
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1013
    monitor-exit p0

    .line 1014
    return-void

    .line 1013
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
    .line 1063
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 1064
    monitor-enter p0

    .line 1065
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageSaver;->mStop:Z

    .line 1066
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1067
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1073
    :goto_0
    return-void

    .line 1067
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1070
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 1021
    :goto_0
    monitor-enter p0

    .line 1022
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1027
    iget-boolean v0, p0, Lcom/android/camera/Camera$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    return-void

    .line 1030
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1034
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1037
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1036
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/Camera$SaveRequest;

    .line 1037
    .local v10, r:Lcom/android/camera/Camera$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1038
    iget-object v1, v10, Lcom/android/camera/Camera$SaveRequest;->data:[B

    iget-object v2, v10, Lcom/android/camera/Camera$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v10, Lcom/android/camera/Camera$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/camera/Camera$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v10, Lcom/android/camera/Camera$SaveRequest;->width:I

    iget v6, v10, Lcom/android/camera/Camera$SaveRequest;->height:I

    iget v7, v10, Lcom/android/camera/Camera$SaveRequest;->thumbnailWidth:I

    iget v8, v10, Lcom/android/camera/Camera$SaveRequest;->orientation:I

    iget-boolean v9, v10, Lcom/android/camera/Camera$SaveRequest;->quickSave:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/Camera$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIIZ)V

    .line 1040
    monitor-enter p0

    .line 1041
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1042
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1043
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1031
    .end local v10           #r:Lcom/android/camera/Camera$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateThumbnail()V
    .locals 4

    .prologue
    .line 1079
    iget-object v2, p0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1080
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1081
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 1082
    .local v0, t:Lcom/android/camera/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 1083
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    if-eqz v0, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iput-object v0, v1, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 1087
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1089
    :cond_0
    return-void

    .line 1083
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
    .line 1049
    monitor-enter p0

    .line 1050
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1053
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1057
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1058
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->updateThumbnail()V

    .line 1059
    return-void

    .line 1057
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
