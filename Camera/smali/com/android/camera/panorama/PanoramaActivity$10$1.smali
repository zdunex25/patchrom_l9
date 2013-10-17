.class Lcom/android/camera/panorama/PanoramaActivity$10$1;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/panorama/PanoramaActivity$10;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoramaActivity$10;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$10$1;->this$1:Lcom/android/camera/panorama/PanoramaActivity$10;

    iput p2, p0, Lcom/android/camera/panorama/PanoramaActivity$10$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$10$1;->this$1:Lcom/android/camera/panorama/PanoramaActivity$10;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoramaActivity$10;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/panorama/PanoProgressBar;
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$3000(Lcom/android/camera/panorama/PanoramaActivity;)Lcom/android/camera/panorama/PanoProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/panorama/PanoramaActivity$10$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/android/camera/panorama/PanoProgressBar;->setProgress(I)V

    .line 800
    return-void
.end method
