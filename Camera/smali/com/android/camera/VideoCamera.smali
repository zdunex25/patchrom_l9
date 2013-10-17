.class public Lcom/android/camera/VideoCamera;
.super Lcom/android/camera/ActivityBase;
.source "VideoCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/ModePicker$OnModeChangeListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoCamera$JpegPictureCallback;,
        Lcom/android/camera/VideoCamera$ZoomListener;,
        Lcom/android/camera/VideoCamera$ZoomChangeListener;,
        Lcom/android/camera/VideoCamera$PopupGestureListener;,
        Lcom/android/camera/VideoCamera$MyOrientationEventListener;,
        Lcom/android/camera/VideoCamera$MyBroadcastReceiver;,
        Lcom/android/camera/VideoCamera$MainHandler;
    }
.end annotation


# static fields
.field private static final TIME_LAPSE_VIDEO_QUALITY:[I

.field private static final VIDEO_QUALITY:[I


# instance fields
.field private mBackCameraId:I

.field private mBgLearningMessageFrame:Landroid/view/View;

.field private mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

.field private mCameraDisabled:Z

.field private mCameraId:I

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsDisplayResult:Z

.field private mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

.field private mIsVideoCaptureIntent:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mModePicker:Lcom/android/camera/ModePicker;

.field private mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationCompensationAtRecordStart:I

.field private mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPausing:Z

.field private mPopupGestureDetector:Landroid/view/GestureDetector;

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewPanel:Landroid/view/View;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mResetEffect:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewControl:Landroid/view/View;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Lcom/android/camera/ui/Rotatable;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSharePopup:Lcom/android/camera/ui/SharePopup;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSmoothZoomSupported:Z

.field private mSnapshotInProgress:Z

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpace:J

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetZoomValue:I

.field private mThumbnail:Lcom/android/camera/Thumbnail;

.field private mThumbnailView:Lcom/android/camera/ui/RotateImageView;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseLabel:Landroid/view/View;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mZoomControl:Lcom/android/camera/ui/ZoomControl;

.field private final mZoomListener:Lcom/android/camera/VideoCamera$ZoomListener;

.field private mZoomMax:I

.field private mZoomState:I

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/VideoCamera;->TIME_LAPSE_VIDEO_QUALITY:[I

    .line 123
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/VideoCamera;->VIDEO_QUALITY:[I

    return-void

    .line 115
    :array_0
    .array-data 0x4
        0xeet 0x3t 0x0t 0x0t
        0xedt 0x3t 0x0t 0x0t
        0xect 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xeft 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
    .end array-data

    .line 123
    :array_1
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 139
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    .line 143
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 150
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 181
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    .line 190
    iput v1, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 191
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 192
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 222
    iput v1, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 228
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 238
    new-instance v0, Lcom/android/camera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoCamera$MainHandler;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    .line 254
    iput v1, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    .line 262
    iput v1, p0, Lcom/android/camera/VideoCamera;->mZoomState:I

    .line 263
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSmoothZoomSupported:Z

    .line 268
    new-instance v0, Lcom/android/camera/VideoCamera$ZoomListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoCamera$ZoomListener;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomListener:Lcom/android/camera/VideoCamera$ZoomListener;

    .line 320
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2392
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoCamera;)Lcom/android/camera/EffectsRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showStorageHint()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/VideoCamera;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/VideoCamera;->mNumberOfCameras:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/IndicatorControlContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->onZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/VideoCamera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/VideoCamera;->mTargetZoomValue:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/VideoCamera;->mTargetZoomValue:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/VideoCamera;->mZoomState:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/VideoCamera;->mZoomState:I

    return p1
.end method

.method static synthetic access$3502(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/ZoomControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/VideoCamera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/camera/VideoCamera;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoCamera;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showTapToSnapshotToast()V

    return-void
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 2
    .parameter

    .prologue
    .line 1468
    const/4 v0, 0x0

    new-instance v1, Lcom/android/camera/VideoCamera$3;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$3;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-static {p1, v0, v1}, Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 1473
    const/4 v0, 0x2

    new-instance v1, Lcom/android/camera/VideoCamera$4;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$4;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-static {p1, v0, v1}, Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 1479
    iget v0, p0, Lcom/android/camera/VideoCamera;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1480
    const v0, 0x7f0b0013

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$5;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080037

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1490
    :cond_0
    return-void
.end method

.method private addVideoToMediaStore()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1416
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    .line 1417
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1418
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_size"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v3

    .line 1421
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 1422
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v3, :cond_0

    .line 1423
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 1425
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1430
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_1
    :goto_1
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1444
    return-void

    .line 1427
    :cond_2
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video duration <= 0 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1434
    :catch_0
    move-exception v0

    .line 1437
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1440
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 2198
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 2199
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 2200
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2201
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 2203
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2208
    :goto_0
    return-void

    .line 2206
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1156
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1162
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 946
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 948
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :goto_0
    return-void

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 954
    :cond_1
    iput v2, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 955
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 956
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 957
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 958
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 959
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 960
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2460
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2464
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2466
    :cond_0
    return-void

    .line 2461
    :catch_0
    move-exception v0

    .line 2462
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private collapseCameraControls()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x1

    .line 500
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2451
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2452
    const-string v0, ".mp4"

    .line 2454
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2444
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2445
    const-string v0, "video/mp4"

    .line 2447
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 345
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 346
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 349
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1448
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 1450
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1453
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1456
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 1457
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1460
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1463
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1142
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1144
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1145
    const/4 v0, -0x1

    .line 1146
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1150
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setResultEx(ILandroid/content/Intent;)V

    .line 1151
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1152
    return-void

    .line 1148
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 2097
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlContainer;->setEnabled(Z)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ModePicker;->setEnabled(Z)V

    .line 508
    :cond_1
    return-void
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .parameter

    .prologue
    .line 1494
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1495
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1496
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1500
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1501
    const-string v0, "pref_video_quality_key"

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1504
    :cond_1
    return-object p1
.end method

.method private finishRecorderAndCloseCamera()V
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 968
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 969
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 970
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    .line 978
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 979
    return-void

    .line 972
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 973
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_0

    .line 976
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 7
    .parameter

    .prologue
    .line 1392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1393
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1396
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1398
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1399
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "title"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1402
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1408
    if-eqz v0, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1410
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1412
    :cond_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 6

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 793
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 795
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    .line 813
    :goto_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 798
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 799
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 800
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 802
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 803
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 804
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_2

    .line 805
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 810
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 811
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    goto :goto_0
.end method

.method private getThumbnail()V
    .locals 4

    .prologue
    .line 1635
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1636
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1638
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1639
    new-instance v1, Lcom/android/camera/Thumbnail;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/camera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 1640
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1642
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    .line 1645
    .end local v0           #videoFrame:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 1822
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 1823
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private hideAlert()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1678
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1679
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1680
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1682
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 1683
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 1684
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1687
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1689
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_1

    .line 1690
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 1692
    :cond_1
    return-void

    .line 1682
    :array_0
    .array-data 0x4
        0x57t 0x0t 0xdt 0x7ft
        0x56t 0x0t 0xdt 0x7ft
        0x4ct 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private initThumbnailButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1756
    const v0, 0x7f0d0059

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 1757
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 1758
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1760
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_thumb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/Thumbnail;->loadFrom(Ljava/io/File;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 1761
    return-void
.end method

.method private initializeEffectsPreview()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1273
    const-string v0, "videocamera"

    const-string v2, "initializeEffectsPreview"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1277
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1281
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v2, v2, v3

    .line 1283
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 1284
    new-instance v3, Lcom/android/camera/EffectsRecorder;

    invoke-direct {v3, p0}, Lcom/android/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1288
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v3, v0}, Lcom/android/camera/EffectsRecorder;->setAppToLandscape(Z)V

    .line 1289
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1290
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v0, v2}, Lcom/android/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 1291
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0, v2}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1292
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0, p0}, Lcom/android/camera/EffectsRecorder;->setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V

    .line 1293
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0, p0}, Lcom/android/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1294
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0, p0}, Lcom/android/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1299
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1300
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    rem-int/lit16 v1, v0, 0x168

    .line 1302
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1304
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1306
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;II)V

    .line 1311
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1313
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1277
    goto :goto_1

    .line 1315
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 1320
    const-string v0, "videocamera"

    const-string v1, "initializeEffectsRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1323
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1326
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1327
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1328
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1329
    if-eqz v0, :cond_0

    .line 1331
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1333
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    :cond_0
    :goto_0
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1342
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1346
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_1

    .line 1347
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 1353
    :goto_2
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 1354
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1361
    :goto_3
    iget-wide v4, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v6, 0x2faf080

    sub-long/2addr v4, v6

    .line 1362
    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 1365
    :goto_4
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 1366
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 1367
    return-void

    .line 1334
    :catch_0
    move-exception v0

    .line 1336
    const-string v4, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1349
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_2

    .line 1356
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 1357
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-wide v0, v4

    goto :goto_4

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method private initializeIndicatorControl()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 511
    const v0, 0x7f0d0008

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/IndicatorControlContainer;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    .line 513
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->loadCameraPreferences()V

    .line 516
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "pref_camera_video_flashmode_key"

    aput-object v0, v4, v6

    const-string v0, "pref_camera_whitebalance_key"

    aput-object v0, v4, v7

    const-string v0, "pref_video_effect_key"

    aput-object v0, v4, v8

    const/4 v0, 0x3

    const-string v1, "pref_video_time_lapse_frame_interval_key"

    aput-object v1, v4, v0

    const-string v0, "pref_video_quality_key"

    aput-object v0, v4, v9

    .line 522
    .local v4, SETTING_KEYS:[Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/String;

    const-string v0, "pref_camera_recordlocation_key"

    aput-object v0, v5, v6

    .line 525
    .local v5, OTHER_SETTING_KEYS:[Ljava/lang/String;
    const v0, 0x7f02006b

    invoke-static {v0}, Lcom/android/camera/ui/CameraPicker;->setImageResourceId(I)V

    .line 526
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/IndicatorControlContainer;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/IndicatorControlContainer;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 529
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/VideoCamera$PopupGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoCamera$PopupGestureListener;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    .line 532
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "pref_video_quality_key"

    aput-object v2, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeRecorder()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x1

    .line 1166
    const-string v0, "videocamera"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1270
    :goto_0
    return-void

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 1171
    const-string v0, "videocamera"

    const-string v1, "Surface holder is null. Wait for surface changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1175
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1176
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1179
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1180
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 1181
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1182
    if-eqz v0, :cond_2

    .line 1184
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1186
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :cond_2
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1194
    :goto_2
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1197
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->unlock()V

    .line 1198
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1199
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v4, :cond_3

    .line 1200
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1202
    :cond_3
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v9}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1203
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1204
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1205
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_4

    .line 1206
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1209
    :cond_4
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 1210
    if-eqz v4, :cond_5

    .line 1211
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    double-to-float v4, v7

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1219
    :cond_5
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_7

    .line 1220
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1226
    :goto_3
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1229
    iget-wide v4, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v6, 0x2faf080

    sub-long/2addr v4, v6

    .line 1230
    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    cmp-long v2, v0, v4

    if-gez v2, :cond_9

    .line 1235
    :goto_4
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1248
    :goto_5
    const/4 v0, 0x0

    .line 1249
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 1250
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v0, v0, v1

    .line 1251
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v9, :cond_8

    .line 1252
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1257
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1258
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1261
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1268
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1269
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1187
    :catch_0
    move-exception v0

    .line 1189
    const-string v4, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1222
    :cond_7
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 1223
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    .line 1254
    :cond_8
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 1262
    :catch_1
    move-exception v0

    .line 1263
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1264
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1265
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1236
    :catch_2
    move-exception v0

    goto/16 :goto_5

    :cond_9
    move-wide v0, v4

    goto/16 :goto_4

    :cond_a
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2347
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2349
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2355
    :cond_0
    return-void
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 2283
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ZoomControl;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    .line 2285
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2286
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2296
    :goto_0
    return-void

    .line 2288
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mZoomMax:I

    .line 2291
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomMax(I)V

    .line 2292
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 2293
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSmoothZoomSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setSmoothZoomSupported(Z)V

    .line 2294
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    new-instance v1, Lcom/android/camera/VideoCamera$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoCamera$ZoomChangeListener;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;)V

    .line 2295
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mZoomListener:Lcom/android/camera/VideoCamera$ZoomListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
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

    .line 1876
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

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1138
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1752
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1753
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1745
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1746
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1747
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1748
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 488
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 491
    .local v0, settings:Lcom/android/camera/CameraSettings;
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 493
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 1775
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 1776
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 1777
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 1778
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 1779
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 1781
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1784
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 1785
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 1786
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1788
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1790
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1794
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 1795
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1797
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1798
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1801
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 1802
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1804
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1807
    if-eqz p2, :cond_5

    .line 1808
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1809
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 1810
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 1811
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1813
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1816
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onStopVideoRecording(Z)V
    .locals 1
    .parameter "valid"

    .prologue
    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 640
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 641
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 642
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_1

    .line 643
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    goto :goto_0

    .line 647
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_0
.end method

.method private onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 2325
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 2343
    :cond_0
    :goto_0
    return-void

    .line 2327
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_3

    .line 2328
    iget v0, p0, Lcom/android/camera/VideoCamera;->mTargetZoomValue:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/android/camera/VideoCamera;->mZoomState:I

    if-eqz v0, :cond_2

    .line 2329
    iput p1, p0, Lcom/android/camera/VideoCamera;->mTargetZoomValue:I

    .line 2330
    iget v0, p0, Lcom/android/camera/VideoCamera;->mZoomState:I

    if-ne v0, v1, :cond_0

    .line 2331
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/VideoCamera;->mZoomState:I

    .line 2332
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_0

    .line 2334
    :cond_2
    iget v0, p0, Lcom/android/camera/VideoCamera;->mZoomState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 2335
    iput p1, p0, Lcom/android/camera/VideoCamera;->mTargetZoomValue:I

    .line 2336
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 2337
    iput v1, p0, Lcom/android/camera/VideoCamera;->mZoomState:I

    goto :goto_0

    .line 2340
    :cond_3
    iput p1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    .line 2341
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1537
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1538
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1540
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1541
    return-void
.end method

.method private readVideoPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 718
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_video_quality_key"

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 726
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 727
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 728
    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 730
    if-lez v0, :cond_4

    move v0, v1

    .line 739
    :cond_0
    :goto_0
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 740
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 742
    mul-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 748
    :goto_1
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v5

    iput v5, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 749
    iget v5, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-eqz v5, :cond_6

    .line 750
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 752
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    .line 758
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v4, :cond_2

    .line 759
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "pref_video_quality_key"

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    .line 772
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_video_time_lapse_frame_interval_key"

    const v5, 0x7f0b0023

    invoke-virtual {p0, v5}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 775
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 777
    iget v3, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v3, :cond_7

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 779
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v1, :cond_3

    add-int/lit16 v0, v0, 0x3e8

    .line 780
    :cond_3
    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 781
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getDesiredPreviewSize()V

    .line 782
    return-void

    :cond_4
    move v0, v2

    .line 733
    goto :goto_0

    .line 744
    :cond_5
    iput v2, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 764
    :cond_6
    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 765
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v3, :cond_2

    .line 766
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "pref_video_quality_key"

    aput-object v5, v4, v2

    aput-object v7, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v1, v2

    .line 777
    goto :goto_3
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1382
    const-string v0, "videocamera"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1384
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 1385
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1386
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1388
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1389
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1371
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1373
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 1374
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1375
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1376
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1378
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1379
    return-void
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2431
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 2432
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_video_effect_key"

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2434
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2435
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->writeDefaultEffectToPrefs()V

    .line 2440
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 2439
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    .line 2440
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1741
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1742
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 820
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2081
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    iput v1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    .line 2083
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 2084
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_1

    .line 2088
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 2089
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 2091
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 2092
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2094
    :cond_1
    return-void
.end method

.method private setCameraParameters()V
    .locals 5

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1882
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1883
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1886
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    const v2, 0x7f0b003f

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1889
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1890
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1891
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1901
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0b0040

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1904
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1906
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1915
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1916
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1920
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 1921
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1922
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1925
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1929
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1930
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1931
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 1939
    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1941
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1942
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1943
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1945
    :cond_5
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video snapshot size is "

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

    .line 1949
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 1951
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1953
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1955
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1956
    return-void

    .line 1893
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1894
    if-nez v0, :cond_0

    .line 1895
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    goto/16 :goto_0

    .line 1908
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1909
    if-nez v0, :cond_1

    .line 1910
    const-string v0, "auto"

    goto/16 :goto_1
.end method

.method private setOrientationIndicator(I)V
    .locals 9
    .parameter "orientation"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 580
    const/16 v5, 0x9

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v5, v3, v8

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    aput-object v5, v3, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v6, v3, v5

    .line 583
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

    .line 584
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/camera/ui/Rotatable;->setOrientation(I)V

    .line 583
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    .line 590
    div-int/lit8 v5, p1, 0x5a

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_3

    .line 591
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 596
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    iget v6, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/RotateLayout;->setOrientation(I)V

    .line 597
    return-void

    .line 593
    :cond_3
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter

    .prologue
    .line 896
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;II)V

    .line 908
    :goto_0
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 906
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private showAlert()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1648
    const/4 v2, 0x0

    .line 1649
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_2

    .line 1650
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnail(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1656
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1659
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    .line 1660
    iget v4, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v0, :cond_3

    .line 1661
    :goto_1
    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    neg-int v3, v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1663
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1664
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1668
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1669
    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 1670
    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_4

    aget v4, v2, v0

    .line 1671
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1670
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1652
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1653
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1660
    goto :goto_1

    .line 1674
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 1675
    return-void

    .line 1669
    nop

    :array_0
    .array-data 0x4
        0x57t 0x0t 0xdt 0x7ft
        0x56t 0x0t 0xdt 0x7ft
        0x4ct 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private showRecordingUI(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1605
    if-eqz p1, :cond_3

    .line 1606
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSecondLevelIndicator()V

    .line 1607
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 1609
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1611
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1612
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_2

    .line 1613
    invoke-static {}, Lcom/android/camera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1614
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    check-cast v0, Lcom/android/camera/ui/IndicatorControlWheelContainer;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/IndicatorControlWheelContainer;->startTimeLapseAnimation(IJ)V

    .line 1632
    :cond_2
    :goto_0
    return-void

    .line 1621
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 1622
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 1623
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1624
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1625
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_2

    .line 1626
    invoke-static {}, Lcom/android/camera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1627
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    check-cast v0, Lcom/android/camera/ui/IndicatorControlWheelContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlWheelContainer;->stopTimeLapseAnimation()V

    goto :goto_0
.end method

.method private showSharePopup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2217
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 2218
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/SharePopup;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2219
    :cond_0
    new-instance v0, Lcom/android/camera/ui/SharePopup;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreviewPanel:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/SharePopup;-><init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/graphics/Bitmap;ILandroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    .line 2222
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1, v6, v6, v6}, Lcom/android/camera/ui/SharePopup;->showAtLocation(Landroid/view/View;III)V

    .line 2223
    return-void
.end method

.method private showStorageHint()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 691
    .line 692
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 693
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    :goto_0
    if-eqz v0, :cond_5

    .line 703
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_4

    .line 704
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 708
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->show()V

    .line 713
    :cond_0
    :goto_2
    return-void

    .line 694
    :cond_1
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 695
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 696
    :cond_2
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/16 v4, -0x3

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 697
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 698
    :cond_3
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v4, 0x2faf080

    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    .line 699
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 706
    :cond_4
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 709
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 711
    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private showTapToSnapshotToast()V
    .locals 3

    .prologue
    .line 2469
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0b0077

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2472
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2473
    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2474
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2475
    return-void
.end method

.method private showTimeLapseUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2214
    :cond_0
    return-void

    .line 2212
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 600
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 911
    const-string v0, "videocamera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 914
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-ne v0, v3, :cond_1

    .line 915
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 916
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 919
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 922
    :cond_1
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    .line 923
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    .line 924
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 925
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 927
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 928
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :goto_0
    iput v2, p0, Lcom/android/camera/VideoCamera;->mZoomState:I

    .line 942
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 943
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 933
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 936
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeEffectsPreview()V

    .line 937
    const-string v0, "videocamera"

    const-string v1, "effectsStartPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startPreview()V

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1549
    const-string v0, "videocamera"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 1552
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1553
    const-string v0, "videocamera"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :goto_0
    return-void

    .line 1557
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1558
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1559
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeEffectsRecording()V

    .line 1560
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_2

    .line 1561
    const-string v0, "videocamera"

    const-string v1, "Fail to initialize effect recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1565
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeRecorder()V

    .line 1566
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_2

    .line 1567
    const-string v0, "videocamera"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1572
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseAudioPlayback()V

    .line 1574
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1576
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1596
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    .line 1598
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 1600
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    .line 1601
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOn()V

    goto :goto_0

    .line 1577
    :catch_0
    move-exception v0

    .line 1578
    const-string v1, "videocamera"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseEffectsRecorder()V

    goto :goto_0

    .line 1584
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1585
    :catch_1
    move-exception v0

    .line 1586
    const-string v1, "videocamera"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1587
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1589
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    goto :goto_0
.end method

.method private stopVideoRecording()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1695
    const-string v0, "videocamera"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1700
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1705
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1712
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1713
    const-string v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1720
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1721
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 1722
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_1

    .line 1723
    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1727
    :cond_1
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(I)V

    .line 1728
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1729
    if-eqz v0, :cond_2

    .line 1730
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()V

    .line 1734
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1735
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1737
    :cond_3
    return-void

    .line 1707
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1708
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1709
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    .line 1710
    goto :goto_0

    .line 1715
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 1716
    :goto_2
    const-string v4, "videocamera"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1717
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    goto :goto_1

    .line 1715
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 16
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 2409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2410
    .local v3, dateTaken:J
    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 2411
    .local v2, title:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v6

    .line 2412
    .local v6, orientation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 2413
    .local v12, s:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget v8, v12, Landroid/hardware/Camera$Size;->width:I

    iget v9, v12, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v13

    .line 2415
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_1

    .line 2417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    int-to-double v14, v1

    div-double/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v11, v7

    .line 2419
    .local v11, ratio:I
    invoke-static {v11}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    .line 2420
    .local v10, inSampleSize:I
    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v13}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 2421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v1, :cond_0

    .line 2422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v5}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2425
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/VideoCamera;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    .line 2426
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2428
    .end local v10           #inSampleSize:I
    .end local v11           #ratio:I
    :cond_1
    return-void
.end method

.method private switchToOtherMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 1959
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1962
    :goto_0
    return v0

    .line 1960
    :cond_0
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 1961
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1962
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAndShowStorageHint()V
    .locals 2

    .prologue
    .line 686
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 687
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showStorageHint()V

    .line 688
    return-void
.end method

.method private updateEffectSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2157
    iget v2, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 2158
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 2159
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 2160
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 2162
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-ne v4, v2, :cond_2

    .line 2163
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-nez v4, :cond_1

    .line 2192
    :cond_0
    :goto_0
    return v0

    .line 2164
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2166
    :cond_2
    const-string v0, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New effect selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_video_effect_key"

    const-string v6, "none"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-nez v0, :cond_3

    .line 2171
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->stopPreview()V

    move v0, v1

    .line 2172
    goto :goto_0

    .line 2174
    :cond_3
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2177
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2178
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2180
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2181
    invoke-virtual {p0, v0, v7}, Lcom/android/camera/VideoCamera;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 2182
    goto :goto_0

    .line 2184
    :cond_4
    if-nez v2, :cond_5

    .line 2186
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2187
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->checkQualityAndStartPreview()V

    :goto_1
    move v0, v1

    .line 2192
    goto :goto_0

    .line 2190
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateRecordingTime()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1827
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 1873
    :goto_0
    return-void

    .line 1830
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1831
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long v2, v0, v2

    .line 1835
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    move v5, v4

    .line 1839
    :goto_1
    if-eqz v5, :cond_5

    .line 1840
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x3e7

    add-long/2addr v0, v7

    .line 1845
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v7, :cond_3

    .line 1846
    invoke-static {v0, v1, v6}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 1847
    const-wide/16 v0, 0x3e8

    .line 1856
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1858
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v4, v5, :cond_1

    .line 1861
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 1863
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_4

    const v4, 0x7f090001

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1867
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1870
    :cond_1
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 1871
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 1835
    goto :goto_1

    .line 1852
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 1853
    iget v0, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    .line 1863
    :cond_4
    const/high16 v4, 0x7f09

    goto :goto_4

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method private updateThumbnailButton()V
    .locals 2

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/camera/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 1767
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    .line 1768
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1772
    :goto_0
    return-void

    .line 1770
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 3

    .prologue
    .line 785
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 786
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    const v2, 0x7f0b0069

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 788
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 789
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2229
    const/4 v0, 0x1

    .line 2232
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected doOnResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 824
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 827
    iput v1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    .line 829
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 833
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->enable()V

    .line 834
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-nez v0, :cond_3

    .line 835
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 840
    :cond_2
    :try_start_0
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {p0, v0}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 841
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 842
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 843
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 854
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeZoom()V

    .line 856
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 859
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 861
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 866
    new-instance v1, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 867
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 868
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 870
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$2;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 877
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 881
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_4

    .line 882
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateThumbnailButton()V

    .line 883
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    .line 886
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_5

    .line 887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    .line 888
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 891
    :cond_5
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    goto/16 :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    const v0, 0x7f0b0001

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 847
    :catch_1
    move-exception v0

    .line 848
    const v0, 0x7f0b0002

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1975
    packed-switch p1, :pswitch_data_0

    .line 1990
    const-string v0, "videocamera"

    const-string v1, "Unknown activity result sent to Camera!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :goto_0
    return-void

    .line 1977
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1980
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 1981
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    goto :goto_0

    .line 1984
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 1985
    const-string v0, "videocamera"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    goto :goto_0

    .line 1975
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1026
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1027
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2037
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->writeDefaultEffectToPrefs()V

    .line 2039
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 2041
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2042
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 2060
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2061
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const v8, 0x7f0d0058

    const/4 v7, 0x0

    .line 354
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Util;->initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 358
    new-instance v4, Lcom/android/camera/ComboPreferences;

    invoke-direct {v4, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 359
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v4}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 360
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    .line 363
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v1

    .line 364
    .local v1, intentCameraId:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 365
    iput v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    .line 368
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {v4, p0, v5}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 369
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v4}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 371
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mNumberOfCameras:I

    .line 372
    const v4, 0x7f0b0069

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 375
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "reset_effect"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    .line 378
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "background_uri_gallery"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetEffect()Z

    .line 385
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/camera/VideoCamera$1;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoCamera$1;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 398
    .local v3, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 400
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->enterLightsOutMode(Landroid/view/Window;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 404
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->requestWindowFeature(I)Z

    .line 405
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 406
    const v4, 0x7f04001b

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->setContentView(I)V

    .line 407
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_2

    .line 408
    const v4, 0x7f0d0056

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/Rotatable;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 409
    const v4, 0x7f0d004c

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/Rotatable;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/Rotatable;

    .line 410
    invoke-virtual {p0, v8}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/Rotatable;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 411
    invoke-virtual {p0, v8}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 419
    :goto_0
    new-instance v4, Lcom/android/camera/RotateDialogController;

    const v5, 0x7f040016

    invoke-direct {v4, p0, v5}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 421
    const v4, 0x7f0d002e

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mPreviewPanel:Landroid/view/View;

    .line 422
    const v4, 0x7f0d0045

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/PreviewFrameLayout;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 423
    const v4, 0x7f0d004b

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    .line 428
    const v4, 0x7f0d0046

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    .line 429
    .local v2, preview:Landroid/view/SurfaceView;
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 430
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 431
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 433
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.quickCapture"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    .line 435
    const v4, 0x7f0d0007

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ShutterButton;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 436
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v5, 0x7f020023

    invoke-virtual {v4, v5}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 437
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 438
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 446
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, v7}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 450
    :cond_1
    const v4, 0x7f0d0071

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 451
    const v4, 0x7f0d0049

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 452
    new-instance v4, Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-direct {v4, p0, p0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;-><init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    .line 453
    const v4, 0x7f0d0072

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    .line 456
    const v4, 0x7f0d004a

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 458
    const v4, 0x7f0d0003

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    .line 459
    const v4, 0x7f0d0002

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    .line 461
    new-instance v4, Lcom/android/camera/LocationManager;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 465
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 466
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-eqz v4, :cond_3

    .line 467
    const v4, 0x7f0b0001

    invoke-static {p0, v4}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_1
    return-void

    .line 413
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    .end local v2           #preview:Landroid/view/SurfaceView;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initThumbnailButton()V

    .line 414
    const v4, 0x7f0d0022

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ModePicker;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    .line 415
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v4, v7}, Lcom/android/camera/ModePicker;->setVisibility(I)V

    .line 416
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v4, p0}, Lcom/android/camera/ModePicker;->setOnModeChangeListener(Lcom/android/camera/ModePicker$OnModeChangeListener;)V

    goto/16 :goto_0

    .line 469
    .restart local v0       #holder:Landroid/view/SurfaceHolder;
    .restart local v2       #preview:Landroid/view/SurfaceView;
    :cond_3
    :try_start_1
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    if-eqz v4, :cond_4

    .line 470
    const v4, 0x7f0b0002

    invoke-static {p0, v4}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 473
    :catch_0
    move-exception v4

    .line 477
    :cond_4
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 478
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideoSnapshot()V

    .line 479
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 481
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mBackCameraId:I

    .line 482
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mFrontCameraId:I

    .line 484
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeIndicatorControl()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1125
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1127
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1129
    const/4 v0, 0x0

    .line 1133
    :goto_0
    return v0

    .line 1131
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 1133
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2048
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    invoke-direct {p0, p2}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2051
    :cond_0
    instance-of v0, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v0, :cond_1

    .line 2052
    const-string v0, "videocamera"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    monitor-exit p0

    return-void

    .line 2055
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during recording!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2048
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 3
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1997
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 2000
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2001
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->checkQualityAndStartPreview()V

    .line 2031
    :cond_0
    :goto_0
    return-void

    .line 2002
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 2006
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_2

    .line 2007
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()V

    .line 2008
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 2009
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-nez v0, :cond_2

    .line 2010
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    .line 2016
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    goto :goto_0

    .line 2013
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_1

    .line 2017
    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    .line 2019
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 2020
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2021
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2023
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2027
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2021
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1509
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1512
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1513
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 1515
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1519
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1520
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1522
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 1525
    :cond_2
    const v0, 0x7f0b0058

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1035
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v1, :cond_0

    .line 1057
    :goto_0
    return v0

    .line 1039
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1057
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1041
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1047
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1048
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1053
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1039
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1062
    packed-switch p1, :pswitch_data_0

    .line 1067
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1064
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1065
    const/4 v0, 0x1

    goto :goto_0

    .line 1062
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 1966
    if-eq p1, v0, :cond_0

    .line 1967
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->switchToOtherMode(I)Z

    move-result v0

    .line 1969
    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 983
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 986
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 990
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->finishRecorderAndCloseCamera()V

    .line 991
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 993
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/SharePopup;->dismiss()V

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 996
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 997
    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 999
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetScreenOn()V

    .line 1001
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1002
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "last_thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Thumbnail;->saveTo(Ljava/io/File;)V

    .line 1005
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_4

    .line 1006
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 1007
    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 1010
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->disable()V

    .line 1011
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1013
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1014
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 654
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    .line 2067
    new-instance v4, Lcom/android/camera/VideoCamera$6;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoCamera$6;-><init>(Lcom/android/camera/VideoCamera;)V

    .line 2072
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b000d

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2077
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 636
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 629
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 630
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPlayVideoActivity()V

    .line 625
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    .line 619
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlert()V

    .line 620
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 4

    .prologue
    .line 2102
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 2154
    :goto_0
    return-void

    .line 2103
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v1

    .line 2106
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 2153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2110
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2113
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateEffectSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 2116
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 2117
    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    if-eq v2, v0, :cond_4

    .line 2122
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 2124
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2131
    :goto_1
    const-string v2, "background_uri_gallery"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2132
    const-string v2, "reset_effect"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2133
    invoke-static {p0, v0}, Lcom/android/camera/MenuHelper;->gotoVideoMode(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2134
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 2153
    :goto_2
    monitor-exit v1

    goto :goto_0

    .line 2126
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 2136
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 2137
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 2139
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2140
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v2, v3, :cond_5

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-eq v0, v2, :cond_7

    .line 2142
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2143
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2147
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2148
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    goto :goto_2

    .line 2145
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    goto :goto_3

    .line 2150
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseCameraControls()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 662
    .local v0, stop:Z
    if-eqz v0, :cond_3

    .line 663
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 667
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 672
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 673
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 665
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 681
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showSharePopup()V

    .line 614
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 2368
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2369
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0b0078

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2389
    :cond_0
    :goto_0
    return v0

    .line 2374
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    .line 2381
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2382
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2383
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2385
    const-string v2, "videocamera"

    const-string v3, "Video snapshot start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v3, Lcom/android/camera/VideoCamera$JpegPictureCallback;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/VideoCamera$JpegPictureCallback;-><init>(Lcom/android/camera/VideoCamera;Landroid/location/Location;)V

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2387
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 2388
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    move v0, v1

    .line 2389
    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1018
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 1019
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1020
    :cond_0
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2358
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2359
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewFrameLayout;->showBorder(Z)V

    .line 2360
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/IndicatorControlContainer;->enableZoom(Z)V

    .line 2361
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2363
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 2360
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2361
    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1072
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1073
    const-string v0, "videocamera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged. w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1080
    iput p3, p0, Lcom/android/camera/VideoCamera;->mSurfaceWidth:I

    .line 1081
    iput p4, p0, Lcom/android/camera/VideoCamera;->mSurfaceHeight:I

    .line 1083
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1103
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1105
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1107
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1108
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1113
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1117
    return-void
.end method
