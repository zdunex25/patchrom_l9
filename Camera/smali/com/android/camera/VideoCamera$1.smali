.class Lcom/android/camera/VideoCamera$1;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v3, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mCameraId:I
    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$1300(Lcom/android/camera/VideoCamera;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 389
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->readVideoPreferences()V
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1400(Lcom/android/camera/VideoCamera;)V

    .line 390
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->startPreview()V
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$600(Lcom/android/camera/VideoCamera;)V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    #setter for: Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z
    invoke-static {v1, v4}, Lcom/android/camera/VideoCamera;->access$1502(Lcom/android/camera/VideoCamera;Z)Z

    goto :goto_0

    .line 393
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 394
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    #setter for: Lcom/android/camera/VideoCamera;->mCameraDisabled:Z
    invoke-static {v1, v4}, Lcom/android/camera/VideoCamera;->access$1602(Lcom/android/camera/VideoCamera;Z)Z

    goto :goto_0
.end method
