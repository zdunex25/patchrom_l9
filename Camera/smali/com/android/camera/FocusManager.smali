.class public Lcom/android/camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$1;,
        Lcom/android/camera/FocusManager$MainHandler;,
        Lcom/android/camera/FocusManager$Listener;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/camera/ui/FocusIndicatorView;

.field private mFocusIndicatorRotateLayout:Landroid/view/View;

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrame:Landroid/view/View;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;)V
    .locals 2
    .parameter "preferences"
    .parameter "defaultFocusModes"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 101
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 102
    iput-object p2, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Lcom/android/camera/FocusManager$1;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 319
    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    .line 321
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 324
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 326
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    const-string v0, "FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 336
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 337
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 338
    :cond_0
    iput v2, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 339
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 340
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iput v1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 346
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    :cond_0
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 484
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 489
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


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
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
    .line 449
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 450
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 451
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 452
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 454
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 455
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 456
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 457
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 184
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0

    .line 185
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_0

    .line 190
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 352
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 384
    :goto_0
    return-object v3

    .line 353
    :cond_0
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 355
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 357
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 374
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 377
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 379
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 384
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_3
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 364
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 365
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 366
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 367
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 368
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 365
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 381
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public initialize(Landroid/view/View;Landroid/view/View;Lcom/android/camera/ui/FaceView;Lcom/android/camera/FocusManager$Listener;ZI)V
    .locals 3
    .parameter "focusIndicatorRotate"
    .parameter "previewFrame"
    .parameter "faceView"
    .parameter "listener"
    .parameter "mirror"
    .parameter "displayOrientation"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    .line 120
    const v1, 0x7f0d0016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FocusIndicatorView;

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Lcom/android/camera/ui/FocusIndicatorView;

    .line 122
    iput-object p2, p0, Lcom/android/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    .line 123
    iput-object p3, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 124
    iput-object p4, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 126
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 127
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p5, p6, v1, v2}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 132
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 134
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v1, "FocusManager"

    const-string v2, "mParameters is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 110
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    .line 113
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 115
    return-void

    :cond_2
    move v0, v2

    .line 110
    goto :goto_0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 460
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

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
    .line 464
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 205
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 209
    if-eqz p1, :cond_1

    .line 210
    iput v3, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 215
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 212
    :cond_1
    iput v4, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_0

    .line 216
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v2, :cond_5

    .line 220
    if-eqz p1, :cond_4

    .line 221
    iput v3, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 225
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    .line 232
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 235
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 230
    :cond_4
    iput v4, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_2

    .line 238
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 316
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 305
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 309
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 311
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 312
    return-void
.end method

.method public onShutter()V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 201
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 202
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_2

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 147
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 171
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 173
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "e"

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 254
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 255
    .local v4, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 256
    .local v5, y:I
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 257
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 258
    .local v2, focusHeight:I
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 259
    .local v6, previewWidth:I
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 260
    .local v7, previewHeight:I
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_4

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 262
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v13, 0x1

    invoke-direct {v3, v8, v13}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 264
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v13, 0x1

    invoke-direct {v3, v8, v13}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_4
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 272
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 278
    .local v10, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v0, v1, 0x2

    sub-int v0, v4, v0

    const/4 v3, 0x0

    sub-int v8, v6, v1

    invoke-static {v0, v3, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v9

    .line 279
    .local v9, left:I
    div-int/lit8 v0, v2, 0x2

    sub-int v0, v5, v0

    const/4 v3, 0x0

    sub-int v8, v7, v2

    invoke-static {v0, v3, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v12

    .line 280
    .local v12, top:I
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v9, v12, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 282
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v11

    .line 283
    .local v11, rules:[I
    const/16 v0, 0xd

    const/4 v3, 0x0

    aput v3, v11, v0

    .line 284
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 287
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection()V

    .line 290
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 291
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 292
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->autoFocus()V

    .line 300
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 294
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 296
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v13, 0xbb8

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 469
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 434
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 445
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 439
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 440
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 441
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 443
    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 444
    iput-object v5, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 477
    return-void
.end method

.method public updateFocusUI()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 396
    iget-boolean v5, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v5, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v3, v5, 0x4

    .line 400
    .local v3, len:I
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Lcom/android/camera/ui/FocusIndicatorView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FocusIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 401
    .local v2, layout:Landroid/view/ViewGroup$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 402
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 405
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 406
    .local v0, faceExists:Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 408
    .local v1, focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :goto_2
    iget v5, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v5, :cond_5

    .line 409
    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v4, :cond_4

    .line 410
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .line 405
    .end local v0           #faceExists:Z
    .end local v1           #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 406
    .restart local v0       #faceExists:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Lcom/android/camera/ui/FocusIndicatorView;

    goto :goto_2

    .line 415
    .restart local v1       #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_4
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 417
    :cond_5
    iget v5, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v5, v4, :cond_6

    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 418
    :cond_6
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 423
    :cond_7
    const-string v4, "continuous-picture"

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 424
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 425
    :cond_8
    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 426
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 427
    :cond_9
    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 428
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    goto :goto_0
.end method
