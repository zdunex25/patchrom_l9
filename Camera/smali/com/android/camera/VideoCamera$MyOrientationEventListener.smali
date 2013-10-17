.class Lcom/android/camera/VideoCamera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    .line 543
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 544
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x7

    .line 551
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$1800(Lcom/android/camera/VideoCamera;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v2

    #setter for: Lcom/android/camera/VideoCamera;->mOrientation:I
    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$1802(Lcom/android/camera/VideoCamera;I)I

    .line 555
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mOrientation:I
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1800(Lcom/android/camera/VideoCamera;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 558
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 559
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #setter for: Lcom/android/camera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/android/camera/VideoCamera;->access$1902(Lcom/android/camera/VideoCamera;I)I

    .line 560
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->effectsActive()Z
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2000(Lcom/android/camera/VideoCamera;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2100(Lcom/android/camera/VideoCamera;)Lcom/android/camera/EffectsRecorder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 566
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$500(Lcom/android/camera/VideoCamera;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 567
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)I

    move-result v2

    #calls: Lcom/android/camera/VideoCamera;->setOrientationIndicator(I)V
    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$2200(Lcom/android/camera/VideoCamera;I)V

    .line 572
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$800(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$800(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->showTapToSnapshotToast()V
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$900(Lcom/android/camera/VideoCamera;)V

    goto :goto_0
.end method
