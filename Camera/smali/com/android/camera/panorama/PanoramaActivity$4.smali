.class Lcom/android/camera/panorama/PanoramaActivity$4;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaActivity;->onMosaicSurfaceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$4;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$4;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$600(Lcom/android/camera/panorama/PanoramaActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$4;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mThreadRunning:Z
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1600(Lcom/android/camera/panorama/PanoramaActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$4;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->startCameraPreview()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1700(Lcom/android/camera/panorama/PanoramaActivity;)V

    .line 471
    :cond_0
    return-void
.end method
