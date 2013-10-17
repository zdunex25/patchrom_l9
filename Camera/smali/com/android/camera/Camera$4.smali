.class Lcom/android/camera/Camera$4;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1100
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1106
    :goto_0
    return-void

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mOpenCameraFail:Z
    invoke-static {v1, v4}, Lcom/android/camera/Camera;->access$4802(Lcom/android/camera/Camera;Z)Z

    goto :goto_0

    .line 1103
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1104
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraDisabled:Z
    invoke-static {v1, v4}, Lcom/android/camera/Camera;->access$4902(Lcom/android/camera/Camera;Z)Z

    goto :goto_0
.end method
