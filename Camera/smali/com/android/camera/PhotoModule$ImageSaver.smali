.class Lcom/android/camera/PhotoModule$ImageSaver;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PhotoModule$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 1
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 1050
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageSaver;->start()V

    .line 1051
    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V
    .locals 9
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p7

    move-object v5, p1

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/camera/Storage;->updateImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BII)Z

    move-result v8

    .line 1140
    .local v8, ok:Z
    if-eqz v8, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1143
    :cond_0
    return-void
.end method


# virtual methods
.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V
    .locals 3
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 1056
    new-instance v0, Lcom/android/camera/PhotoModule$SaveRequest;

    invoke-direct {v0, v1}, Lcom/android/camera/PhotoModule$SaveRequest;-><init>(Lcom/android/camera/PhotoModule$1;)V

    .line 1057
    .local v0, r:Lcom/android/camera/PhotoModule$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/PhotoModule$SaveRequest;->data:[B

    .line 1058
    iput-object p2, v0, Lcom/android/camera/PhotoModule$SaveRequest;->uri:Landroid/net/Uri;

    .line 1059
    iput-object p3, v0, Lcom/android/camera/PhotoModule$SaveRequest;->title:Ljava/lang/String;

    .line 1060
    if-nez p4, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/android/camera/PhotoModule$SaveRequest;->loc:Landroid/location/Location;

    .line 1061
    iput p5, v0, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    .line 1062
    iput p6, v0, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    .line 1063
    iput p7, v0, Lcom/android/camera/PhotoModule$SaveRequest;->orientation:I

    .line 1064
    monitor-enter p0

    .line 1065
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 1067
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1068
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1060
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 1072
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1074
    monitor-exit p0

    .line 1075
    return-void

    .line 1074
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
    .line 1123
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageSaver;->waitDone()V

    .line 1124
    monitor-enter p0

    .line 1125
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mStop:Z

    .line 1126
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1133
    :goto_0
    return-void

    .line 1127
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 1082
    :goto_0
    monitor-enter p0

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1084
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1088
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    return-void

    .line 1091
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1095
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1098
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1097
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/PhotoModule$SaveRequest;

    .line 1098
    .local v8, r:Lcom/android/camera/PhotoModule$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1099
    iget-object v1, v8, Lcom/android/camera/PhotoModule$SaveRequest;->data:[B

    iget-object v2, v8, Lcom/android/camera/PhotoModule$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v8, Lcom/android/camera/PhotoModule$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/camera/PhotoModule$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v8, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    iget v6, v8, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    iget v7, v8, Lcom/android/camera/PhotoModule$SaveRequest;->orientation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/PhotoModule$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V

    .line 1101
    monitor-enter p0

    .line 1102
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1103
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1104
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1092
    .end local v8           #r:Lcom/android/camera/PhotoModule$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 1110
    monitor-enter p0

    .line 1111
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1118
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 1119
    return-void

    .line 1118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
