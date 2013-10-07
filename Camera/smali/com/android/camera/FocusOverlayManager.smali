.class public Lcom/android/camera/FocusOverlayManager;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusOverlayManager$MainHandler;,
        Lcom/android/camera/FocusOverlayManager$Listener;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mListener:Lcom/android/camera/FocusOverlayManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;)V
    .locals 1
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 127
    new-instance v0, Lcom/android/camera/FocusOverlayManager$MainHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/camera/FocusOverlayManager$MainHandler;-><init>(Lcom/android/camera/FocusOverlayManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    .line 129
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 130
    iput-object p2, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 131
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 132
    iput-object p4, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    .line 133
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusOverlayManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 400
    const-string v0, "CAM_FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->autoFocus()V

    .line 402
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 405
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 407
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    return-void
.end method

.method private calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 516
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 517
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 518
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 519
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 521
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 522
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 523
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 524
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 411
    const-string v0, "CAM_FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 417
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 418
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 419
    :cond_0
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 420
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 421
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 427
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    :cond_0
    return-void
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 9
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 317
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 323
    return-void
.end method

.method private initializeMeteringAreas(IIIIII)V
    .locals 9
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 330
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 338
    return-void
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 192
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 194
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 177
    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 178
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 184
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 185
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    .line 187
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void

    .line 185
    .restart local v0       #matrix:Landroid/graphics/Matrix;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 199
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public doSnap()V
    .locals 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_0

    .line 242
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 246
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 247
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 432
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 464
    :goto_0
    return-object v3

    .line 433
    :cond_0
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 435
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 437
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 454
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 457
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 459
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 464
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 440
    :cond_3
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 444
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 445
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 446
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 447
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 448
    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 445
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 461
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method getFocusState()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 531
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 535
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(ZZ)V
    .locals 4
    .parameter "focused"
    .parameter "shutterButtonPressed"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 257
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 261
    if-eqz p1, :cond_1

    .line 262
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 266
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 267
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    .line 291
    :cond_0
    :goto_1
    return-void

    .line 264
    :cond_1
    iput v3, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 268
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 272
    if-eqz p1, :cond_4

    .line 273
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 277
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 280
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 283
    :cond_3
    if-eqz p2, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_1

    .line 275
    :cond_4
    iput v3, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_2

    .line 287
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 2
    .parameter "moving"

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->clear()V

    goto :goto_0

    .line 303
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 305
    if-eqz p1, :cond_3

    .line 306
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showStart()V

    goto :goto_0

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->showSuccess(Z)V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 397
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 386
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 391
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 392
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 393
    return-void
.end method

.method public onShutterDown()V
    .locals 3

    .prologue
    .line 204
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const/4 v0, 0x0

    .line 207
    .local v0, autoFocusCalled:Z
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    .line 211
    const/4 v0, 0x1

    .line 215
    :cond_2
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->unlockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 341
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 346
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->getSize()I

    move-result v1

    .line 350
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->getSize()I

    move-result v2

    .line 351
    .local v2, focusHeight:I
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget v5, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    .line 354
    .local v5, previewWidth:I
    iget v6, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    .line 356
    .local v6, previewHeight:I
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 357
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusOverlayManager;->initializeFocusAreas(IIIIII)V

    .line 361
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 362
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusOverlayManager;->initializeMeteringAreas(IIIIII)V

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setFocus(II)V

    .line 370
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->stopFaceDetection()V

    .line 373
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 374
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_6

    .line 375
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    goto :goto_0

    .line 377
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 379
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    return-void
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->clear()V

    .line 510
    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 511
    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 548
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "displayOrientation"

    .prologue
    .line 168
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    .line 169
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 170
    return-void
.end method

.method public setFaceView(Lcom/android/camera/ui/FaceView;)V
    .locals 0
    .parameter "faceView"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 174
    return-void
.end method

.method public setFocusRenderer(Lcom/android/camera/ui/PieRenderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 138
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    .line 164
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 165
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 148
    invoke-static {p1}, Lcom/android/camera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    .line 149
    invoke-static {p1}, Lcom/android/camera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    .line 150
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 156
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    .line 157
    iput p2, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    .line 158
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 160
    :cond_1
    return-void
.end method

.method public updateFocusUI()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 476
    iget-boolean v4, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v4, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v4}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 479
    .local v0, faceExists:Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 481
    .local v1, focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :goto_2
    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v4, :cond_5

    .line 482
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_4

    .line 483
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .end local v0           #faceExists:Z
    .end local v1           #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_2
    move v0, v3

    .line 478
    goto :goto_1

    .line 479
    .restart local v0       #faceExists:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    goto :goto_2

    .line 488
    .restart local v1       #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_4
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 490
    :cond_5
    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-eq v4, v2, :cond_6

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 491
    :cond_6
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 493
    :cond_7
    const-string v2, "continuous-picture"

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 495
    invoke-interface {v1, v3}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 496
    :cond_8
    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 497
    invoke-interface {v1, v3}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 498
    :cond_9
    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 499
    invoke-interface {v1, v3}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    goto :goto_0
.end method
