.class public Lcom/android/camera/ui/IndicatorControlWheel;
.super Lcom/android/camera/ui/IndicatorControl;
.source "IndicatorControlWheel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HIGHLIGHT_RADIANS:D


# instance fields
.field private final HIGHLIGHT_COLOR:I

.field private final HIGHLIGHT_FAN_COLOR:I

.field private final TIME_LAPSE_ARC_COLOR:I

.field private mAnimationStartTime:J

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCenterX:I

.field private mCenterY:I

.field private mChildRadians:[D

.field private mCloseIcon:Landroid/widget/ImageView;

.field private mCurrentLevel:I

.field private mEndVisibleRadians:[D

.field private mHandler:Landroid/os/Handler;

.field private mInAnimation:Z

.field private mInitialized:Z

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mNumberOfFrames:J

.field private mPressedIndex:I

.field private mRecordingStartTime:J

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSecondLevelIcon:Landroid/widget/ImageView;

.field private mSecondLevelStartIndex:I

.field private mSectorRadians:[D

.field private mShutterButtonRadius:D

.field private mStartVisibleRadians:[D

.field private mStrokeWidth:I

.field private mTimeLapseInterval:I

.field private mTouchSectorRadians:[D

.field private mWheelRadius:D

.field private mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-wide/high16 v0, 0x403e

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 89
    iput-wide v5, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mRecordingStartTime:J

    .line 90
    iput-wide v5, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mNumberOfFrames:J

    .line 100
    iput-boolean v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    .line 101
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v1, Lcom/android/camera/ui/IndicatorControlWheel$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/IndicatorControlWheel$1;-><init>(Lcom/android/camera/ui/IndicatorControlWheel;)V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mRunnable:Ljava/lang/Runnable;

    .line 109
    iput v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    .line 110
    iput v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    .line 111
    new-array v1, v2, [D

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    .line 112
    new-array v1, v2, [D

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    .line 113
    new-array v1, v2, [D

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSectorRadians:[D

    .line 114
    new-array v1, v2, [D

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_COLOR:I

    .line 123
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_FAN_COLOR:I

    .line 124
    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->TIME_LAPSE_ARC_COLOR:I

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/IndicatorControlWheel;->setWillNotDraw(Z)V

    .line 128
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 129
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    .line 133
    return-void
.end method

.method private addImageButton(Landroid/content/Context;IZ)Landroid/widget/ImageView;
    .locals 1
    .parameter "context"
    .parameter "resourceId"
    .parameter "rotatable"

    .prologue
    .line 191
    if-eqz p3, :cond_0

    .line 192
    new-instance v0, Lcom/android/camera/ui/RotateImageView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, view:Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlWheel;->addView(Landroid/view/View;)V

    .line 199
    return-object v0

    .line 194
    .end local v0           #view:Landroid/widget/ImageView;
    :cond_0
    new-instance v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .restart local v0       #view:Landroid/widget/ImageView;
    goto :goto_0
.end method

.method private changeIndicatorsLevel()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mAnimationStartTime:J

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->requestLayout()V

    .line 150
    return-void
.end method

.method private getChildCountByLevel(I)I
    .locals 2
    .parameter "level"

    .prologue
    .line 137
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    sub-int/2addr v0, v1

    .line 140
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    goto :goto_0
.end method

.method private getSelectedIndicatorIndex()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 427
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 428
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 429
    .local v0, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getPopupWindow()Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 430
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlWheel;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 439
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_0
    :goto_1
    return v3

    .line 427
    .restart local v0       #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_2
    iget v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    if-eq v4, v3, :cond_0

    .line 434
    iget v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 435
    .local v2, v:Landroid/view/View;
    instance-of v4, v2, Lcom/android/camera/ui/AbstractIndicatorButton;

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    iget v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    goto :goto_1
.end method

.method private getTouchIndicatorIndex(D)I
    .locals 13
    .parameter "delta"

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 204
    iget-boolean v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    if-eqz v9, :cond_1

    move v6, v8

    .line 244
    :cond_0
    :goto_0
    return v6

    .line 205
    :cond_1
    iget v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    invoke-direct {p0, v9}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCountByLevel(I)I

    move-result v0

    .line 206
    .local v0, count:I
    if-nez v0, :cond_2

    move v6, v8

    goto :goto_0

    .line 207
    :cond_2
    add-int/lit8 v5, v0, -0x1

    .line 208
    .local v5, sectors:I
    iget v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v9, :cond_4

    move v6, v7

    .line 210
    .local v6, startIndex:I
    :goto_1
    iget v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v9, :cond_5

    .line 213
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    if-eqz v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 214
    :cond_3
    iget v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    add-int/lit8 v1, v9, -0x1

    .line 219
    .local v1, endIndex:I
    :goto_2
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    aget-wide v2, v9, v10

    .line 220
    .local v2, halfTouchSectorRadians:D
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v9, v9, v6

    sub-double/2addr v9, v2

    cmpl-double v9, p1, v9

    if-ltz v9, :cond_a

    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v9, v9, v1

    add-double/2addr v9, v2

    cmpg-double v9, p1, v9

    if-gtz v9, :cond_a

    .line 222
    const/4 v4, 0x0

    .line 223
    .local v4, index:I
    iget v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 224
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v9, v9, v6

    sub-double v9, p1, v9

    iget-object v11, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSectorRadians:[D

    iget v12, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    aget-wide v11, v11, v12

    div-double/2addr v9, v11

    double-to-int v4, v9

    .line 227
    if-le v4, v5, :cond_6

    add-int/2addr v6, v5

    goto :goto_0

    .line 208
    .end local v1           #endIndex:I
    .end local v2           #halfTouchSectorRadians:D
    .end local v4           #index:I
    .end local v6           #startIndex:I
    :cond_4
    iget v6, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    goto :goto_1

    .line 216
    .restart local v6       #startIndex:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .restart local v1       #endIndex:I
    goto :goto_2

    .line 229
    .restart local v2       #halfTouchSectorRadians:D
    .restart local v4       #index:I
    :cond_6
    if-ltz v4, :cond_0

    .line 231
    :cond_7
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int v10, v6, v4

    aget-wide v9, v9, v10

    add-double/2addr v9, v2

    cmpg-double v9, p1, v9

    if-gtz v9, :cond_8

    .line 233
    add-int/2addr v6, v4

    goto :goto_0

    .line 235
    :cond_8
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int v10, v6, v4

    add-int/lit8 v10, v10, 0x1

    aget-wide v9, v9, v10

    sub-double/2addr v9, v2

    cmpl-double v9, p1, v9

    if-ltz v9, :cond_9

    .line 237
    add-int v7, v6, v4

    add-int/lit8 v6, v7, 0x1

    goto :goto_0

    .line 242
    :cond_9
    iget v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    if-eqz v9, :cond_a

    move v6, v7

    goto/16 :goto_0

    .end local v4           #index:I
    :cond_a
    move v6, v8

    .line 244
    goto/16 :goto_0
.end method

.method private injectMotionEvent(ILandroid/view/MotionEvent;I)V
    .locals 1
    .parameter "viewIndex"
    .parameter "event"
    .parameter "action"

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, v:Landroid/view/View;
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 250
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    return-void
.end method

.method private presetFirstLevelChildRadians()V
    .locals 10

    .prologue
    const-wide v8, 0x4071e00000000000L

    const-wide v6, 0x4052800000000000L

    const/4 v5, 0x0

    .line 376
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v5

    .line 377
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    sget-wide v3, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    aput-wide v3, v2, v5

    .line 378
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v5

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, startIndex:I
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    if-eqz v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int/lit8 v1, v0, 0x1

    .end local v0           #startIndex:I
    .local v1, startIndex:I
    const-wide v3, 0x4070800000000000L

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v0

    move v0, v1

    .line 385
    .end local v1           #startIndex:I
    .restart local v0       #startIndex:I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int/lit8 v1, v0, 0x1

    .end local v0           #startIndex:I
    .restart local v1       #startIndex:I
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v0

    move v0, v1

    .line 388
    .end local v1           #startIndex:I
    .restart local v0       #startIndex:I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int/lit8 v1, v0, 0x1

    .end local v0           #startIndex:I
    .restart local v1       #startIndex:I
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 389
    return-void
.end method

.method private presetSecondLevelChildRadians()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    .line 392
    invoke-direct {p0, v8}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCountByLevel(I)I

    move-result v0

    .line 393
    .local v0, count:I
    if-gt v0, v8, :cond_0

    move v6, v8

    .line 394
    .local v6, sectors:I
    :goto_0
    const/16 v9, 0xf0

    div-int/2addr v9, v6

    int-to-double v4, v9

    .line 396
    .local v4, sectorDegrees:D
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSectorRadians:[D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 398
    const-wide v1, 0x4073b00000000000L

    .line 399
    .local v1, degrees:D
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    const-wide/high16 v10, 0x404e

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 401
    iget v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    .line 402
    .local v7, startIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 403
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int v10, v7, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 404
    add-double/2addr v1, v4

    .line 402
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 393
    .end local v1           #degrees:D
    .end local v3           #i:I
    .end local v4           #sectorDegrees:D
    .end local v6           #sectors:I
    .end local v7           #startIndex:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    goto :goto_0

    .line 408
    .restart local v1       #degrees:D
    .restart local v3       #i:I
    .restart local v4       #sectorDegrees:D
    .restart local v6       #sectors:I
    .restart local v7       #startIndex:I
    :cond_1
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    sget-wide v10, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 411
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    const-wide v10, 0x4072c00000000000L

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 412
    return-void
.end method

.method private rotateWheel()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 306
    const/16 v6, 0xff

    .line 307
    .local v6, totalDegrees:I
    iget v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v7, :cond_2

    const/16 v5, 0x13b

    .line 309
    .local v5, startAngle:I
    :goto_0
    iget v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v7, :cond_0

    neg-int v6, v6

    .line 311
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mAnimationStartTime:J

    sub-long/2addr v9, v11

    long-to-int v0, v9

    .line 312
    .local v0, elapsedTime:I
    const/16 v7, 0x12c

    if-lt v0, v7, :cond_1

    .line 313
    const/16 v0, 0x12c

    .line 314
    iget v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    iput v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    .line 315
    iput-boolean v8, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    .line 318
    :cond_1
    mul-int v7, v6, v0

    div-int/lit16 v7, v7, 0x12c

    add-int v1, v5, v7

    .line 319
    .local v1, expectedAngle:I
    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    iget v11, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    aget-wide v11, v7, v11

    sub-double v3, v9, v11

    .line 321
    .local v3, increment:D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v9, v7, v2

    add-double/2addr v9, v3

    aput-wide v9, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 307
    .end local v0           #elapsedTime:I
    .end local v1           #expectedAngle:I
    .end local v2           #i:I
    .end local v3           #increment:D
    .end local v5           #startAngle:I
    :cond_2
    const/16 v5, 0x3c

    goto :goto_0

    .restart local v0       #elapsedTime:I
    .restart local v5       #startAngle:I
    :cond_3
    move v7, v8

    .line 314
    goto :goto_1

    .line 323
    .restart local v1       #expectedAngle:I
    .restart local v2       #i:I
    .restart local v3       #increment:D
    :cond_4
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    if-eqz v7, :cond_5

    .line 324
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v8, v9, v8

    const-wide v10, 0x4070800000000000L

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/ui/ZoomControlWheel;->rotate(D)V

    .line 327
    :cond_5
    return-void
.end method


# virtual methods
.method public dismissSecondLevelIndicator()V
    .locals 2

    .prologue
    .line 541
    iget v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->changeIndicatorsLevel()V

    .line 544
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 302
    :goto_0
    return v10

    .line 256
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 259
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    float-to-double v3, v10

    .line 260
    .local v3, dx:D
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v5, v10

    .line 261
    .local v5, dy:D
    mul-double v10, v3, v3

    mul-double v12, v5, v5

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 264
    .local v8, radius:D
    iget-wide v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mWheelRadius:D

    iget v12, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStrokeWidth:I

    int-to-double v12, v12

    add-double/2addr v10, v12

    cmpg-double v10, v8, v10

    if-gtz v10, :cond_a

    iget-wide v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    cmpl-double v10, v8, v10

    if-lez v10, :cond_a

    .line 265
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 266
    .local v1, delta:D
    const-wide/16 v10, 0x0

    cmpg-double v10, v1, v10

    if-gez v10, :cond_1

    const-wide v10, 0x401921fb54442d18L

    add-double/2addr v1, v10

    .line 267
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/IndicatorControlWheel;->getTouchIndicatorIndex(D)I

    move-result v7

    .line 269
    .local v7, index:I
    iget-object v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    if-eqz v10, :cond_2

    if-nez v7, :cond_2

    .line 270
    iget-object v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    invoke-virtual {v10, p1}, Lcom/android/camera/ui/ZoomControlWheel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 273
    :cond_2
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    if-ne v7, v10, :cond_3

    if-nez v0, :cond_5

    .line 274
    :cond_3
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 275
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    const/4 v11, 0x3

    invoke-direct {p0, v10, p1, v11}, Lcom/android/camera/ui/IndicatorControlWheel;->injectMotionEvent(ILandroid/view/MotionEvent;I)V

    .line 280
    :cond_4
    :goto_1
    const/4 v10, -0x1

    if-eq v7, v10, :cond_5

    const/4 v10, 0x2

    if-ne v0, v10, :cond_5

    .line 281
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-eqz v10, :cond_5

    .line 282
    const/4 v10, 0x0

    invoke-direct {p0, v7, p1, v10}, Lcom/android/camera/ui/IndicatorControlWheel;->injectMotionEvent(ILandroid/view/MotionEvent;I)V

    .line 286
    :cond_5
    const/4 v10, -0x1

    if-eq v7, v10, :cond_6

    const/4 v10, 0x2

    if-eq v0, v10, :cond_6

    .line 287
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 291
    :cond_6
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v10, :cond_8

    if-eqz v7, :cond_8

    const/4 v10, 0x2

    if-ne v0, v10, :cond_8

    .line 293
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 278
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getSelectedIndicatorIndex()I

    move-result v10

    if-eq v10, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    goto :goto_1

    .line 296
    :cond_8
    const/4 v10, 0x1

    if-ne v0, v10, :cond_9

    const/4 v7, -0x1

    .end local v7           #index:I
    :cond_9
    iput v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 297
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->invalidate()V

    .line 298
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 301
    .end local v1           #delta:D
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->onTouchOutBound()V

    .line 302
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public enableZoom(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomControlWheel;->setEnabled(Z)V

    .line 529
    :cond_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "group"
    .parameter "isZoomSupported"
    .parameter "keys"
    .parameter "otherSettingKeys"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 159
    const-wide v0, 0x4052800000000000L

    iput-wide v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    .line 160
    const/16 v0, 0x57

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStrokeWidth:I

    .line 161
    iget-wide v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    iget v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStrokeWidth:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mWheelRadius:D

    .line 163
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/IndicatorControlWheel;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 166
    if-eqz p3, :cond_0

    .line 167
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlWheel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ZoomControlWheel;

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/ZoomControlWheel;->setVisibility(I)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->initializeCameraPicker()V

    .line 175
    const v0, 0x7f020063

    invoke-direct {p0, p1, v0, v7}, Lcom/android/camera/ui/IndicatorControlWheel;->addImageButton(Landroid/content/Context;IZ)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    .line 179
    const v0, 0x7f020029

    invoke-direct {p0, p1, v0, v6}, Lcom/android/camera/ui/IndicatorControlWheel;->addImageButton(Landroid/content/Context;IZ)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    .line 180
    invoke-virtual {p0, p4, p5}, Lcom/android/camera/ui/IndicatorControlWheel;->addControls([Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    .line 184
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->presetFirstLevelChildRadians()V

    .line 185
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->presetSecondLevelChildRadians()V

    .line 186
    iput-boolean v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInitialized:Z

    .line 187
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->changeIndicatorsLevel()V

    .line 155
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getSelectedIndicatorIndex()I

    move-result v14

    .line 448
    .local v14, selectedIndex:I
    const/4 v2, 0x1

    if-lt v14, v2, :cond_0

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v2, v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-int v8, v2

    .line 450
    .local v8, degree:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    double-to-float v10, v2

    .line 451
    .local v10, innerR:F
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mStrokeWidth:I

    int-to-double v6, v4

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4008

    add-double/2addr v2, v6

    double-to-float v13, v2

    .line 455
    .local v13, outerR:F
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 456
    .local v9, fanPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v3, v3

    sub-float/2addr v3, v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v4, v4

    sub-float/2addr v4, v10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v6, v6

    add-float/2addr v6, v10

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v7, v7

    add-float/2addr v7, v10

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    neg-int v3, v8

    add-int/lit8 v3, v3, 0xf

    int-to-float v3, v3

    const/high16 v4, -0x3e10

    invoke-virtual {v9, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v3, v3

    sub-float/2addr v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v4, v4

    sub-float/2addr v4, v13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v6, v6

    add-float/2addr v6, v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v7, v7

    add-float/2addr v7, v13

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    neg-int v3, v8

    add-int/lit8 v3, v3, -0xf

    int-to-float v3, v3

    const/high16 v4, 0x41f0

    invoke-virtual {v9, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 464
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4080

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_FAN_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    neg-int v2, v8

    add-int/lit8 v2, v2, -0xf

    int-to-float v4, v2

    const/high16 v5, 0x41f0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 480
    .end local v8           #degree:I
    .end local v9           #fanPath:Landroid/graphics/Path;
    .end local v10           #innerR:F
    .end local v13           #outerR:F
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    if-eqz v2, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    sub-double/2addr v3, v6

    double-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-double v6, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-wide/from16 v17, v0

    sub-double v6, v6, v17

    double-to-float v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-wide/from16 v17, v0

    add-double v6, v6, v17

    double-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-double v0, v7

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v7, v0

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    const/high16 v3, 0x4040

    const/high16 v4, 0x4040

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40c0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->TIME_LAPSE_ARC_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 492
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mRecordingStartTime:J

    sub-long v15, v2, v6

    .line 493
    .local v15, timeDelta:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    int-to-long v2, v2

    div-long v11, v15, v2

    .line 495
    .local v11, numberOfFrames:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mNumberOfFrames:J

    cmp-long v2, v11, v2

    if-lez v2, :cond_2

    .line 498
    const/high16 v5, 0x43b4

    .line 499
    .local v5, sweepAngle:F
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mNumberOfFrames:J

    .line 504
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->invalidate()V

    .line 508
    .end local v5           #sweepAngle:F
    .end local v11           #numberOfFrames:J
    .end local v15           #timeDelta:J
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/android/camera/ui/IndicatorControl;->onDraw(Landroid/graphics/Canvas;)V

    .line 509
    return-void

    .line 501
    .restart local v11       #numberOfFrames:J
    .restart local v15       #timeDelta:J
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    int-to-long v2, v2

    rem-long v2, v15, v2

    long-to-float v2, v2

    const/high16 v3, 0x43b4

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    int-to-float v3, v3

    div-float v5, v2, v3

    .restart local v5       #sweepAngle:F
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mInitialized:Z

    if-nez v13, :cond_1

    .line 372
    :cond_0
    return-void

    .line 333
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    if-eqz v13, :cond_2

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->rotateWheel()V

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :cond_2
    sub-int v13, p4, p2

    const/16 v14, 0x5d

    invoke-static {v14}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    .line 339
    sub-int v13, p5, p3

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    .line 343
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v13

    if-ge v4, v13, :cond_0

    .line 344
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 346
    .local v9, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v5, v13, v4

    .line 347
    .local v5, radian:D
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    const/4 v14, 0x1

    aget-wide v7, v13, v14

    .line 350
    .local v7, startVisibleRadians:D
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    const/4 v14, 0x1

    aget-wide v1, v13, v14

    .line 353
    .local v1, endVisibleRadians:D
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-eqz v13, :cond_4

    :cond_3
    sget-wide v13, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    const-wide/high16 v15, 0x4000

    div-double/2addr v13, v15

    sub-double v13, v7, v13

    cmpg-double v13, v5, v13

    if-ltz v13, :cond_4

    sget-wide v13, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    const-wide/high16 v15, 0x4000

    div-double/2addr v13, v15

    add-double/2addr v13, v1

    cmpl-double v13, v5, v13

    if-lez v13, :cond_7

    .line 356
    :cond_4
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 347
    .end local v1           #endVisibleRadians:D
    .end local v7           #startVisibleRadians:D
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    aget-wide v7, v13, v14

    goto :goto_1

    .line 350
    .restart local v7       #startVisibleRadians:D
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    aget-wide v1, v13, v14

    goto :goto_2

    .line 359
    .restart local v1       #endVisibleRadians:D
    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 360
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mWheelRadius:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v14, v14

    add-int v11, v13, v14

    .line 361
    .local v11, x:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mWheelRadius:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v14, v14

    sub-int v12, v13, v14

    .line 362
    .local v12, y:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 363
    .local v10, width:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 364
    .local v3, height:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControlWheel;

    if-ne v9, v13, :cond_8

    .line 366
    const/4 v13, 0x0

    const/4 v14, 0x0

    sub-int v15, p4, p2

    sub-int v16, p5, p3

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 368
    :cond_8
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v3, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v11

    div-int/lit8 v16, v3, 0x2

    add-int v16, v16, v12

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3
.end method

.method public onTouchOutBound()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 532
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    .line 533
    iget v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    if-eq v0, v3, :cond_0

    .line 534
    iget v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/IndicatorControlWheel;->injectMotionEvent(ILandroid/view/MotionEvent;I)V

    .line 535
    iput v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 536
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->invalidate()V

    .line 538
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 513
    invoke-super {p0, p1}, Lcom/android/camera/ui/IndicatorControl;->setEnabled(Z)V

    .line 514
    iget-boolean v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInitialized:Z

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 515
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 516
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 518
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->requestLayout()V

    .line 523
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 516
    goto :goto_1

    :cond_2
    move v1, v2

    .line 517
    goto :goto_2

    .line 521
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->enableZoom(Z)V

    goto :goto_3
.end method

.method public startTimeLapseAnimation(IJ)V
    .locals 2
    .parameter "timeLapseInterval"
    .parameter "startTime"

    .prologue
    .line 415
    iput p1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    .line 416
    iput-wide p2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mRecordingStartTime:J

    .line 417
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mNumberOfFrames:J

    .line 418
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->invalidate()V

    .line 419
    return-void
.end method

.method public stopTimeLapseAnimation()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    .line 423
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->invalidate()V

    .line 424
    return-void
.end method
