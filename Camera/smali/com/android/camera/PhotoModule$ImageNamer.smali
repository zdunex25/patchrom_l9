.class Lcom/android/camera/PhotoModule$ImageNamer;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageNamer"
.end annotation


# instance fields
.field private mDateTaken:J

.field private mHeight:I

.field private mRequestPending:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mStop:Z

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1156
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1157
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->start()V

    .line 1158
    return-void
.end method

.method private cleanOldUri()V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateUri()V
    .locals 6

    .prologue
    .line 1227
    iget-wide v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mDateTaken:J

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mTitle:Ljava/lang/String;

    .line 1228
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mDateTaken:J

    iget v4, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mWidth:I

    iget v5, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mHeight:I

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Storage;->newImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    .line 1229
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 1221
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mStop:Z

    .line 1222
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    monitor-exit p0

    return-void

    .line 1221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1179
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mRequestPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1181
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1182
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1188
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    .line 1189
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1190
    monitor-exit p0

    return-object v0

    .line 1179
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized prepareUri(Landroid/content/ContentResolver;JIII)V
    .locals 2
    .parameter "resolver"
    .parameter "dateTaken"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 1163
    monitor-enter p0

    :try_start_0
    rem-int/lit16 v1, p6, 0xb4

    if-eqz v1, :cond_0

    .line 1164
    move v0, p4

    .line 1165
    .local v0, tmp:I
    move p4, p5

    .line 1166
    move p5, v0

    .line 1168
    .end local v0           #tmp:I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mRequestPending:Z

    .line 1169
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    .line 1170
    iput-wide p2, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mDateTaken:J

    .line 1171
    iput p4, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mWidth:I

    .line 1172
    iput p5, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mHeight:I

    .line 1173
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    monitor-exit p0

    return-void

    .line 1163
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 1202
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mStop:Z

    if-eqz v0, :cond_0

    .line 1216
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->cleanOldUri()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    monitor-exit p0

    return-void

    .line 1203
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1205
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1206
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1211
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->cleanOldUri()V

    .line 1212
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->generateUri()V

    .line 1213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mRequestPending:Z

    .line 1214
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
