.class Lcom/android/camera/panorama/PanoramaActivity$3$1;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaActivity$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/panorama/PanoramaActivity$3;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoramaActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$3$1;->this$1:Lcom/android/camera/panorama/PanoramaActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3$1;->this$1:Lcom/android/camera/panorama/PanoramaActivity$3;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1000(Lcom/android/camera/panorama/PanoramaActivity;)V

    .line 331
    return-void
.end method
