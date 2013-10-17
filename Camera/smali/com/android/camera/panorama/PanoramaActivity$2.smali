.class Lcom/android/camera/panorama/PanoramaActivity$2;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaActivity;->addBaseMenuItems(Landroid/view/Menu;)V
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
    .line 261
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$2;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$2;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->switchToOtherMode(I)Z
    invoke-static {v0, v1}, Lcom/android/camera/panorama/PanoramaActivity;->access$300(Lcom/android/camera/panorama/PanoramaActivity;I)Z

    .line 264
    return-void
.end method
