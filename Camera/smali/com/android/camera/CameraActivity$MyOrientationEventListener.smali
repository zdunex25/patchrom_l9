.class Lcom/android/camera/CameraActivity$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    .line 116
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 124
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    #getter for: Lcom/android/camera/CameraActivity;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$000(Lcom/android/camera/CameraActivity;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v2

    #setter for: Lcom/android/camera/CameraActivity;->mOrientation:I
    invoke-static {v1, v2}, Lcom/android/camera/CameraActivity;->access$002(Lcom/android/camera/CameraActivity;I)I

    .line 128
    iget-object v1, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    #getter for: Lcom/android/camera/CameraActivity;->mOrientation:I
    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$000(Lcom/android/camera/CameraActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 131
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    #getter for: Lcom/android/camera/CameraActivity;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    #setter for: Lcom/android/camera/CameraActivity;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/android/camera/CameraActivity;->access$102(Lcom/android/camera/CameraActivity;I)I

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1, p1}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    goto :goto_0
.end method
