.class Lcom/android/camera/Camera$8;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 2175
    iput-object p1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mNumberOfCameras:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2179
    iget-object v0, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 2180
    const/4 v0, 0x1

    return v0
.end method
