.class Lcom/android/camera/PhotoModule$ZoomChangeListener;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 704
    :cond_0
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 697
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 680
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->mZoomValue:I
    invoke-static {v1, p1}, Lcom/android/camera/PhotoModule;->access$3302(Lcom/android/camera/PhotoModule;I)I

    .line 682
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mZoomValue:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 685
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 686
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 688
    .local v0, p:Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3500(Lcom/android/camera/PhotoModule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    goto :goto_0
.end method
