.class Lcom/android/camera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->addBaseMenuItems(Landroid/view/Menu;)V
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
    .line 2167
    iput-object p1, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    #calls: Lcom/android/camera/Camera;->switchToOtherMode(I)Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$5400(Lcom/android/camera/Camera;I)Z

    .line 2170
    return-void
.end method
