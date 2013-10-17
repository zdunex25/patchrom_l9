.class Lcom/android/camera/EffectsRecorder$1;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 560
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "effectsrecorder"

    const-string v2, "SurfaceTexture ready callback received"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    monitor-enter v2

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #setter for: Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v1, p1}, Lcom/android/camera/EffectsRecorder;->access$102(Lcom/android/camera/EffectsRecorder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 564
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v1

    if-nez v1, :cond_2

    .line 568
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "effectsrecorder"

    const-string v3, "Ready callback: Already stopped, skipping."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_1
    monitor-exit v2

    .line 618
    :goto_0
    return-void

    .line 571
    :cond_2
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 574
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "effectsrecorder"

    const-string v3, "Ready callback: Already released, skipping."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 577
    :cond_4
    if-nez p1, :cond_7

    .line 578
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v1

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    .line 584
    :cond_5
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$300(Lcom/android/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$300(Lcom/android/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 592
    :cond_6
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Unable to disconnect camera from effect input"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 596
    .end local v0           #e:Ljava/io/IOException;
    :cond_7
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 598
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$300(Lcom/android/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 599
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "effectsrecorder"

    const-string v3, "Runner active, connecting effects preview"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 601
    :cond_8
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$300(Lcom/android/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v3}, Lcom/android/camera/EffectsRecorder;->access$100(Lcom/android/camera/EffectsRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 606
    :try_start_5
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$300(Lcom/android/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 609
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 611
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v3, 0x3

    #setter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1, v3}, Lcom/android/camera/EffectsRecorder;->access$202(Lcom/android/camera/EffectsRecorder;I)I

    .line 613
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "effectsrecorder"

    const-string v3, "Start preview/effect switch complete"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_9
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I
    invoke-static {v3}, Lcom/android/camera/EffectsRecorder;->access$400(Lcom/android/camera/EffectsRecorder;)I

    move-result v3

    const/4 v4, 0x5

    #calls: Lcom/android/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v1, v3, v4}, Lcom/android/camera/EffectsRecorder;->access$500(Lcom/android/camera/EffectsRecorder;II)V

    .line 617
    monitor-exit v2

    goto/16 :goto_0

    .line 602
    :catch_1
    move-exception v0

    .line 603
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Unable to connect camera to effect input"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
