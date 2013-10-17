.class Lcom/android/camera/VideoCamera$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2255
    iput-object p1, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2255
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$ZoomChangeListener;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 2265
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-boolean v0, v0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 2279
    :cond_0
    :goto_0
    return-void

    .line 2267
    :cond_1
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom picker state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    if-nez p1, :cond_2

    .line 2269
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mZoomMax:I
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$3100(Lcom/android/camera/VideoCamera;)I

    move-result v1

    #calls: Lcom/android/camera/VideoCamera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$3000(Lcom/android/camera/VideoCamera;I)V

    goto :goto_0

    .line 2270
    :cond_2
    if-ne p1, v3, :cond_3

    .line 2271
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/VideoCamera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$3000(Lcom/android/camera/VideoCamera;I)V

    goto :goto_0

    .line 2273
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, -0x1

    #setter for: Lcom/android/camera/VideoCamera;->mTargetZoomValue:I
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$3202(Lcom/android/camera/VideoCamera;I)I

    .line 2274
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mZoomState:I
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3300(Lcom/android/camera/VideoCamera;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, 0x2

    #setter for: Lcom/android/camera/VideoCamera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$3302(Lcom/android/camera/VideoCamera;I)I

    .line 2276
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_0
.end method

.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->onZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/android/camera/VideoCamera;->access$3000(Lcom/android/camera/VideoCamera;I)V

    .line 2260
    return-void
.end method
