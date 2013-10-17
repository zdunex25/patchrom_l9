.class Lcom/android/camera/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    .line 1289
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1290
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x6

    .line 1297
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v2

    #setter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$5102(Lcom/android/camera/Camera;I)I

    .line 1301
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 1303
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1304
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$5202(Lcom/android/camera/Camera;I)I

    .line 1305
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)I

    move-result v2

    #calls: Lcom/android/camera/Camera;->setOrientationIndicator(I)V
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;I)V

    .line 1309
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1310
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showTapToFocusToast()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1200(Lcom/android/camera/Camera;)V

    goto :goto_0
.end method
