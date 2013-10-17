.class final Lcom/android/camera/VideoCamera$ZoomListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2298
    iput-object p1, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2298
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$ZoomListener;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "value"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 2302
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom changed: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    #setter for: Lcom/android/camera/VideoCamera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/android/camera/VideoCamera;->access$3502(Lcom/android/camera/VideoCamera;I)I

    .line 2306
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3600(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/ZoomControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 2310
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3700(Lcom/android/camera/VideoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2312
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mZoomState:I
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3300(Lcom/android/camera/VideoCamera;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3200(Lcom/android/camera/VideoCamera;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3200(Lcom/android/camera/VideoCamera;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2314
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mTargetZoomValue:I
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$3200(Lcom/android/camera/VideoCamera;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 2315
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/VideoCamera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$3302(Lcom/android/camera/VideoCamera;I)I

    .line 2320
    :cond_0
    :goto_0
    return-void

    .line 2317
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomListener;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/VideoCamera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$3302(Lcom/android/camera/VideoCamera;I)I

    goto :goto_0
.end method
