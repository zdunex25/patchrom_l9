.class Lcom/android/camera/panorama/PanoramaActivity$6;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaActivity;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
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
    .line 522
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$6;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$6;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$600(Lcom/android/camera/panorama/PanoramaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$6;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1800(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 528
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$6;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1800(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaActivity$6;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/android/camera/panorama/PanoramaActivity;->access$1900(Lcom/android/camera/panorama/PanoramaActivity;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto :goto_0
.end method
