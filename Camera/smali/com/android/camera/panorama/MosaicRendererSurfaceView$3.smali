.class Lcom/android/camera/panorama/MosaicRendererSurfaceView$3;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/MosaicRendererSurfaceView;->transferGPUtoCPU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/panorama/MosaicRendererSurfaceView;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/MosaicRendererSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/camera/panorama/MosaicRendererSurfaceView$3;->this$0:Lcom/android/camera/panorama/MosaicRendererSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/panorama/MosaicRendererSurfaceView$3;->this$0:Lcom/android/camera/panorama/MosaicRendererSurfaceView;

    #getter for: Lcom/android/camera/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/camera/panorama/MosaicRendererSurfaceViewRenderer;
    invoke-static {v0}, Lcom/android/camera/panorama/MosaicRendererSurfaceView;->access$200(Lcom/android/camera/panorama/MosaicRendererSurfaceView;)Lcom/android/camera/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/panorama/MosaicRendererSurfaceViewRenderer;->transferGPUtoCPU()V

    .line 355
    iget-object v0, p0, Lcom/android/camera/panorama/MosaicRendererSurfaceView$3;->this$0:Lcom/android/camera/panorama/MosaicRendererSurfaceView;

    #calls: Lcom/android/camera/panorama/MosaicRendererSurfaceView;->unlockPreviewReadyFlag()V
    invoke-static {v0}, Lcom/android/camera/panorama/MosaicRendererSurfaceView;->access$300(Lcom/android/camera/panorama/MosaicRendererSurfaceView;)V

    .line 356
    return-void
.end method
