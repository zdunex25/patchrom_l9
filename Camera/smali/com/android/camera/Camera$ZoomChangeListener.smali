.class Lcom/android/camera/Camera$ZoomChangeListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ZoomChangeListener;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 470
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPausing:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const-string v0, "camera"

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

    .line 473
    if-nez p1, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomMax:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)I

    move-result v1

    #calls: Lcom/android/camera/Camera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;I)V

    goto :goto_0

    .line 475
    :cond_2
    if-ne p1, v3, :cond_3

    .line 476
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/Camera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;I)V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    const/4 v1, -0x1

    #setter for: Lcom/android/camera/Camera;->mTargetZoomValue:I
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1702(Lcom/android/camera/Camera;I)I

    .line 479
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomState:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    #setter for: Lcom/android/camera/Camera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1802(Lcom/android/camera/Camera;I)I

    .line 481
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_0
.end method

.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->onZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;I)V

    .line 465
    return-void
.end method
