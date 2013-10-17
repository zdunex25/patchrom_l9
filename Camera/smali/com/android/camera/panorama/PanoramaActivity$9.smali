.class Lcom/android/camera/panorama/PanoramaActivity$9;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/camera/panorama/PanoProgressBar$OnDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaActivity;->createContentView()V
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
    .line 694
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$9;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$9;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$2500(Lcom/android/camera/panorama/PanoramaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$9;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->showDirectionIndicators(I)V
    invoke-static {v0, p1}, Lcom/android/camera/panorama/PanoramaActivity;->access$2600(Lcom/android/camera/panorama/PanoramaActivity;I)V

    .line 700
    :cond_0
    return-void
.end method
