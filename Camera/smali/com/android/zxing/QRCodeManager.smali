.class public Lcom/android/zxing/QRCodeManager;
.super Ljava/lang/Object;
.source "QRCodeManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/QRCodeManager$MyHander;,
        Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    }
.end annotation


# static fields
.field private static mRectFinderCenter:Landroid/graphics/Rect;

.field private static mRectFinderFocusArea:Landroid/graphics/Rect;

.field private static mRectPreviewCenter:Landroid/graphics/Rect;

.field private static mRectPreviewFocusArea:Landroid/graphics/Rect;

.field private static sQRCodeManager:Lcom/android/zxing/QRCodeManager;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

.field private mFragment:Lcom/android/zxing/ui/QRCodeFragment;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mIsScanQRCodeIntent:Z

.field private mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewLayoutHeight:I

.field private mPreviewLayoutWidth:I

.field private mPreviewWidth:I

.field private mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

.field private mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

.field private mResult:Ljava/lang/String;

.field private mType:Lcom/android/zxing/QRCodeType;

.field private mViewFinderButton:Landroid/widget/TextView;

.field private mViewFinderFrame:Landroid/view/ViewGroup;

.field private mViewFinderText:Landroid/widget/TextView;

.field private mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    .line 55
    sget-object v0, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;

    .line 66
    new-instance v0, Lcom/android/zxing/QRCodeManager$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/QRCodeManager$1;-><init>(Lcom/android/zxing/QRCodeManager;)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/zxing/QRCodeManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/zxing/QRCodeManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/zxing/QRCodeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mInitialized:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/zxing/QRCodeManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/ui/ViewFinderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/zxing/QRCodeManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/zxing/QRCodeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/zxing/QRCodeManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/zxing/QRCodeManager;Lcom/android/zxing/QRCodeType;)Lcom/android/zxing/QRCodeType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private hide()Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-virtual {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->hide()V

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static instance()Lcom/android/zxing/QRCodeManager;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/android/zxing/QRCodeManager;->sQRCodeManager:Lcom/android/zxing/QRCodeManager;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/android/zxing/QRCodeManager;

    invoke-direct {v0}, Lcom/android/zxing/QRCodeManager;-><init>()V

    sput-object v0, Lcom/android/zxing/QRCodeManager;->sQRCodeManager:Lcom/android/zxing/QRCodeManager;

    .line 192
    :cond_0
    sget-object v0, Lcom/android/zxing/QRCodeManager;->sQRCodeManager:Lcom/android/zxing/QRCodeManager;

    return-object v0
.end method

.method private show()V
    .locals 3

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mFragment:Lcom/android/zxing/ui/QRCodeFragment;

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/ui/QRCodeFragment;->initialize(Lcom/android/zxing/QRCodeType;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-virtual {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->show()V

    .line 95
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_0
    return-void
.end method

.method private startDecodeThreadIfNeeded()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/android/zxing/DecodeHandlerFactory;

    iget-boolean v1, p0, Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z

    invoke-direct {v0, v1}, Lcom/android/zxing/DecodeHandlerFactory;-><init>(Z)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    .line 294
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandlerFactory;->start()V

    .line 296
    :cond_0
    return-void
.end method

.method private updateRectInPreview()V
    .locals 7

    .prologue
    .line 276
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-nez v2, :cond_0

    .line 289
    :goto_0
    return-void

    .line 277
    :cond_0
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 278
    .local v1, scaleWidth:F
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 279
    .local v0, scaleHeight:F
    sget-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sget-object v4, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sget-object v5, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    sget-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sget-object v4, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sget-object v5, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public buildLuminanceSource([BIIZ)Lcom/android/zxing/YUVLuminanceSource;
    .locals 8
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "center"

    .prologue
    .line 336
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 337
    if-eqz p4, :cond_0

    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/android/zxing/YUVLuminanceSource;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    .line 348
    :goto_0
    return-object v0

    .line 341
    :cond_0
    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    new-instance v0, Lcom/android/zxing/YUVLuminanceSource;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 348
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getViewFinderRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getViewFinderView()Lcom/android/zxing/ui/ViewFinderView;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;

    return-object v0
.end method

.method public hideViewFinderFrame()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public initialize(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;Z)V
    .locals 6
    .parameter "activity"
    .parameter "loop"
    .parameter "listener"
    .parameter "isScanQRCodeIntent"

    .prologue
    const/4 v5, 0x1

    .line 196
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    .line 197
    iput-object p3, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    .line 198
    new-instance v1, Lcom/android/zxing/QRCodeManager$MyHander;

    invoke-direct {v1, p0, p2}, Lcom/android/zxing/QRCodeManager$MyHander;-><init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    .line 199
    iput-boolean p4, p0, Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z

    .line 201
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c007b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/zxing/ui/QRCodeFragmentLayout;

    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    .line 202
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c007d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/zxing/ui/QRCodeFragmentLayout;

    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    .line 203
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    const v2, 0x7f0c007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/zxing/ui/ViewFinderView;

    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;

    .line 204
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    const v2, 0x7f0c007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    .line 205
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    const v2, 0x7f0c0080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;

    .line 206
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    const v2, 0x7f0c0081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderButton:Landroid/widget/TextView;

    .line 207
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 210
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/zxing/ui/QRCodeFragment;

    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mFragment:Lcom/android/zxing/ui/QRCodeFragment;

    .line 213
    iget-boolean v1, p0, Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v2, 0x7f0c0007

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 219
    iput-boolean v5, p0, Lcom/android/zxing/QRCodeManager;->mInitialized:Z

    .line 220
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-virtual {v1, v5}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->setDispatchTouchEvent(Z)V

    goto :goto_0
.end method

.method public isFragmentShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mFragment:Lcom/android/zxing/ui/QRCodeFragment;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mFragment:Lcom/android/zxing/ui/QRCodeFragment;

    invoke-virtual {v0}, Lcom/android/zxing/ui/QRCodeFragment;->onBackPressed()V

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->hide()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 81
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->show()V

    .line 82
    return-void
.end method

.method public quit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandlerFactory;->quit()V

    .line 309
    :cond_2
    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    .line 310
    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 311
    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    .line 312
    sget-object v0, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;

    .line 313
    return-void
.end method

.method public setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0
    .parameter "cameraDevice"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 224
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->startDecodeThreadIfNeeded()V

    .line 225
    return-void
.end method

.method public setPreviewFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 244
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    .line 245
    return-void
.end method

.method public setPreviewLayoutSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 228
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    if-eq v0, p2, :cond_1

    .line 229
    :cond_0
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    .line 230
    iput p2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    .line 231
    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect()V

    .line 233
    :cond_1
    return-void
.end method

.method public setTransposePreviewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 236
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    if-eq v0, p1, :cond_1

    .line 237
    :cond_0
    iput p2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    .line 238
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    .line 239
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->updateRectInPreview()V

    .line 241
    :cond_1
    return-void
.end method

.method public updateViewFinderRect()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect(Landroid/graphics/Point;)V

    .line 273
    return-void
.end method

.method public updateViewFinderRect(Landroid/graphics/Point;)V
    .locals 9
    .parameter "area"

    .prologue
    const/16 v7, 0x2d0

    const/4 v8, 0x0

    .line 248
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 249
    .local v5, width:I
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 250
    .local v1, height:I
    const/4 v2, 0x0

    .local v2, left:I
    const/4 v4, 0x0

    .local v4, top:I
    const/4 v3, 0x0

    .local v3, right:I
    const/4 v0, 0x0

    .line 251
    .local v0, bottom:I
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sub-int/2addr v6, v5

    div-int/lit8 v2, v6, 0x2

    .line 252
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sub-int/2addr v6, v1

    div-int/lit8 v4, v6, 0x2

    .line 253
    add-int v3, v2, v5

    .line 254
    add-int v0, v4, v1

    .line 255
    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    if-eqz p1, :cond_0

    .line 258
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    const/16 v7, 0x1e0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 259
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    const/16 v7, 0x168

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 260
    iget v6, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 261
    iget v6, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 262
    iget v6, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 263
    iget v6, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 264
    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    :goto_0
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->updateRectInPreview()V

    .line 269
    return-void

    .line 266
    :cond_0
    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
