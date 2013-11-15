.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityWithAudioCapture;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/camera/FocusManager$Listener;
.implements Lcom/android/camera/ModeChangeManager$OnModeChangeListener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$ImageNamer;,
        Lcom/android/camera/Camera$ImageSaver;,
        Lcom/android/camera/Camera$SaveRequest;,
        Lcom/android/camera/Camera$AutoFocusMoveCallback;,
        Lcom/android/camera/Camera$AutoFocusCallback;,
        Lcom/android/camera/Camera$JpegQuickPictureCallback;,
        Lcom/android/camera/Camera$JpegPictureCallback;,
        Lcom/android/camera/Camera$RawPictureCallback;,
        Lcom/android/camera/Camera$PostViewPictureCallback;,
        Lcom/android/camera/Camera$ShutterCallback;,
        Lcom/android/camera/Camera$MainHandler;,
        Lcom/android/camera/Camera$CameraStartUpThread;
    }
.end annotation


# static fields
.field public static mBrightnessVisible:Z

.field public static statsdata:[I


# instance fields
.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBurstJpegCallbackNum:I

.field private mBurstRawCallbackNum:I

.field private mCameraDisplayOrientation:I

.field mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

.field private mCameraState:I

.field private mCameraSwitching:Z

.field public mCaptureStartTime:J

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoCaptureRetry:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field public mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFirstTimeInitialized:Z

.field private mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusManager;

.field private mFocusStartTime:J

.field private mFoundFace:Z

.field private mHandNight:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPendingSwitching:Z

.field private mImageNamer:Lcom/android/camera/Camera$ImageNamer;

.field private mImageSaver:Lcom/android/camera/Camera$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsCaptureAfterLaunch:Z

.field private mIsImageCaptureIntent:Z

.field mIsRecreateCameraScreenNail:Z

.field private mIsScanQRCodeIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLastAudioCaptureTime:J

.field private mLastFaceDetectTime:J

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

.field private mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

.field private mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

.field private mMultiSnapStatus:Z

.field private mMultiSnappedCount:I

.field private mMutliSnapStopRequest:Z

.field private mNeedFlash:Z

.field private mOnResumeTime:J

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mPendingCapture:Z

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressBarCapture:Landroid/view/View;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mReceivedJpegCallbackNum:I

.field private mReceivedRawCallbackNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReferenceline:Landroid/widget/ImageView;

.field private mRestartPreview:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotMode:I

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextMulitSnapNumber:Landroid/widget/TextView;

.field private mTouchAfAecFlag:Z

.field private mUpdateSet:I

.field private mbrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/Camera;->mBrightnessVisible:Z

    .line 108
    const/16 v0, 0x101

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/Camera;->statsdata:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/camera/ActivityWithAudioCapture;-><init>()V

    .line 101
    iput v0, p0, Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I

    .line 102
    iput v3, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    .line 103
    iput v0, p0, Lcom/android/camera/Camera;->mBurstRawCallbackNum:I

    .line 104
    iput v3, p0, Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I

    .line 160
    iput v3, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    .line 189
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/Camera;->mbrightness:I

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastFaceDetectTime:J

    .line 211
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 247
    iput v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 252
    new-instance v0, Lcom/android/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    .line 253
    new-instance v0, Lcom/android/camera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$PostViewPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    .line 255
    new-instance v0, Lcom/android/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    .line 257
    new-instance v0, Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    .line 259
    new-instance v0, Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusMoveCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    .line 283
    new-instance v0, Lcom/android/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 289
    iput v3, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    .line 296
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 685
    new-instance v0, Lcom/android/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 914
    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3434
    new-instance v0, Lcom/android/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchCamera()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->onSettingsBack()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->takeAPhotoIfNeeded()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    return v0
.end method

.method static synthetic access$2304(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->isShutterButtonClickable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2708(Lcom/android/camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasPendingSwitching:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mHasPendingSwitching:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->sendDoCaptureMessage()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/camera/Camera;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I

    return v0
.end method

.method static synthetic access$3804(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mBurstRawCallbackNum:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->needMirrorInStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->showHDRExit(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->handleMultiSnapDone()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$5800(Lcom/android/camera/Camera;)Lcom/android/camera/MotionFocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 601
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 608
    return-void
.end method

.method private canSetMirror()Z
    .locals 1

    .prologue
    .line 2234
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 2128
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

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

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2293
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2295
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2296
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2297
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2298
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2299
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 2300
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 2301
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 2302
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2303
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2304
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 2306
    :cond_0
    return-void
.end method

.method private doAttach()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 1654
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1737
    :goto_0
    return-void

    .line 1657
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->needMirrorInStorage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1658
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1659
    iget-object v2, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    invoke-static {v2}, Lcom/android/camera/Storage;->flipJpeg([B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1660
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1661
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1663
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1668
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1670
    iget-object v2, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1675
    iget-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 1678
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1679
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1680
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1682
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setResultEx(I)V

    .line 1683
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1687
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1684
    :catch_0
    move-exception v1

    .line 1687
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1690
    :cond_2
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v0

    .line 1691
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1692
    invoke-static {v1, v0}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1693
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/android/camera/ActivityBase;->setResultEx(ILandroid/content/Intent;)V

    .line 1695
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1702
    :cond_3
    :try_start_3
    const-string v2, "crop-temp"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1703
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1704
    const-string v3, "crop-temp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 1705
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1706
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1707
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    .line 1717
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1720
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1721
    iget-object v2, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1722
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    :cond_4
    iget-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 1725
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1730
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1733
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1735
    const/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1708
    :catch_1
    move-exception v1

    .line 1709
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setResultEx(I)V

    .line 1710
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1717
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1712
    :catch_2
    move-exception v1

    .line 1713
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setResultEx(I)V

    .line 1714
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1717
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1727
    :cond_5
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1664
    :catch_3
    move-exception v1

    goto/16 :goto_1

    .line 1717
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 1687
    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_2
.end method

.method private doCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1811
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1812
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :goto_0
    return-void

    .line 1817
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 1819
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick: mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1822
    const-string v0, "1"

    const-string v1, "camera.capture.flashing"

    const-string v2, "null"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1826
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    .line 1827
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 1830
    :cond_3
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 1831
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 1832
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mPendingCapture:Z

    .line 1833
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->doSnap()V

    goto :goto_0
.end method

.method private doSettingSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "onValue"
    .parameter "offValue"

    .prologue
    .line 2996
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, p1, p3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2997
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2999
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3000
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3004
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3005
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v2}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 3006
    return-void

    .line 3002
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 1371
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 4
    .parameter "preferences"

    .prologue
    .line 1389
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1390
    .local v0, intentCameraId:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1403
    .end local v0           #intentCameraId:I
    .local v1, intentCameraId:I
    :goto_0
    return v1

    .line 1398
    .end local v1           #intentCameraId:I
    .restart local v0       #intentCameraId:I
    :cond_0
    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "camera_mode_change"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1400
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1402
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    move v1, v0

    .line 1403
    .end local v0           #intentCameraId:I
    .restart local v1       #intentCameraId:I
    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2411
    invoke-static {}, Lcom/android/camera/Device;->defaultZSL()Ljava/lang/String;

    move-result-object v0

    .line 2412
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_iso_key"

    const v3, 0x7f0d00ca

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2414
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    if-nez v2, :cond_0

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-nez v1, :cond_1

    .line 2416
    const-string v0, "off"

    .line 2418
    :cond_1
    return-object v0
.end method

.method private handleMultiSnapDone()V
    .locals 2

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 859
    invoke-direct {p0}, Lcom/android/camera/Camera;->restoreStatusAfterBurst()V

    .line 860
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 861
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 3057
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_3

    .line 3059
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingsStatusBar;->show()V

    .line 3060
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 3061
    new-array v1, v2, [I

    const v2, 0x7f0c0083

    aput v2, v1, v0

    .line 3062
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 3063
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3062
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3065
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3066
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3067
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3068
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3069
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3071
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->supportSkinBeautification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3072
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3074
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3075
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3080
    :cond_3
    :goto_1
    return-void

    .line 3076
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_3

    .line 3077
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    goto :goto_1
.end method

.method private initializeAfterCameraOpen()V
    .locals 3

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 542
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v0, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSettingScreen()V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ModeManager;->enableSettingView(Z)V

    .line 546
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initializeZoom()V

    .line 547
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    .line 548
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 550
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    invoke-virtual {v0, p0, v1, p0, v2}, Lcom/android/zxing/QRCodeManager;->initialize(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;Z)V

    .line 551
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3320
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3321
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    .line 3324
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    .line 3325
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    .line 3326
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    .line 3327
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    .line 3329
    return-void

    :cond_0
    move v0, v2

    .line 3321
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3324
    goto :goto_1
.end method

.method private initializeControlByIntent()V
    .locals 4

    .prologue
    const v1, 0x7f0c0084

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2030
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 2034
    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 2035
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 2036
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2041
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2044
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setupCaptureParams()V

    .line 2060
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    if-eqz v0, :cond_1

    .line 2062
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2063
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2064
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2066
    :cond_1
    return-void

    .line 2046
    :cond_2
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 2047
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    .line 2048
    const v0, 0x7f0c0087

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    .line 2049
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2050
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2051
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2052
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2053
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    .line 2055
    new-instance v0, Lcom/android/camera/ModeChangeManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ModeChangeManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    .line 2056
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModeChangeManager;->setOnModeChangeListener(Lcom/android/camera/ModeChangeManager$OnModeChangeListener;)V

    .line 2057
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModeChangeManager;->setVisibility(I)V

    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 567
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 571
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 572
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 574
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 577
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 578
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 579
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 582
    new-instance v0, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 583
    new-instance v0, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v0}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 584
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 586
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    .line 587
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 2070
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v1

    .line 2071
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_0

    .line 2072
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2074
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v4, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 2081
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2082
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2083
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2084
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2085
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/AbstractFocusManager;->setRenderSize(II)V

    .line 2086
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setRenderSize(II)V

    .line 2087
    return-void

    .line 2071
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 1

    .prologue
    .line 2091
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2092
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mProgressBarCapture:Landroid/view/View;

    .line 2094
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2095
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    .line 2096
    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mCaptrueDelayView:Lcom/android/camera/ui/RotateImageView;

    .line 2097
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ZoomControl;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    .line 2098
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 2099
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2100
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 2101
    return-void
.end method

.method private initializeSecondTime()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 617
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 618
    new-instance v0, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 619
    new-instance v0, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v0}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 620
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 621
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 623
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 626
    :cond_0
    return-void
.end method

.method private initializeSettingScreen()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1503
    .line 1504
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v0, :cond_4

    .line 1505
    new-instance v0, Lcom/android/camera/CameraModeManager;

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-direct {v0, p0, v3, p0, p0}, Lcom/android/camera/CameraModeManager;-><init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    move v0, v1

    .line 1508
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v4

    .line 1509
    if-nez v4, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ActivityBase;->showIndicators(Z)V

    .line 1510
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-boolean v7, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v3, v5, v4, v6, v1}, Lcom/android/camera/ModeManager;->initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Z)V

    .line 1512
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v1}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 1513
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    .line 1514
    const/high16 v1, 0x7f06

    invoke-virtual {p0, p0, v1}, Lcom/android/camera/ActivityBase;->initializeCameraControls(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;I)V

    .line 1515
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_mode_change_simple_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    invoke-direct {p0}, Lcom/android/camera/Camera;->returnFromPanorama()V

    .line 1519
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateFlashButton()V

    .line 1520
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/FlashButton;->setCallback(Lcom/android/camera/ui/FlashButton$Callback;)V

    .line 1521
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1522
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->resetAudioCapture()V

    .line 1524
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 1525
    return-void

    :cond_2
    move v3, v2

    .line 1509
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1510
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1868
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1870
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1871
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1872
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1873
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1874
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1876
    return-void
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3009
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCaptureAfterLaunch()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3421
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3422
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3423
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3424
    if-eqz v2, :cond_0

    const-string v0, "captureAfterLaunch"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3425
    const-string v0, "captureAfterLaunch"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3426
    const-string v3, "captureAfterLaunch"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3427
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3431
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 3015
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3016
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPreviewVisible()Z
    .locals 1

    .prologue
    .line 2238
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_1

    .line 2242
    :cond_0
    const/4 v0, 0x0

    .line 2244
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isReferenceLineEnabled()Z
    .locals 3

    .prologue
    .line 3338
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_key_camera_referenceline"

    const v2, 0x7f0d016e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3341
    const v1, 0x7f0d016f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isScanQRCodeIntent()Z
    .locals 2

    .prologue
    .line 3020
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3021
    const-string v1, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.zxing.client.android.SCAN"

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

.method private isSelectingCapturedImage()Z
    .locals 1

    .prologue
    .line 2224
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShutterButtonClickable()Z
    .locals 2

    .prologue
    .line 1794
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isShutterButtonUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
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

    .line 2377
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

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 561
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 3238
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3239
    return-void
.end method

.method private needMirrorInStorage()Z
    .locals 1

    .prologue
    .line 2228
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFrontMirror(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needRestart()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2423
    invoke-direct {p0}, Lcom/android/camera/Camera;->getZSL()Ljava/lang/String;

    move-result-object v0

    .line 2424
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    .line 2427
    const-string v0, "camera"

    const-string v1, "Switching to ZSL Camera Mode. Restart Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2429
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2438
    :goto_0
    return v0

    .line 2431
    :cond_0
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_1

    .line 2434
    const-string v0, "camera"

    const-string v1, "Switching to Normal Camera Mode. Restart Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2436
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto :goto_0

    .line 2438
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto :goto_0
.end method

.method private onSettingsBack()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 3137
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 3138
    .local v0, cm:Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v4}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3139
    invoke-virtual {v0, v4}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3140
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    .line 3141
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSettingScreen()V

    .line 3149
    :cond_0
    :goto_0
    return-void

    .line 3142
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3143
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3144
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    goto :goto_0

    .line 3145
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3146
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3147
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_exposure_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ModeManager;->overrideSettings([Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 1488
    :cond_0
    return-void
.end method

.method private prepareUIByPreviewSize()V
    .locals 3

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    invoke-static {}, Lcom/android/camera/Device;->defaultPictrueSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1469
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1470
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1471
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    .line 1473
    iget v1, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-eq v0, v1, :cond_0

    .line 1474
    iput v0, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    .line 1475
    iget v0, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Landroid/app/Activity;I)V

    .line 1478
    :cond_0
    return-void
.end method

.method private previewBecomeInvisible()V
    .locals 1

    .prologue
    .line 3083
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 3084
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 3085
    return-void
.end method

.method private previewBecomeVisible()V
    .locals 1

    .prologue
    .line 3088
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    .line 3089
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 3090
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 3091
    return-void
.end method

.method private qcomUpdateCameraParametersPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2444
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "luma-adaptation"

    iget v2, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2448
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_touchafaec_key"

    const v2, 0x7f0d008c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2451
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedTouchAfAec()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2452
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2459
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getTouchAfAec()Ljava/lang/String;

    move-result-object v0

    const-string v1, "touch-on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2469
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_pictureformat_key"

    const v2, 0x7f0d0058

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2472
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "picture-format"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_jpegquality_key"

    const v3, 0x7f0d0055

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2480
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2481
    if-nez v2, :cond_15

    .line 2482
    const-string v0, "camera"

    const-string v2, "error getPictureSize: size is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_selectablezoneaf_key"

    const v3, 0x7f0d0141

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2498
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;

    .line 2499
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2500
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setSelectableZoneAf(Ljava/lang/String;)V

    .line 2503
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_19

    .line 2504
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    if-eqz v0, :cond_18

    .line 2505
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "AE-Bracket"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAEBracket(Ljava/lang/String;)V

    .line 2506
    const-string v0, "persist.capture.burst.exposures"

    const-string v2, "0,0,0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2507
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture-burst-exposures = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2509
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "capture-burst-exposures"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    :cond_3
    if-eqz v0, :cond_4

    .line 2512
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2513
    if-eqz v0, :cond_4

    .line 2514
    const-string v2, ""

    .line 2515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2516
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num-snaps-per-shutter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "num-snaps-per-shutter"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2533
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1b

    const-string v0, "denoise-off"

    .line 2536
    :goto_4
    const-string v2, "denoise-on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "raw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2537
    const-string v0, "denoise-off"

    .line 2538
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0d014c

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2540
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setDenoise(Ljava/lang/String;)V

    .line 2544
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_redeyereduction_key"

    const v2, 0x7f0d014b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2547
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2548
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    if-eqz v0, :cond_1c

    const-string v0, "enable"

    .line 2550
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedRedeyeReductionModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2552
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRedeyeReductionMode(Ljava/lang/String;)V

    .line 2556
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_iso_key"

    const v2, 0x7f0d00ca

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2559
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2561
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V

    .line 2565
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d0084

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2568
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color effect value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2570
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2574
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_saturation_key"

    const v2, 0x7f0d00b2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2577
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    .line 2578
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saturation value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    if-ltz v0, :cond_b

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v1

    if-gt v0, v1, :cond_b

    .line 2580
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    .line 2584
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_contrast_key"

    const v2, 0x7f0d00b0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2587
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    .line 2588
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contrast value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v1

    if-gt v0, v1, :cond_c

    .line 2590
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    .line 2594
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_sharpness_key"

    const v2, 0x7f0d00ae

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2597
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    mul-int/2addr v0, v1

    .line 2599
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sharpness value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 2601
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    .line 2605
    :cond_d
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_autoexposure_key"

    const v2, 0x7f0d0126

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2608
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoExposure value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2610
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposure(Ljava/lang/String;)V

    .line 2614
    :cond_e
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_antibanding_key"

    const v2, 0x7f0d00e3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2617
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "antiBanding value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2619
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2622
    :cond_f
    invoke-direct {p0}, Lcom/android/camera/Camera;->getZSL()Ljava/lang/String;

    move-result-object v0

    .line 2623
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2625
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    .line 2626
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 2633
    :cond_10
    :goto_6
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1e

    const-string v0, "off"

    .line 2638
    :goto_7
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFaceDetectionModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2639
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFaceDetectionMode(Ljava/lang/String;)V

    .line 2640
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-nez v1, :cond_11

    .line 2641
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    .line 2642
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 2644
    :cond_11
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-ne v0, v5, :cond_12

    .line 2645
    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 2646
    iput-boolean v6, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    .line 2649
    :cond_12
    return-void

    .line 2455
    :cond_13
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2456
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    goto/16 :goto_0

    .line 2462
    :cond_14
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2463
    :catch_0
    move-exception v0

    .line 2464
    const-string v0, "camera"

    const-string v1, "Handled NULL pointer Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2485
    :cond_15
    const-string v3, "100"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0xc80

    if-ge v2, v3, :cond_1

    .line 2488
    :cond_16
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v2, :cond_17

    .line 2489
    const-string v0, "normal"

    .line 2491
    :cond_17
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    goto/16 :goto_2

    .line 2521
    :cond_18
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "HDR"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAEBracket(Ljava/lang/String;)V

    .line 2522
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2524
    :cond_19
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1a

    .line 2525
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 2527
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "Off"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAEBracket(Ljava/lang/String;)V

    .line 2528
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2533
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_denoise_key"

    const v3, 0x7f0d00c9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 2548
    :cond_1c
    const-string v0, "disable"

    goto/16 :goto_5

    .line 2627
    :cond_1d
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2628
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    .line 2629
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    goto/16 :goto_6

    .line 2633
    :cond_1e
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_facedetection_key"

    const v2, 0x7f0d0146

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3233
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3234
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3235
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3259
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3260
    iput v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 3261
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 3262
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 3265
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-eqz v0, :cond_1

    .line 3266
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 3269
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_2

    .line 3270
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 3271
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 3273
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 3274
    return-void
.end method

.method private restoreStatusAfterBurst()V
    .locals 1

    .prologue
    .line 1854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    .line 1859
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 1860
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 1861
    invoke-virtual {p0}, Lcom/android/camera/Camera;->cancelAutoFocus()V

    .line 1863
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1864
    return-void
.end method

.method private returnFromPanorama()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1528
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_mode_change_simple_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1530
    const-string v1, "mode_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1546
    :goto_0
    return-void

    .line 1533
    :cond_0
    const-string v1, "pref_camera_coloreffect_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1534
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingView;->popup(Z)V

    .line 1535
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1536
    const/16 v2, 0x13

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1537
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1538
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1539
    :cond_1
    const-string v1, "pref_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1540
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->openSettingActivity()V

    goto :goto_0

    .line 1542
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/SettingView;->setCurrentMode(Ljava/lang/String;)V

    .line 1543
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    .line 1544
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingView;->updateExitLayout(Z)V

    goto :goto_0
.end method

.method private saveStatusBeforeBurst()V
    .locals 1

    .prologue
    .line 1848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    .line 1849
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1850
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1851
    return-void
.end method

.method private sendDoCaptureMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 3407
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    .line 3408
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3409
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3411
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 2875
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2876
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersInitialize()V

    .line 2879
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2880
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersZoom()V

    .line 2883
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2884
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersPreference()V

    .line 2887
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2888
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2893
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 2894
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 2897
    iput v3, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 2918
    :cond_0
    :goto_0
    return-void

    .line 2899
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2900
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2901
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 2902
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_2

    .line 2903
    const-string v0, "camera"

    const-string v1, "Restarting Preview..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2905
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 2906
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2908
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2909
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    .line 2910
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 2911
    iput v3, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 2913
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1244
    iput p1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 1245
    packed-switch p1, :pswitch_data_0

    .line 1255
    :goto_0
    :pswitch_0
    return-void

    .line 1249
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->enableCameraControls(Z)V

    goto :goto_0

    .line 1252
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->enableCameraControls(Z)V

    goto :goto_0

    .line 1245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 2309
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    .line 2310
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    .line 2311
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    .line 2312
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2315
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 2316
    return-void
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 3026
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3027
    if-eqz v1, :cond_0

    .line 3028
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 3029
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 3031
    :cond_0
    return-void
.end method

.method private showHDRExit(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1460
    iget-object v3, p0, Lcom/android/camera/Camera;->mProgressBarCapture:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1462
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1463
    return-void

    :cond_0
    move v0, v2

    .line 1460
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1461
    goto :goto_1

    :cond_2
    move v2, v1

    .line 1462
    goto :goto_2
.end method

.method private showPostCaptureAlert()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3034
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 3037
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3038
    invoke-direct {p0}, Lcom/android/camera/Camera;->previewBecomeInvisible()V

    .line 3039
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingsStatusBar;->hide()V

    .line 3040
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3041
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3042
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3043
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3044
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3045
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3046
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3047
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3048
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3049
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f0c0083

    aput v2, v1, v0

    .line 3050
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 3051
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3050
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3054
    :cond_0
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 597
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2319
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 2321
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2325
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2327
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 2328
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2330
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-nez v0, :cond_2

    .line 2333
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2334
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2336
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 2339
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    .line 2340
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2342
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_3

    .line 2343
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2344
    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_5

    .line 2345
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 2349
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    .line 2350
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2351
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2354
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 2355
    const-string v0, "camera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 2358
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 2359
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 2360
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_4

    .line 2361
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2363
    :cond_4
    return-void

    .line 2347
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2366
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2367
    const-string v0, "camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2369
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2370
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 2372
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2373
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 2374
    :cond_1
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3167
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3216
    :goto_0
    return-void

    .line 3169
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    .line 3170
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_1

    .line 3171
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->exitHDRMode(Z)V

    .line 3173
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 3175
    const-string v0, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to switch camera. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 3177
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3178
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 3179
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateFlashButton()V

    .line 3180
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHasSwitchedToFront:Z

    if-nez v0, :cond_2

    .line 3181
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mHasSwitchedToFront:Z

    .line 3182
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 3185
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 3186
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    .line 3187
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 3188
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3189
    :cond_4
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 3190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3192
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3196
    :goto_1
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 3197
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    .line 3198
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v3

    .line 3199
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 3200
    :goto_2
    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3, v0}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 3201
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v3, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3202
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 3203
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initializeZoom()V

    .line 3204
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSettingScreen()V

    .line 3205
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 3206
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 3207
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3208
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    .line 3209
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 3210
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 3212
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    .line 3215
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 3199
    goto :goto_2

    .line 3193
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 3

    .prologue
    .line 3094
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3105
    :goto_0
    return-void

    .line 3095
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 3096
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 3097
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v0, :cond_3

    .line 3098
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3099
    const-string v1, "SecurePictureNum"

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSecureNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3102
    :cond_3
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 3103
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3104
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private takeAPhotoIfNeeded()V
    .locals 2

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    if-eqz v0, :cond_0

    .line 3390
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 3392
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCaptureAfterLaunch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    .line 3394
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    if-eqz v0, :cond_1

    .line 3396
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3397
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    .line 3398
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3399
    invoke-direct {p0}, Lcom/android/camera/Camera;->sendDoCaptureMessage()V

    .line 3400
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->lockScreenDelayed()V

    .line 3404
    :goto_0
    return-void

    .line 3402
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->autoFocus()V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 2385
    if-eqz v0, :cond_0

    .line 2386
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2387
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2394
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2395
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2396
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 2652
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 2653
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2656
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    .line 2657
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2660
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    .line 2661
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2664
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_3

    .line 2666
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2669
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "pref_camera_front_picturesize_key"

    :goto_0
    invoke-virtual {v2, v0, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2672
    if-nez v0, :cond_14

    .line 2673
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v0, :cond_13

    move v0, v1

    :goto_1
    invoke-static {p0, v2, v3, v0}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IZ)V

    .line 2688
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2691
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 2693
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v0}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)D

    move-result-wide v3

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZ)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2695
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2696
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v3

    .line 2697
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-eq v2, v3, :cond_7

    .line 2698
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2701
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2702
    iget v2, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-eq v2, v3, :cond_6

    .line 2703
    iput v3, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    .line 2704
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    if-nez v2, :cond_15

    .line 2705
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2710
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2711
    const-string v2, "camera"

    const-string v3, "Preview Size changed. Restart Preview"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2714
    :cond_7
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    .line 2715
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    .line 2716
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 2722
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSceneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2724
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2725
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2730
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2731
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2741
    :cond_8
    :goto_4
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2743
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2750
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;Z)I

    move-result v0

    .line 2751
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 2752
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 2753
    if-lt v0, v2, :cond_17

    if-gt v0, v1, :cond_17

    .line 2754
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2760
    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->supportSkinBeautify()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2761
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_skin_beautify_key"

    const v2, 0x7f0d0070

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2763
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2764
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "skinBeautification"

    const-string v2, "65537"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    :cond_9
    :goto_6
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2772
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_19

    :cond_a
    const-string v0, "off"

    .line 2775
    :goto_7
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2776
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2777
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2787
    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0d0077

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2790
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2792
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2801
    :cond_c
    :goto_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v6}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2802
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2807
    :goto_a
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    if-eqz v0, :cond_d

    .line 2808
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2809
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2815
    :cond_d
    :goto_b
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    if-eqz v0, :cond_e

    .line 2816
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/MotionFocusManager;->setEnabled(Z)V

    .line 2817
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_e

    .line 2818
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->update()V

    .line 2822
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/Camera;->canSetMirror()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2823
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isFrontMirror(Landroid/content/SharedPreferences;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setMirror(Landroid/hardware/Camera$Parameters;Z)V

    .line 2826
    :cond_f
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-eqz v0, :cond_10

    .line 2827
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isWatermarkOn(Landroid/content/SharedPreferences;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setWatermark(Landroid/hardware/Camera$Parameters;Z)V

    .line 2831
    :cond_10
    invoke-direct {p0}, Lcom/android/camera/Camera;->qcomUpdateCameraParametersPreference()V

    .line 2833
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    if-nez v0, :cond_11

    .line 2834
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(II)V

    .line 2836
    :cond_11
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setTransposePreviewSize(II)V

    .line 2837
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->setPreviewFormat(I)V

    .line 2838
    return-void

    .line 2669
    :cond_12
    const-string v0, "pref_camera_picturesize_key"

    goto/16 :goto_0

    .line 2673
    :cond_13
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    goto/16 :goto_1

    .line 2676
    :cond_14
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2677
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 2678
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v3, v4}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 2680
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2681
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 2682
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_4

    .line 2683
    const-string v0, "camera"

    const-string v2, "Picture Size changed. Restart Preview"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto/16 :goto_2

    .line 2707
    :cond_15
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mHasPendingSwitching:Z

    goto/16 :goto_3

    .line 2734
    :cond_16
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 2735
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 2736
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_4

    .line 2756
    :cond_17
    const-string v1, "camera"

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

    goto/16 :goto_5

    .line 2766
    :cond_18
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "skinBeautification"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2772
    :cond_19
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_flashmode_key"

    const v2, 0x7f0d006f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 2779
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2780
    if-nez v0, :cond_b

    .line 2781
    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto/16 :goto_8

    .line 2794
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2795
    if-nez v0, :cond_c

    .line 2796
    const-string v0, "auto"

    goto/16 :goto_9

    .line 2804
    :cond_1c
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2811
    :cond_1d
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_b
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2405
    :cond_0
    return-void
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2854
    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 2855
    move v0, p1

    .line 2856
    .local v0, tmp:I
    move p1, p2

    .line 2857
    move p2, v0

    .line 2860
    .end local v0           #tmp:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 2861
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/AbstractFocusManager;->setRenderSize(II)V

    .line 2863
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    .line 2865
    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 2866
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2867
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2869
    :cond_1
    return-void
.end method

.method private updatePreviewGrid(Z)V
    .locals 2

    .prologue
    .line 3345
    invoke-direct {p0}, Lcom/android/camera/Camera;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3346
    if-eqz p1, :cond_0

    .line 3347
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3351
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3355
    :goto_1
    return-void

    .line 3349
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3353
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateSceneModeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1493
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :goto_0
    return-void

    .line 1498
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 1934
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->cancel()V

    .line 1936
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 1937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1938
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1943
    :cond_0
    :goto_0
    return-void

    .line 1940
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 2137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 2138
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2140
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2142
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2147
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2149
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2151
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 1260
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v12, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v11

    .line 1309
    :goto_0
    return v0

    .line 1264
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 1265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    .line 1266
    iput-object v7, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1269
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v1, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 1270
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1271
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "picture-format"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1272
    .local v9, pictureFormat:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1273
    .local v8, loc:Landroid/location/Location;
    if-eqz v9, :cond_2

    const-string v0, "jpeg"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1275
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 1277
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v8}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1281
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_7

    const-string v0, "off"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1284
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_3

    .line 1285
    invoke-direct {p0, v11}, Lcom/android/camera/Camera;->showHDRExit(Z)V

    .line 1287
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_4

    .line 1289
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->noDraw()V

    .line 1291
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/Camera$JpegPictureCallback;

    invoke-direct {v4, p0, v8}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1293
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 1294
    .local v10, size:Landroid/hardware/Camera$Size;
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    if-eqz v0, :cond_8

    const-string v7, "_nightshot"

    .line 1295
    .local v7, suffix:Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    iget v4, v10, Landroid/hardware/Camera$Size;->width:I

    iget v5, v10, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/Camera$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIIILjava/lang/String;)V

    .line 1298
    iput-boolean v11, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 1299
    invoke-direct {p0, v12}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1300
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "num-snaps-per-shutter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I

    .line 1301
    iget v0, p0, Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I

    iput v0, p0, Lcom/android/camera/Camera;->mBurstRawCallbackNum:I

    .line 1302
    iput v11, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    .line 1303
    iput v11, p0, Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I

    .line 1305
    invoke-virtual {p0, v11}, Lcom/android/camera/Camera;->playSound(I)V

    .line 1306
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_6

    .line 1307
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 1309
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1281
    .end local v7           #suffix:Ljava/lang/String;
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1294
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    :cond_8
    const-string v7, "_HDR"

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "m"

    .prologue
    .line 660
    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 682
    :goto_0
    return v3

    .line 663
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 665
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 668
    .local v2, y:F
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v3, :cond_1

    .line 669
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 670
    .local v0, popup:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 674
    invoke-static {v1, v2, v0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 677
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 682
    .end local v0           #popup:Landroid/view/View;
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public findQRCode()V
    .locals 0

    .prologue
    .line 3377
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 3378
    return-void
.end method

.method isShutterButtonUsable()Z
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiCapture()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1314
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return v2

    .line 1320
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v3, :cond_2

    .line 1321
    const v3, 0x7f0d0180

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1325
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->isAudioCaptureRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1326
    const v3, 0x7f0d0181

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1331
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v3, p0}, Lcom/android/camera/CameraSettings;->isBurstShootingEnabled(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1335
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 1336
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 1337
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v3

    const-wide/32 v5, 0x2faf080

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    .line 1338
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough space or storage not ready. remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1342
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "picture-format"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    .local v1, pictureFormat:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1344
    .local v0, loc:Landroid/location/Location;
    if-eqz v1, :cond_5

    const-string v3, "jpeg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1346
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1349
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1351
    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v4, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 1352
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1354
    iput v2, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    .line 1355
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z

    .line 1356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 1358
    invoke-direct {p0}, Lcom/android/camera/Camera;->saveStatusBeforeBurst()V

    .line 1359
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1360
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 1362
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v5, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v6, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v7, Lcom/android/camera/Camera$JpegQuickPictureCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/camera/Camera$JpegQuickPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/Camera$JpegQuickPictureCallback;->reset(Landroid/location/Location;)Lcom/android/camera/Camera$JpegQuickPictureCallback;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1365
    iget-object v3, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v3, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2106
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2107
    packed-switch p1, :pswitch_data_0

    .line 2125
    :goto_0
    return-void

    .line 2109
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2110
    if-eqz p3, :cond_0

    .line 2111
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2112
    if-eqz v1, :cond_0

    .line 2113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2116
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/ActivityBase;->setResultEx(ILandroid/content/Intent;)V

    .line 2117
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2119
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2120
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2107
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 2185
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2187
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2189
    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onReviewCancelClicked(Landroid/view/View;)V

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2193
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v1, :cond_0

    .line 2197
    :cond_2
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2201
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 2202
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_4

    .line 2203
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapsePopupForSimpleMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2205
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_3

    .line 2206
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->exitHDR()V

    goto :goto_0

    .line 2212
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v1, :cond_0

    .line 2216
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2220
    :cond_4
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onBackPressed()V

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3

    .prologue
    .line 3153
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3164
    :cond_0
    :goto_0
    return-void

    .line 3155
    :cond_1
    const-string v0, "camera"

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

    .line 3158
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 3159
    iput p1, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3161
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3162
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 3163
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1409
    invoke-super {p0, p1}, Lcom/android/camera/ActivityWithAudioCapture;->onCreate(Landroid/os/Bundle;)V

    .line 1410
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1411
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/ComboPreferences;)V

    .line 1412
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 1413
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 1415
    invoke-static {v2}, Lcom/android/camera/ModeChangeManager;->setCurrentMode(I)V

    .line 1416
    new-instance v0, Lcom/android/camera/MotionFocusManager;

    iget-object v3, p0, Lcom/android/camera/Camera;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/android/camera/MotionFocusManager;-><init>(Landroid/content/Context;Lcom/android/camera/MotionFocusManager$MotionFocusListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    .line 1419
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1420
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1421
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setContentView(I)V

    .line 1422
    invoke-direct {p0}, Lcom/android/camera/Camera;->prepareUIByPreviewSize()V

    .line 1425
    invoke-direct {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    .line 1426
    invoke-direct {p0}, Lcom/android/camera/Camera;->isScanQRCodeIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    .line 1427
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->createCameraScreenNail(Z)V

    .line 1428
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setMode(Z)V

    .line 1429
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 1431
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateFlashButton()V

    .line 1433
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 1436
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1438
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 1439
    new-instance v0, Lcom/android/camera/RotateDialogController;

    const v1, 0x7f040028

    invoke-direct {v0, p0, v1}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 1440
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 1441
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeMiscControls()V

    .line 1442
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    .line 1443
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    .line 1444
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    .line 1445
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/Camera$5;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    .line 1452
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    .line 1453
    new-instance v0, Lcom/android/camera/ui/CameraSettingsStatusBar;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraSettingsStatusBar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    .line 1454
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initSettingButton()V

    .line 1456
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->enableCameraControls(Z)V

    .line 1457
    return-void

    :cond_0
    move v0, v2

    .line 1427
    goto/16 :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 6
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 3294
    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v2, :cond_1

    .line 3312
    :cond_0
    :goto_0
    return-void

    .line 3297
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3301
    .local v0, time:J
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastFaceDetectTime:J

    const-wide/16 v4, 0x3e8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3303
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    .line 3304
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 3306
    :cond_4
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3307
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3308
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    .line 3310
    :cond_5
    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastFaceDetectTime:J

    goto :goto_0
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2922
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 2923
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2924
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    const-string v3, "mode_none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    const-string v3, "mode_none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2926
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetAllStatus()V

    .line 2928
    :cond_2
    iput-object p2, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    .line 2929
    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2930
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    new-instance v3, Lcom/android/camera/Camera$6;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/SettingView;->runAfterDismiss(Ljava/lang/Runnable;)V

    .line 2944
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/SettingView;->updateExitView(Landroid/widget/TextView;)V

    .line 2945
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2961
    :cond_4
    :goto_1
    const-string v0, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2962
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mHandNight:Z

    .line 2963
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->launchHDRMode()V

    .line 2970
    :goto_2
    return-void

    .line 2937
    :cond_5
    const-string v0, "pref_settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2938
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    new-instance v3, Lcom/android/camera/Camera$7;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/SettingView;->runAfterDismiss(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2947
    :cond_6
    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2948
    invoke-static {v3}, Lcom/android/camera/ModeChangeManager;->setCurrentMode(I)V

    .line 2949
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    goto :goto_1

    .line 2950
    :cond_7
    const-string v0, "pref_settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2951
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->openSettingActivity()V

    goto :goto_1

    .line 2952
    :cond_8
    const-string v0, "pref_key_camera_referenceline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2953
    const v0, 0x7f0d016f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2954
    const v3, 0x7f0d016e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2955
    invoke-direct {p0, p2, v0, v3}, Lcom/android/camera/Camera;->doSettingSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    iget v0, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updatePreviewGrid(Z)V

    .line 2957
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_1

    :cond_9
    move v0, v2

    .line 2956
    goto :goto_3

    .line 2964
    :cond_a
    const-string v0, "pref_camera_hand_night_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2965
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mHandNight:Z

    .line 2966
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->launchHDRMode()V

    goto :goto_2

    .line 2968
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityWithAudioCapture;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2249
    sparse-switch p1, :sswitch_data_0

    .line 2272
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2251
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2252
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    goto :goto_0

    .line 2256
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2257
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    goto :goto_0

    .line 2262
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2265
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->handleVolumeKeyEvent(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2249
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "oldl"
    .parameter "oldt"
    .parameter "oldr"
    .parameter "oldb"

    .prologue
    .line 2843
    invoke-super/range {p0 .. p9}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 2844
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2845
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setRenderSize(II)V

    .line 2846
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AbstractFocusManager;->setRenderSize(II)V

    .line 2848
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2850
    :cond_0
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setPreviewLayoutSize(II)V

    .line 2851
    return-void
.end method

.method protected onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 1741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1742
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1743
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1744
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1745
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1746
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v0, v2, v4

    aput v1, v2, v6

    .line 1747
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1748
    aget v0, v2, v4

    add-float/2addr v0, v5

    .line 1749
    aget v1, v2, v6

    add-float/2addr v1, v5

    .line 1751
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ActivityBase;->onSingleTapUp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    .line 1753
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1755
    :cond_0
    return-void
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 3109
    if-eqz p1, :cond_0

    .line 3110
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    .line 3111
    const/4 v0, 0x1

    .line 3113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1947
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1950
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mProgressBarCapture:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1951
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->showHDRExit(Z)V

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1955
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 1957
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 1958
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    .line 1959
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1960
    iget-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1962
    :cond_1
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onPause()V

    .line 1965
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mSettingActivityShow:Z

    if-nez v0, :cond_2

    .line 1966
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 1967
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->resetSettings(Lcom/android/camera/ComboPreferences;)V

    .line 1971
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->waitCameraStartUpThread()V

    .line 1973
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 1974
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1976
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1977
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 1978
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 1979
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1980
    iput-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1982
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 1985
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    .line 1986
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1988
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_5

    .line 1989
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1990
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_5

    .line 1991
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->finish()V

    .line 1992
    iput-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 1993
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->finish()V

    .line 1994
    iput-object v3, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 1998
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_6

    .line 1999
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2000
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 2005
    :cond_6
    iput-object v3, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 2008
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2009
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2010
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2011
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2012
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2013
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2014
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2015
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2016
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2017
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2018
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 2019
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsRecreateCameraScreenNail:Z

    .line 2020
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2021
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->reset()V

    .line 2023
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->quit()V

    .line 2024
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    if-eqz v0, :cond_8

    .line 2025
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2027
    :cond_8
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3223
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1905
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onResume()V

    .line 1906
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    .line 1911
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 1912
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1913
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1916
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getLastThumbnail()V

    .line 1920
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_4

    .line 1921
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1925
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 1927
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1928
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    .line 1929
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    goto :goto_0

    .line 1923
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1635
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    invoke-direct {p0}, Lcom/android/camera/Camera;->previewBecomeVisible()V

    .line 1637
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1639
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 1645
    :goto_0
    return-void

    .line 1642
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ActivityBase;->setResultEx(ILandroid/content/Intent;)V

    .line 1643
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1649
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    .line 1650
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    .prologue
    .line 3118
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3134
    :goto_0
    return-void

    .line 3119
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 3120
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3123
    invoke-direct {p0}, Lcom/android/camera/Camera;->needRestart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3124
    const-string v0, "camera"

    const-string v1, "Restarting Preview... Camera Mode Changhed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 3126
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 3127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 3129
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    .line 3130
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    goto :goto_0

    .line 3132
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 1786
    invoke-direct {p0}, Lcom/android/camera/Camera;->isShutterButtonClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    .line 1787
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 1788
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 1789
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    .line 1791
    :cond_0
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 2
    .parameter "pressed"
    .parameter "fromWhat"

    .prologue
    const/16 v1, 0xf

    .line 1759
    if-nez p1, :cond_3

    .line 1760
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 1761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z

    .line 1782
    :cond_0
    :goto_0
    return-void

    .line 1764
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPendingCapture:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1765
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1766
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    .line 1770
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1775
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    :cond_4
    if-eqz p1, :cond_5

    .line 1778
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2}, Lcom/android/camera/FocusManager;->onShutterDown(I)V

    goto :goto_0

    .line 1780
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1838
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isBurstShootingEnable(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1844
    :goto_0
    return v4

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 1842
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mPendingCapture:Z

    goto :goto_0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2156
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 2181
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 2165
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2168
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z

    if-eqz v0, :cond_0

    .line 2172
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2175
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2179
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2180
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 3335
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1604
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onStop()V

    .line 1605
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1609
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 1614
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 1615
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 1617
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    .line 1620
    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 3227
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3228
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 3229
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1880
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1881
    if-eqz p1, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->register()V

    .line 1887
    :goto_0
    return-void

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    goto :goto_0
.end method

.method protected performShutterClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2277
    invoke-direct {p0}, Lcom/android/camera/Camera;->isShutterButtonClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2278
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    .line 2279
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    .line 2280
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    .line 2282
    :cond_0
    return-void
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->isAudioCaptureRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1384
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 1386
    :cond_1
    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 849
    .local v0, now:J
    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-ne v2, v6, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastAudioCaptureTime:J

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    const-wide/16 v4, 0x5dc

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 852
    .local v6, ready:Z
    :goto_0
    if-eqz v6, :cond_1

    .line 853
    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastAudioCaptureTime:J

    .line 855
    :cond_1
    return v6

    .line 849
    .end local v6           #ready:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected recreateCameraScreenNail()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1624
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsRecreateCameraScreenNail:Z

    if-nez v1, :cond_0

    .line 1625
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsRecreateCameraScreenNail:Z

    .line 1626
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1629
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected registerMotionFocusManager(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1891
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->registerMotionFocusManager(Z)V

    .line 1892
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    if-nez v0, :cond_0

    .line 1900
    :goto_0
    return-void

    .line 1895
    :cond_0
    if-eqz p1, :cond_1

    .line 1896
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->register()V

    goto :goto_0

    .line 1898
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    goto :goto_0
.end method

.method public requestAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3382
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 3383
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-ne v0, v1, :cond_0

    .line 3384
    invoke-virtual {p0}, Lcom/android/camera/Camera;->autoFocus()V

    .line 3386
    :cond_0
    return-void
.end method

.method protected resetAllStatus()V
    .locals 3

    .prologue
    .line 2978
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->resetAudioCapture()V

    .line 2979
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d0084

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2982
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2983
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2984
    const-string v1, "pref_camera_coloreffect_key"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2985
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2986
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 2989
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_1

    .line 2990
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2991
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->exitHDR()V

    .line 2993
    :cond_1
    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3367
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendDelayedCaptureMessage(II)V
    .locals 3
    .parameter "period"
    .parameter "times"

    .prologue
    const/16 v2, 0x17

    .line 3414
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3415
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3416
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3418
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected sendFadeoutZoomMsg()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 2286
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2289
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2290
    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 1376
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1377
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1379
    :cond_0
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 1582
    const/16 v5, 0x13

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    aput-object v6, v3, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    aput-object v6, v3, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v6, v3, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    aput-object v6, v3, v5

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    aput-object v6, v3, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    aput-object v6, v3, v5

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    aput-object v6, v3, v5

    const/16 v5, 0xf

    iget-object v6, p0, Lcom/android/camera/ActivityWithAudioCapture;->mCaptrueDelayView:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/16 v6, 0x10

    iget-object v5, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    const/16 v6, 0x11

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    const/16 v6, 0x12

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    .line 1587
    .local v3, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 1588
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1587
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1595
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v5, :cond_2

    .line 1596
    iget-object v5, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1599
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->setOrientationIndicator(IZ)V

    .line 1600
    return-void
.end method

.method setPreviewFrameLayoutAspectRatio()V
    .locals 4

    .prologue
    .line 3359
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3360
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 3361
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isFullScreen(II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->updatePreviewGrid(Z)V

    .line 3362
    return-void
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 630
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v3, v1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    .line 633
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 634
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 635
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 637
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v3, v4

    .line 638
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 639
    iget-object v1, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 640
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 641
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 642
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 638
    goto :goto_1
.end method

.method public stopFaceDetection(Z)V
    .locals 2
    .parameter "clearFaces"

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 652
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 653
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 654
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0
.end method

.method protected supportSkinBeautification()Z
    .locals 1

    .prologue
    .line 3316
    invoke-static {}, Lcom/android/camera/Device;->supportSkinBeautify()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected switchModeLayout()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 535
    return-void
.end method

.method protected tryRemoveCountDownMessage()V
    .locals 2

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1806
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->hideDelayNumber()V

    .line 1807
    return-void
.end method

.method protected updateHDRExitText()V
    .locals 2

    .prologue
    .line 2973
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d015e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2975
    return-void

    .line 2973
    :cond_0
    const v0, 0x7f0d015d

    goto :goto_0
.end method
