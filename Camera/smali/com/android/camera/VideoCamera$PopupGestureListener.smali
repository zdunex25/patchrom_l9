.class Lcom/android/camera/VideoCamera$PopupGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2235
    iput-object p1, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2235
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$PopupGestureListener;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 2240
    iget-object v1, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2900(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/IndicatorControlContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorControlContainer;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 2241
    .local v0, popup:Landroid/view/View;
    if-nez v0, :cond_1

    .line 2251
    :cond_0
    :goto_0
    return v4

    .line 2246
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;
    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$2900(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/IndicatorControlContainer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2248
    iget-object v1, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2900(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/IndicatorControlContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    goto :goto_0
.end method
