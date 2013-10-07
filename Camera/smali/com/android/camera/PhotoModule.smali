.class public Lcom/android/camera/PhotoModule;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$ImageNamer;,
        Lcom/android/camera/PhotoModule$ImageSaver;,
        Lcom/android/camera/PhotoModule$SaveRequest;,
        Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PhotoModule$AutoFocusCallback;,
        Lcom/android/camera/PhotoModule$JpegPictureCallback;,
        Lcom/android/camera/PhotoModule$RawPictureCallback;,
        Lcom/android/camera/PhotoModule$PostViewPictureCallback;,
        Lcom/android/camera/PhotoModule$ShutterCallback;,
        Lcom/android/camera/PhotoModule$ZoomChangeListener;,
        Lcom/android/camera/PhotoModule$MainHandler;,
        Lcom/android/camera/PhotoModule$CameraStartUpThread;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBlocker:Landroid/view/View;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

.field private mCameraState:I

.field private volatile mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mExposureIndicator:Landroid/widget/ImageView;

.field private mFaceDetectionStarted:Z

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFirstTimeInitialized:Z

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusStartTime:J

.field private final mFormatter:Ljava/util/Formatter;

.field private final mFormatterArgs:[Ljava/lang/Object;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private final mHandler:Landroid/os/Handler;

.field private mHdrIndicator:Landroid/widget/ImageView;

.field private mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

.field private mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMenu:Landroid/view/View;

.field private mMeteringAreaSupported:Z

.field private mOnResumeTime:J

.field private mOnScreenIndicators:Landroid/view/View;

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field private mPhotoControl:Lcom/android/camera/PhotoController;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private final mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneIndicator:Landroid/widget/ImageView;

.field private mSceneMode:Ljava/lang/String;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private final mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mSurfaceTexture:Ljava/lang/Object;

.field private mUpdateSet:I

.field private mZoomMax:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

.field private mZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 162
    iput v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 165
    iput v3, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    .line 172
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 209
    new-instance v0, Lcom/android/camera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$1;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    .line 217
    new-instance v0, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFormatter:Ljava/util/Formatter;

    .line 218
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFormatterArgs:[Ljava/lang/Object;

    .line 248
    iput v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 249
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 255
    new-instance v0, Lcom/android/camera/PhotoModule$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

    .line 256
    new-instance v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 258
    new-instance v0, Lcom/android/camera/PhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    .line 260
    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    .line 262
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 267
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 296
    new-instance v0, Lcom/android/camera/PhotoModule$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 302
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 1146
    return-void

    :cond_0
    move-object v0, v1

    .line 262
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/PhotoModule;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->locationFirstRun()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/PhotoModule;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/PhotoModule;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4000(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4302(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doAttach()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$5300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/PhotoModule;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 646
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 647
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/PhotoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$5;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 654
    return-void
.end method

.method private animateFlash()V
    .locals 2

    .prologue
    .line 1261
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateFlash(I)V

    .line 1266
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1914
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2019
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 2020
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2021
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2025
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 2026
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2027
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2028
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2029
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 2031
    :cond_1
    return-void
.end method

.method private dismissPopup(ZZ)V
    .locals 2
    .parameter "topOnly"
    .parameter "fullScreen"

    .prologue
    .line 2579
    if-eqz p2, :cond_0

    .line 2580
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 2581
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2583
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 2584
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 2585
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 2588
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoController;->popupDismissed(Z)V

    .line 2589
    return-void
.end method

.method private doAttach()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 1503
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1579
    :goto_0
    return-void

    .line 1507
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1509
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1514
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 1517
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1518
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1519
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1521
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1522
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1526
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1523
    :catch_0
    move-exception v1

    .line 1526
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1529
    :cond_1
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v0

    .line 1530
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1531
    invoke-static {v1, v0}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1532
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "inline-data"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1534
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 1541
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "crop-temp"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1542
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1543
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "crop-temp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 1544
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1545
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1546
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 1556
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1560
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1561
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 1564
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1568
    :goto_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1569
    const-string v2, "showWhenLocked"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1572
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1575
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1577
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1547
    :catch_1
    move-exception v1

    .line 1548
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1549
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1556
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1551
    :catch_2
    move-exception v1

    .line 1552
    :try_start_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1553
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1556
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1566
    :cond_5
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1556
    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 1526
    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_1
.end method

.method private doCancel()V
    .locals 3

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1583
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1584
    return-void
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 1315
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1316
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1321
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private hidePostCaptureAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2378
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2380
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2381
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2382
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 2383
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2385
    :cond_0
    return-void
.end method

.method private initOnScreenIndicator()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    .line 772
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f10006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mExposureIndicator:Landroid/widget/ImageView;

    .line 773
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f100069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    .line 774
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f10006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    .line 775
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    .line 776
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 4

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 555
    new-instance v0, Lcom/android/camera/PhotoController;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/PhotoController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoModule;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    .line 556
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v0, p0}, Lcom/android/camera/PhotoController;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 557
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 560
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_2

    .line 564
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraModule;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 566
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeRenderOverlay()V

    .line 567
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializePhotoControl()V

    .line 570
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    .line 571
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 573
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 574
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 575
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 576
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 577
    return-void
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 2535
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    .line 2536
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    .line 2537
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    .line 2538
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    .line 2539
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    .line 2541
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1761
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    .line 1762
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f10007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    .line 1763
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$7;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1771
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 1773
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1777
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 1778
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 1779
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    .line 1780
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1782
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$8;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$8;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1788
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$9;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$9;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1795
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$10;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1805
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 1809
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupCaptureParams()V

    .line 1811
    :cond_1
    return-void
.end method

.method private initializeFirstTime()V
    .locals 3

    .prologue
    .line 612
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 634
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 617
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 619
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 622
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 623
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 624
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 625
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 627
    new-instance v1, Lcom/android/camera/PhotoModule$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$ImageSaver;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    .line 628
    new-instance v1, Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 630
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    .line 631
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addIdleHandler()V

    .line 633
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1819
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 1822
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1833
    :goto_0
    return-void

    .line 1825
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1826
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v5, :cond_1

    .line 1827
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1829
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    goto :goto_0

    .line 1826
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 1839
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 1841
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 1842
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 1843
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 1844
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    .line 1847
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 1848
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1850
    :cond_0
    return-void
.end method

.method private initializePhotoControl()V
    .locals 2

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 581
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 584
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSceneModeUI()V

    .line 585
    return-void
.end method

.method private initializeRenderOverlay()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 529
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFocusRenderer(Lcom/android/camera/ui/PieRenderer;)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->clearTouchReceivers()V

    .line 536
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 537
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 538
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 540
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_2

    .line 542
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_3

    .line 545
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->requestLayout()V

    .line 550
    return-void
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 663
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 665
    new-instance v1, Lcom/android/camera/PhotoModule$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$ImageSaver;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    .line 666
    new-instance v1, Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 667
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 668
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 669
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->hidePostCaptureAlert()V

    .line 671
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v1}, Lcom/android/camera/PhotoController;->reloadPreferences()V

    .line 674
    :cond_0
    return-void
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mZoomMax:I

    .line 711
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    .line 714
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 716
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 717
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 718
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/PhotoModule$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PhotoModule$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2348
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2355
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 606
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 2505
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2506
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2507
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2508
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 5

    .prologue
    .line 1421
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1423
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 1424
    return-void
.end method

.method private locationFirstRun()V
    .locals 4

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/RecordLocationPreference;->isSet(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 488
    .local v0, backCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 493
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00ac

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00af

    new-instance v3, Lcom/android/camera/PhotoModule$4;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$4;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00ae

    new-instance v3, Lcom/android/camera/PhotoModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$3;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/PhotoModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$2;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoController;->overrideSettings([Ljava/lang/String;)V

    .line 1418
    :cond_0
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 589
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 593
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 594
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 596
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2501
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2502
    return-void
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2147
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2150
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2154
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2157
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 2311
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2312
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersInitialize()V

    .line 2315
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2316
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 2319
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2320
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V

    .line 2323
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2324
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 2329
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 2330
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 2333
    iput v1, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 2345
    :cond_0
    :goto_0
    return-void

    .line 2335
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2336
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2337
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSceneModeUI()V

    .line 2338
    iput v1, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 2340
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2341
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1240
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 1241
    packed-switch p1, :pswitch_data_0

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1246
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    .line 1249
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    .line 1241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    .line 2035
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    .line 2036
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    .line 2037
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2040
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 2041
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 2044
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 2045
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2161
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2164
    :cond_0
    return-void
.end method

.method private setLocationPreference(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 523
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 524
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2168
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2172
    :cond_0
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1326
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1332
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1327
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1330
    goto :goto_1
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2361
    if-eqz v1, :cond_0

    .line 2362
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 2363
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 2365
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 2050
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 2051
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2052
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 2053
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2368
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2370
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2371
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2372
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 2373
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2375
    :cond_0
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 4

    .prologue
    .line 2526
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0d0056

    iget v3, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2528
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2529
    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2530
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2531
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 643
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2063
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2065
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 2067
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_2

    .line 2070
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2071
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2073
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 2075
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2077
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_6

    .line 2078
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 2079
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 2080
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2081
    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_5

    .line 2082
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2086
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 2087
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 2088
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2089
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    .line 2091
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2092
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 2098
    :goto_1
    const-string v0, "CAM_PhotoModule"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 2101
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 2103
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_4

    .line 2104
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2106
    :cond_4
    return-void

    .line 2084
    :cond_5
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_0

    .line 2094
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2095
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_1
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2109
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2110
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2112
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2114
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2115
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 2116
    :cond_1
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2419
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 2464
    :cond_0
    :goto_0
    return-void

    .line 2421
    :cond_1
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to switch camera. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 2423
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 2424
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoController;->setCameraId(I)V

    .line 2427
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 2428
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    .line 2429
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2430
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2433
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2434
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2436
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2437
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2445
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 2446
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v1, v1, v2

    .line 2447
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_4

    .line 2448
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 2449
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2450
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 2451
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 2452
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializePhotoControl()V

    .line 2455
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 2456
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 2457
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 2459
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2438
    :catch_0
    move-exception v0

    .line 2439
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0d0001

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 2441
    :catch_1
    move-exception v0

    .line 2442
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0d0002

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 2447
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2305
    :goto_0
    return-void

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 2123
    if-eqz v0, :cond_0

    .line 2124
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2125
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2128
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "recording-hint"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2133
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2134
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2175
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 2176
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 2177
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setFocusAreasIfSupported()V

    .line 2178
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setMeteringAreasIfSupported()V

    .line 2181
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2183
    if-nez v0, :cond_5

    .line 2184
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 2190
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2194
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 2195
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v2, v1, v3, v4}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2197
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2198
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2199
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2203
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2204
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2206
    :cond_0
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_hdr_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0d0047

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2213
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0d0015

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2214
    const-string v0, "hdr"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2220
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2221
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2222
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2227
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2228
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2238
    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2240
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2246
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    .line 2247
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 2248
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 2249
    if-lt v0, v2, :cond_8

    if-gt v0, v1, :cond_8

    .line 2250
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2255
    :goto_3
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2257
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0d002e

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2260
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2261
    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2262
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2272
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0d0035

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2275
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2277
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2286
    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v7}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2292
    :goto_6
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_4

    .line 2293
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateAutoFocusMoveCallback()V

    .line 2295
    :cond_4
    return-void

    .line 2186
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 2187
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_0

    .line 2216
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 2231
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2232
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2233
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 2252
    :cond_8
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid exposure range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2264
    :cond_9
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2265
    if-nez v0, :cond_2

    .line 2266
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    goto/16 :goto_4

    .line 2279
    :cond_a
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2280
    if-nez v0, :cond_3

    .line 2281
    const-string v0, "auto"

    goto/16 :goto_5

    .line 2289
    :cond_b
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2143
    :cond_0
    return-void
.end method

.method private updateExposureOnScreenIndicator(I)V
    .locals 3
    .parameter

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 816
    :goto_0
    return-void

    .line 788
    :cond_0
    const/4 v0, 0x0

    .line 789
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    .line 790
    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 791
    packed-switch v1, :pswitch_data_0

    .line 814
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mExposureIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 793
    :pswitch_0
    const v0, 0x7f020089

    .line 794
    goto :goto_1

    .line 796
    :pswitch_1
    const v0, 0x7f020088

    .line 797
    goto :goto_1

    .line 799
    :pswitch_2
    const v0, 0x7f020087

    .line 800
    goto :goto_1

    .line 802
    :pswitch_3
    const v0, 0x7f020086

    .line 803
    goto :goto_1

    .line 805
    :pswitch_4
    const v0, 0x7f02008a

    .line 806
    goto :goto_1

    .line 808
    :pswitch_5
    const v0, 0x7f02008b

    .line 809
    goto :goto_1

    .line 811
    :pswitch_6
    const v0, 0x7f02008c

    goto :goto_1

    .line 791
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateFlashOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f02008e

    .line 819
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 833
    :goto_0
    return-void

    .line 822
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 825
    :cond_2
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 826
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 827
    :cond_3
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 828
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateHdrOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 856
    :goto_0
    return-void

    .line 851
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateOnScreenIndicators()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateExposureOnScreenIndicator(I)V

    .line 861
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateHdrOnScreenIndicator(Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1400
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    :goto_0
    return-void

    .line 1404
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSceneOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 845
    :goto_0
    return-void

    .line 839
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 843
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 1919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    .line 1920
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1921
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 1922
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1927
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 1928
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 1929
    return-void
.end method

.method public capture()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1271
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v0, v10, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v8

    .line 1306
    :goto_0
    return v0

    .line 1275
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 1276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 1277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1279
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_4

    move v9, v7

    .line 1281
    :goto_1
    if-eqz v9, :cond_2

    .line 1282
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateFlash()V

    .line 1286
    :cond_2
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    .line 1287
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1288
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 1289
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v5}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1290
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1292
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusState()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture2(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V

    .line 1296
    if-nez v9, :cond_3

    .line 1297
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateFlash()V

    .line 1300
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 1301
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    iget v4, v5, Landroid/hardware/Camera$Size;->width:I

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/PhotoModule$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 1304
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1305
    invoke-direct {p0, v10}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    move v0, v7

    .line 1306
    goto :goto_0

    :cond_4
    move v9, v8

    .line 1279
    goto :goto_1
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 1429
    const/4 v0, 0x0

    .line 1430
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 1431
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->dismissPopup(Z)V

    .line 1432
    const/4 v0, 0x1

    .line 1434
    :cond_0
    return v0
.end method

.method public dismissPopup(Z)V
    .locals 1
    .parameter "topPopupOnly"

    .prologue
    .line 2575
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/PhotoModule;->dismissPopup(ZZ)V

    .line 2576
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 761
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 767
    :goto_0
    return v0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 767
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 0

    .prologue
    .line 782
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 5
    .parameter "activity"
    .parameter "parent"
    .parameter "reuseNail"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 442
    iput-object p2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    .line 443
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v3}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 444
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 445
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 447
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 451
    new-instance v0, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 452
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 454
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040025

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 458
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 459
    if-eqz p3, :cond_1

    .line 460
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 465
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 466
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 468
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetExposureCompensation()V

    .line 471
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 473
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 474
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    .line 475
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeMiscControls()V

    .line 476
    new-instance v0, Lcom/android/camera/LocationManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 477
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initOnScreenIndicator()V

    .line 478
    return-void

    :cond_0
    move v0, v2

    .line 460
    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1637
    return-void
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 2557
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1893
    packed-switch p1, :pswitch_data_0

    .line 1911
    :goto_0
    return-void

    .line 1895
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1896
    if-eqz p3, :cond_0

    .line 1897
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1898
    if-eqz v1, :cond_0

    .line 1899
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1902
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p2, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1903
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1905
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "crop-temp"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1906
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1893
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1951
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1952
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1967
    :cond_0
    :goto_0
    return v0

    .line 1957
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_2

    .line 1958
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1960
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doCancel()V

    goto :goto_0

    .line 1963
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1967
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3
    .parameter

    .prologue
    .line 2403
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2416
    :cond_0
    :goto_0
    return-void

    .line 2405
    :cond_1
    iput p1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 2406
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 2407
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2412
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    goto :goto_0

    .line 2414
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 2492
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1854
    const-string v0, "CAM_PhotoModule"

    const-string v3, "onConfigurationChanged"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 1857
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1858
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1859
    const v4, 0x7f040025

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1862
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 1864
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    .line 1865
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeMiscControls()V

    .line 1866
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 1869
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 1870
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 1871
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 1872
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initOnScreenIndicator()V

    .line 1873
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 1874
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1876
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1877
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1878
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v0, v3

    .line 1879
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1880
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1881
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 1883
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeRenderOverlay()V

    .line 1884
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onFullScreenChanged(Z)V

    .line 1885
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    if-eqz v0, :cond_1

    .line 1886
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V

    .line 1888
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1879
    goto :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1336
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-nez p1, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 1340
    invoke-direct {p0, v2, p1}, Lcom/android/camera/PhotoModule;->dismissPopup(ZZ)V

    .line 1342
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    .line 1343
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 1345
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_3

    .line 1347
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_8

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 1349
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_4

    .line 1350
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez p1, :cond_9

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1352
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 1353
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1354
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    if-eqz p1, :cond_a

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    :cond_5
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_b

    .line 1357
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_6

    .line 1358
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 1367
    :cond_6
    :goto_4
    return-void

    :cond_7
    move v0, v2

    .line 1337
    goto :goto_0

    :cond_8
    move v0, v3

    .line 1347
    goto :goto_1

    :cond_9
    move v1, v2

    .line 1350
    goto :goto_2

    :cond_a
    move v2, v3

    .line 1354
    goto :goto_3

    .line 1362
    :cond_b
    if-eqz p1, :cond_c

    .line 1363
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->expand()V

    goto :goto_4

    .line 1365
    :cond_c
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->shrink()V

    goto :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1973
    sparse-switch p1, :sswitch_data_0

    .line 2002
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 1975
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1976
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1980
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1981
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1987
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1991
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1992
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 1993
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1994
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 1998
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 1996
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 1973
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 2007
    packed-switch p1, :pswitch_data_0

    .line 2014
    :goto_0
    return v0

    .line 2009
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 2010
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 2012
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2007
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x6

    .line 1451
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 1455
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 1457
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_3

    .line 1458
    iput v0, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    .line 1459
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v1, :cond_2

    .line 1460
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/FaceView;->setOrientation(IZ)V

    .line 1462
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 1466
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1467
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1468
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1701
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->waitCameraStartUpThread()V

    .line 1707
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ActivityBase;->isFirstStartAfterScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    invoke-static {}, Lcom/android/camera/ActivityBase;->resetFirstStartAfterScreenOn()V

    .line 1710
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->keep(I)V

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_1

    .line 1715
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1717
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 1719
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 1720
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1721
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1722
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    .line 1724
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetScreenOn()V

    .line 1727
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    .line 1728
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1730
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_4

    .line 1731
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    if-eqz v0, :cond_4

    .line 1732
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$ImageSaver;->finish()V

    .line 1733
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    .line 1734
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$ImageNamer;->finish()V

    .line 1735
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 1739
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1743
    :cond_5
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1746
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1747
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1748
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1749
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1750
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1751
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1752
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1753
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1754
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1756
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 1757
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1758
    :cond_6
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 1695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 1696
    return-void
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2478
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2479
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 2481
    :cond_0
    return-void
.end method

.method public onPieOpened(II)V
    .locals 2
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->cancelActivityTouchHandling()V

    .line 2469
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2470
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2471
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 2473
    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2488
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1655
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1678
    :cond_0
    :goto_0
    return-void

    .line 1657
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 1658
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 1661
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 1662
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetExposureCompensation()V

    .line 1663
    new-instance v0, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 1664
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 1669
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_3

    .line 1670
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1674
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 1677
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    goto :goto_0

    .line 1672
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 1651
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doCancel()V

    .line 1490
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1483
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doAttach()V

    .line 1484
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1495
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1500
    :goto_0
    return-void

    .line 1498
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->hidePostCaptureAlert()V

    .line 1499
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    .prologue
    .line 2390
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2399
    :goto_0
    return-void

    .line 2392
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2394
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2396
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    .line 2397
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    .line 2398
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    goto :goto_0
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2594
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 2596
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 4

    .prologue
    .line 1608
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1613
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1614
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1618
    :cond_2
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick: mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_4

    .line 1627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 1631
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1632
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1588
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    :cond_2
    if-eqz p1, :cond_4

    .line 1596
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_3

    .line 1597
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1598
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1600
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterDown()V

    goto :goto_0

    .line 1602
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1934
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1947
    :cond_0
    :goto_0
    return-void

    .line 1942
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1945
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1946
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 2547
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1478
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 2497
    :cond_0
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1439
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 1440
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->dismissPopup(Z)V

    .line 1443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 1311
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 1312
    return-void
.end method

.method setPreviewFrameLayoutAspectRatio()V
    .locals 6

    .prologue
    .line 2551
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2552
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 2553
    return-void
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 0
    .parameter "hasSignal"

    .prologue
    .line 779
    return-void
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 5
    .parameter "popup"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 2561
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 2562
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2563
    invoke-direct {p0, v3}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 2564
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 2566
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/AbstractSettingPopup;->setOrientation(IZ)V

    .line 2567
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 2568
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2570
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2571
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2572
    return-void
.end method

.method public startFaceDetection()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 725
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v3, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v3, :cond_0

    .line 727
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    .line 728
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 729
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 730
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 731
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 732
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v3, v4

    .line 733
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 734
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 735
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 736
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/PhotoModule$6;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$6;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 742
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 733
    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 749
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 753
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 754
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 755
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1371
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 1377
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1380
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_1

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 1385
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_0

    .line 1386
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 1392
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1394
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 1395
    return-void
.end method

.method public updateCameraAppView()V
    .locals 0

    .prologue
    .line 1646
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 1641
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 1682
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->cancel()V

    .line 1684
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->join()V

    .line 1685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 1686
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1691
    :cond_0
    :goto_0
    return-void

    .line 1688
    :catch_0
    move-exception v0

    goto :goto_0
.end method
