.class Lcom/android/camera/panorama/PanoramaActivity$5;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaActivity;->onMosaicSurfaceCreated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/panorama/PanoramaActivity;

.field final synthetic val$textureID:I


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$5;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    iput p2, p0, Lcom/android/camera/panorama/PanoramaActivity$5;->val$textureID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$5;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1800(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$5;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1800(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$5;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/panorama/PanoramaActivity$5;->val$textureID:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #setter for: Lcom/android/camera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0, v1}, Lcom/android/camera/panorama/PanoramaActivity;->access$1802(Lcom/android/camera/panorama/PanoramaActivity;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 484
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$5;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$600(Lcom/android/camera/panorama/PanoramaActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$5;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1800(Lcom/android/camera/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaActivity$5;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 487
    :cond_1
    return-void
.end method
