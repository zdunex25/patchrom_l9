.class public Lcom/android/camera/VideoModule;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoModule$SurfaceViewCallback;,
        Lcom/android/camera/VideoModule$VideoNamer;,
        Lcom/android/camera/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/VideoModule$ZoomChangeListener;,
        Lcom/android/camera/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/VideoModule$MainHandler;,
        Lcom/android/camera/VideoModule$CameraOpenThread;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBgLearningMessageFrame:Landroid/view/View;

.field private mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

.field private mBlocker:Landroid/view/View;

.field private mCameraDisplayOrientation:I

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

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVideoCaptureIntent:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mMenu:Landroid/view/View;

.field private mOnResumeTime:J

.field private mOnScreenIndicators:Landroid/view/View;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationCompensationAtRecordStart:I

.field private mOrientationResetNeeded:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field private mPendingSwitchCameraId:I

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mResetEffect:Z

.field private mRestoreFlash:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewControl:Landroid/view/View;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

.field private mRootView:Landroid/view/View;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSnapshotInProgress:Z

.field private mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceViewReady:Z

.field private mSwitchingCamera:Z

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseLabel:Landroid/view/View;

.field private mVideoControl:Lcom/android/camera/VideoController;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 132
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 163
    iput v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 164
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 165
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 194
    iput v1, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 200
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 227
    new-instance v0, Lcom/android/camera/VideoModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 233
    iput v1, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    .line 334
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2730
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/PreviewSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/VideoModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoModule;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VideoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method private addVideoToMediaStore()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1450
    const/4 v2, 0x0

    .line 1451
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_3

    .line 1452
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_size"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v0, v4

    .line 1455
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 1456
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_0

    .line 1457
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 1459
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1464
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule$VideoNamer;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1465
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 1471
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1473
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1474
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1477
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1479
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_VIDEO"

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1492
    :goto_1
    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1493
    return v0

    .line 1461
    :cond_2
    const-string v4, "CAM_VideoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video duration <= 0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1481
    :catch_0
    move-exception v0

    .line 1484
    :try_start_1
    const-string v1, "CAM_VideoModule"

    const-string v2, "failed to add video to media store"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1489
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1490
    goto :goto_1

    .line 1489
    :catchall_0
    move-exception v0

    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 2394
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2395
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2396
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2397
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 2399
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2402
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2403
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1147
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1153
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    if-eqz v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule$VideoNamer;->finish()V

    .line 2649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    .line 2651
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->closeCamera(Z)V

    .line 970
    return-void
.end method

.method private closeCamera(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 984
    const-string v0, "CAM_VideoModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 986
    const-string v0, "CAM_VideoModule"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :goto_0
    return-void

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectCamera()V

    .line 995
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeEffects()V

    .line 996
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 997
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 998
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 999
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1000
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1001
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeEffects()V
    .locals 2

    .prologue
    .line 955
    const-string v0, "CAM_VideoModule"

    const-string v1, "Closing effects"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 957
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_0

    .line 958
    const-string v0, "CAM_VideoModule"

    const-string v1, "Effects are already closed. Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :goto_0
    return-void

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2629
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2633
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2635
    :cond_0
    return-void

    .line 2630
    :catch_0
    move-exception v0

    .line 2631
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2620
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2621
    const-string v0, ".mp4"

    .line 2623
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
    .line 2613
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2614
    const-string v0, "video/mp4"

    .line 2616
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 4
    .parameter "dateTaken"

    .prologue
    .line 350
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 351
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0d004b

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1510
    const-string v0, "CAM_VideoModule"

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

    .line 1511
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1513
    const-string v0, "CAM_VideoModule"

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

    .line 1515
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1133
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1135
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1136
    const/4 v0, -0x1

    .line 1137
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1141
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1142
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1143
    return-void

    .line 1139
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 2246
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 550
    :cond_1
    return-void

    .line 545
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .parameter "screen"

    .prologue
    .line 1519
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1520
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1521
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1525
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1526
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1529
    :cond_1
    return-object p1
.end method

.method private generateVideoFilename(I)V
    .locals 9
    .parameter

    .prologue
    .line 1423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1424
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1427
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1428
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

    .line 1429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1430
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1431
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1434
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1440
    if-eqz v0, :cond_0

    .line 1441
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1442
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoModule$VideoNamer;->prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 1445
    iput-object v6, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1446
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 800
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    if-eqz v0, :cond_4

    .line 801
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 803
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .line 825
    :goto_0
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 806
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 807
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 808
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 810
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 811
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 812
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_2

    .line 813
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 816
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 818
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 819
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 822
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 823
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0
.end method

.method private static getLowVideoQuality()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 564
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x4

    .line 567
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 359
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 364
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 1865
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 1866
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2127
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    .line 2128
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f10007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    .line 2129
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$3;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2137
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    .line 2138
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    .line 2139
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 2144
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 2145
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 2146
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    .line 2148
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2150
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$4;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2156
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$5;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2163
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v1, Lcom/android/camera/VideoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$6;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2174
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2178
    :cond_0
    return-void
.end method

.method private initializeEffectsPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1303
    const-string v1, "CAM_VideoModule"

    const-string v2, "initializeEffectsPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1307
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 1310
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v1, v1, v2

    .line 1312
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 1313
    new-instance v2, Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/android/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1317
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 1318
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCamera(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 1319
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v1}, Lcom/android/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 1320
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1321
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V

    .line 1322
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1323
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1330
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1331
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 1333
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1335
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientationCompensationAtRecordStart:I

    .line 1337
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1338
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1341
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1345
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 1350
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeEffectsRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1353
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1356
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1357
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1358
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1359
    if-eqz v0, :cond_0

    .line 1361
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1363
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :cond_0
    :goto_0
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1372
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1376
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_1

    .line 1377
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 1383
    :goto_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 1384
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1391
    :goto_3
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x2faf080

    sub-long/2addr v4, v6

    .line 1392
    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 1395
    :goto_4
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 1396
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 1397
    return-void

    .line 1364
    :catch_0
    move-exception v0

    .line 1366
    const-string v4, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1379
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_2

    .line 1386
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1387
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-wide v0, v4

    goto :goto_4

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2182
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 2183
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    .line 2185
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 2186
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2187
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2188
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 2196
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2200
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    .line 2201
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 2202
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    .line 2205
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 2207
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    .line 2208
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    .line 2209
    return-void
.end method

.method private initializeOverlay()V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 392
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 394
    new-instance v0, Lcom/android/camera/VideoController;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/VideoController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoModule;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    .line 395
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    invoke-virtual {v0, p0}, Lcom/android/camera/VideoController;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 400
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_2

    .line 404
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraModule;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->clearTouchReceivers()V

    .line 408
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 409
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 411
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_3

    .line 413
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_4

    .line 416
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 419
    :cond_4
    return-void
.end method

.method private initializeRecorder()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1181
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 1191
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z

    if-eqz v0, :cond_0

    .line 1194
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1195
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1198
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1199
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 1200
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1201
    if-eqz v0, :cond_3

    .line 1203
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "rw"

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1205
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :cond_3
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1213
    :goto_2
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1215
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setupMediaRecorderPreviewDisplay()V

    .line 1217
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, v5, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1218
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v6, v6, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1219
    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v5, :cond_4

    .line 1220
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1222
    :cond_4
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v9}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1223
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1224
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v6, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1225
    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v5, :cond_5

    .line 1226
    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 1227
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v7, v5, v6}, Lcom/android/camera/VideoModule;->setCaptureRate(Landroid/media/MediaRecorder;D)V

    .line 1230
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setRecordLocation()V

    .line 1235
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_6

    .line 1236
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1243
    :goto_3
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v5

    const-wide/32 v7, 0x2faf080

    sub-long/2addr v5, v7

    .line 1244
    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    cmp-long v2, v0, v5

    if-gez v2, :cond_9

    .line 1249
    :goto_4
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1263
    :goto_5
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1264
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1265
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v9, :cond_7

    .line 1266
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1271
    :goto_6
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1272
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientationCompensationAtRecordStart:I

    .line 1275
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1282
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1283
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1206
    :catch_0
    move-exception v0

    .line 1208
    const-string v5, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1238
    :cond_6
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v5}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1239
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    .line 1268
    :cond_7
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 1276
    :catch_1
    move-exception v0

    .line 1277
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1278
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1279
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1250
    :catch_2
    move-exception v0

    goto :goto_5

    :cond_8
    move v0, v4

    goto :goto_6

    :cond_9
    move-wide v0, v5

    goto/16 :goto_4

    :cond_a
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private initializeSurfaceView()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    .line 370
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/android/camera/VideoModule$SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$SurfaceViewCallback;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 375
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 388
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_3

    .line 378
    new-instance v0, Lcom/android/camera/VideoModule$SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$SurfaceViewCallback;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    .line 379
    new-instance v0, Lcom/android/camera/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$1;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method private initializeVideoControl()V
    .locals 4

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->loadCameraPreferences()V

    .line 554
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 555
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_video_quality_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/camera/VideoModule;->getLowVideoQuality()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoController;->overrideSettings([Ljava/lang/String;)V

    .line 560
    :cond_0
    return-void
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 2457
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2459
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2467
    :cond_0
    :goto_0
    return-void

    .line 2465
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2453
    :goto_0
    return-void

    .line 2445
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mZoomMax:I

    .line 2446
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    .line 2449
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 2450
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 2451
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 2452
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/VideoModule$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$ZoomChangeListener;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

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

    .line 1919
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
    .line 1128
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1129
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1814
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1815
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1807
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1808
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1809
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1810
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 5

    .prologue
    .line 518
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 521
    .local v0, settings:Lcom/android/camera/CameraSettings;
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 523
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 1818
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 1819
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 1820
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 1821
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 1822
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 1824
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1827
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 1828
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 1829
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1831
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1833
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1837
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 1838
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1840
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1841
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1844
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 1845
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1847
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1850
    if-eqz p2, :cond_5

    .line 1851
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1852
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 1853
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 1854
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1856
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1859
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onStopVideoRecording()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 678
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 679
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    .line 680
    .local v0, recordFail:Z
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_3

    .line 681
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 682
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v2, :cond_2

    .line 683
    if-nez v0, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 699
    :cond_0
    :goto_1
    return-void

    .line 683
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 684
    :cond_2
    if-nez v0, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showAlert()V

    goto :goto_1

    .line 688
    :cond_3
    if-nez v0, :cond_0

    .line 690
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    iget v2, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_1
.end method

.method private openCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 258
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    goto :goto_0

    .line 261
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 262
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1565
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1567
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1568
    return-void
.end method

.method private readVideoPreferences()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 735
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_video_quality_key"

    invoke-virtual {v9, v10, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 740
    .local v7, videoQuality:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 743
    .local v5, quality:I
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 744
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 745
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 747
    .local v1, extraVideoQuality:I
    if-lez v1, :cond_5

    .line 748
    const/4 v5, 0x1

    .line 756
    .end local v1           #extraVideoQuality:I
    :cond_0
    :goto_0
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 757
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 759
    .local v6, seconds:I
    mul-int/lit16 v9, v6, 0x3e8

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 765
    .end local v6           #seconds:I
    :goto_1
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 766
    iget v9, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-eqz v9, :cond_7

    .line 767
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 769
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v9, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 770
    .local v4, profile:Landroid/media/CamcorderProfile;
    iget v9, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v10, 0x1e0

    if-le v9, v10, :cond_1

    .line 771
    invoke-static {}, Lcom/android/camera/VideoModule;->getLowVideoQuality()I

    move-result v5

    .line 777
    .end local v4           #profile:Landroid/media/CamcorderProfile;
    :cond_1
    :goto_2
    sget-boolean v9, Lcom/android/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    if-eqz v9, :cond_3

    .line 778
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_video_time_lapse_frame_interval_key"

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0d001e

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, frameIntervalStr:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 782
    iget v9, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :cond_2
    iput-boolean v8, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 785
    .end local v2           #frameIntervalStr:Ljava/lang/String;
    :cond_3
    iget-boolean v8, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_4

    add-int/lit16 v5, v5, 0x3e8

    .line 786
    :cond_4
    iget v8, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v8, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 787
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getDesiredPreviewSize()V

    .line 788
    return-void

    .line 750
    .restart local v1       #extraVideoQuality:I
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 761
    .end local v1           #extraVideoQuality:I
    :cond_6
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getMaxVideoDuration(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 774
    :cond_7
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    goto :goto_2
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1412
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1414
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1415
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1416
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1418
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 1419
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1420
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1401
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1403
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1404
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1405
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1406
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1408
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1409
    return-void
.end method

.method private releasePreviewResources()V
    .locals 3

    .prologue
    .line 1005
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_1

    .line 1006
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v1, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1007
    .local v0, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1010
    :cond_0
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v1, :cond_1

    .line 1011
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 1015
    .end local v0           #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_1
    return-void
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2600
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 2601
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_video_effect_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2603
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2604
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 2609
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 2608
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    .line 2609
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1803
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1804
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 832
    return-void
.end method

.method private setCameraParameters()V
    .locals 5

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1925
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1929
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_6

    .line 1930
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0d0034

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1936
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1937
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1938
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1948
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0d0035

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1951
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1953
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1962
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1963
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1967
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 1968
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1969
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1972
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "recording-hint"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1977
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1978
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 1986
    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1988
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1989
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1990
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1992
    :cond_5
    const-string v1, "CAM_VideoModule"

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

    .line 1996
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 1998
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2000
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2002
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2004
    iget v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->updateCameraScreenNailSize(II)V

    .line 2005
    return-void

    .line 1934
    :cond_6
    const-string v0, "off"

    goto/16 :goto_0

    .line 1940
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1941
    if-nez v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 1955
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1956
    if-nez v0, :cond_1

    .line 1957
    const-string v0, "auto"

    goto/16 :goto_2
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 0
    .parameter "recorder"
    .parameter "fps"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1288
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1289
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    .line 900
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 902
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    .line 908
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 909
    return-void

    .line 905
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    goto :goto_0
.end method

.method private setOrientationIndicator(IZ)V
    .locals 9
    .parameter "orientation"
    .parameter "animation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 621
    const/4 v5, 0x3

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    .line 624
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

    .line 625
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 624
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v5, :cond_2

    .line 628
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v5, p1}, Lcom/android/camera/PreviewGestures;->setOrientation(I)V

    .line 635
    :cond_2
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v5, :cond_3

    .line 636
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 641
    :cond_3
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    .line 642
    div-int/lit8 v5, p1, 0x5a

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_5

    .line 643
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 648
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    iget v6, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    invoke-virtual {v5, v6, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 649
    return-void

    .line 645
    :cond_5
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method private setRecordLocation()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1294
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1295
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1300
    .end local v0           #loc:Landroid/location/Location;
    :cond_0
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2533
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2534
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2536
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2537
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2539
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2534
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2537
    goto :goto_1
.end method

.method private setupMediaRecorderPreviewDisplay()V
    .locals 3

    .prologue
    .line 1157
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1162
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1163
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 1171
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1173
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1175
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private showAlert()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1672
    const/4 v0, 0x0

    .line 1673
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_2

    .line 1674
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1680
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1683
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1684
    .local v1, info:[Landroid/hardware/Camera$CameraInfo;
    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v3, v1, v3

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_3

    .line 1685
    .local v2, mirror:Z
    :goto_1
    iget v3, p0, Lcom/android/camera/VideoModule;->mOrientationCompensationAtRecordStart:I

    neg-int v3, v3

    invoke-static {v0, v3, v2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1687
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1688
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1691
    .end local v1           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1693
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1694
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1695
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1696
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1697
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 1699
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 1700
    return-void

    .line 1676
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1677
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local v1       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v2, v4

    .line 1684
    goto :goto_1
.end method

.method private showRecordingUI(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1642
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1643
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    if-eqz p1, :cond_4

    .line 1645
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f020028

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1646
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1647
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1649
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1655
    :cond_0
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1669
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 1642
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1643
    goto :goto_1

    .line 1660
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f020018

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1661
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1662
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1663
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1664
    :cond_5
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2
.end method

.method private showTapToSnapshotToast()V
    .locals 4

    .prologue
    .line 2638
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0d0064

    iget v3, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2641
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2642
    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2643
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2644
    return-void
.end method

.method private showTimeLapseUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2407
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2409
    :cond_0
    return-void

    .line 2407
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 652
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 912
    const-string v0, "CAM_VideoModule"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 915
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 916
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 917
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 923
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 924
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 925
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    .line 928
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 929
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 935
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 946
    return-void

    .line 933
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 942
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 937
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeEffectsPreview()V

    .line 938
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private startVideoRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1576
    const-string v0, "CAM_VideoModule"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1579
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1580
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1581
    const-string v0, "CAM_VideoModule"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :goto_0
    return-void

    .line 1585
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1586
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeEffectsRecording()V

    .line 1588
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_2

    .line 1589
    const-string v0, "CAM_VideoModule"

    const-string v1, "Fail to initialize effect recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1593
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeRecorder()V

    .line 1594
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_2

    .line 1595
    const-string v0, "CAM_VideoModule"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1600
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->pauseAudioPlayback()V

    .line 1602
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1604
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    :goto_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-eqz v0, :cond_3

    .line 1627
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1630
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 1632
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 1633
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 1634
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 1635
    invoke-direct {p0, v5}, Lcom/android/camera/VideoModule;->showRecordingUI(Z)V

    .line 1637
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 1638
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOn()V

    goto :goto_0

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1607
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseEffectsRecorder()V

    goto :goto_0

    .line 1612
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1613
    :catch_1
    move-exception v0

    .line 1614
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1615
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1617
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto/16 :goto_0
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 951
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1720
    const-string v0, "CAM_VideoModule"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1722
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1725
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_8

    .line 1729
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1734
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1741
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1742
    const-string v1, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 1749
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 1750
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1761
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 1764
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v3

    .line 1765
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->closeCamera(Z)V

    .line 1768
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showRecordingUI(Z)V

    .line 1769
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_1

    .line 1770
    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 1774
    :cond_1
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 1775
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1776
    if-eqz v0, :cond_2

    .line 1777
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->addVideoToMediaStore()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    .line 1781
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1782
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1783
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_3

    .line 1784
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 1785
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_3

    .line 1787
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1789
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraScreenNail;->setOneTimeOnFrameDrawnListener(Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;)V

    .line 1791
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 1797
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1798
    :cond_4
    return v1

    .line 1736
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1737
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1738
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    .line 1739
    goto/16 :goto_0

    .line 1744
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 1745
    :goto_4
    const-string v4, "CAM_VideoModule"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1746
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    :cond_6
    move v1, v3

    .line 1747
    goto/16 :goto_1

    :cond_7
    move v4, v2

    .line 1764
    goto/16 :goto_2

    .line 1744
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 11
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 2588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2589
    .local v2, dateTaken:J
    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 2590
    .local v1, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v5

    .line 2591
    .local v5, orientation:I
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 2592
    .local v9, s:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget v7, v9, Landroid/hardware/Camera$Size;->width:I

    iget v8, v9, Landroid/hardware/Camera$Size;->height:I

    move-object v4, p2

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v10

    .line 2594
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_0

    .line 2595
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v10}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2597
    :cond_0
    return-void
.end method

.method private switchCamera()V
    .locals 3

    .prologue
    .line 2309
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2338
    :goto_0
    return-void

    .line 2311
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 2313
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2314
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoController;->setCameraId(I)V

    .line 2316
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2319
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2320
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2321
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 2322
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2323
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2324
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 2325
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2326
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 2329
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 2330
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 2332
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    .line 2335
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2337
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2008
    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v4, :cond_1

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 2010
    :cond_1
    iget v4, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_2

    .line 2011
    move v3, p1

    .line 2012
    .local v3, tmp:I
    move p1, p2

    .line 2013
    move p2, v3

    .line 2016
    .end local v3           #tmp:I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v4, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    .line 2017
    .local v2, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 2018
    .local v1, oldWidth:I
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    .line 2020
    .local v0, oldHeight:I
    if-ne v1, p1, :cond_3

    if-eq v0, p2, :cond_4

    .line 2021
    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2022
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 2023
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 2026
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2027
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    goto :goto_0
.end method

.method private updateEffectSelection()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2352
    iget v2, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 2353
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 2354
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 2355
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 2357
    iget v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-ne v4, v2, :cond_2

    .line 2358
    iget v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-nez v4, :cond_1

    .line 2388
    :cond_0
    :goto_0
    return v0

    .line 2359
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2361
    :cond_2
    const-string v3, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New effect selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_video_effect_key"

    const-string v7, "none"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget v3, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-nez v3, :cond_3

    .line 2366
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->stopPreview()V

    .line 2367
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    move v0, v1

    .line 2368
    goto :goto_0

    .line 2370
    :cond_3
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2373
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2374
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2376
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2377
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 2378
    goto :goto_0

    .line 2380
    :cond_4
    if-nez v2, :cond_5

    .line 2382
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2383
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkQualityAndStartPreview()V

    :goto_1
    move v0, v1

    .line 2388
    goto :goto_0

    .line 2386
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateFlashOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f02008e

    .line 2291
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2306
    :goto_0
    return-void

    .line 2294
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2295
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2297
    :cond_2
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2298
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2299
    :cond_3
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2301
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2303
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateOnScreenIndicators()V
    .locals 1

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 2288
    return-void
.end method

.method private updateRecordingTime()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1870
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 1916
    :goto_0
    return-void

    .line 1873
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1874
    iget-wide v2, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long v2, v0, v2

    .line 1878
    iget v0, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    move v5, v4

    .line 1882
    :goto_1
    if-eqz v5, :cond_5

    .line 1883
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x3e7

    add-long/2addr v0, v7

    .line 1888
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v7, :cond_3

    .line 1889
    invoke-static {v0, v1, v6}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 1890
    const-wide/16 v0, 0x3e8

    .line 1899
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1901
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v4, v5, :cond_1

    .line 1904
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 1906
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_4

    const v4, 0x7f0a0001

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1910
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1913
    :cond_1
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 1914
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 1878
    goto :goto_1

    .line 1895
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 1896
    iget v0, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    .line 1906
    :cond_4
    const/high16 v4, 0x7f0a

    goto :goto_4

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 4

    .prologue
    .line 791
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 792
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0d0057

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 794
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 795
    return-void
.end method


# virtual methods
.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 530
    const/4 v0, 0x1

    .line 532
    :cond_0
    return v0
.end method

.method public dismissPopup(Z)V
    .locals 1
    .parameter "topLevelOnly"

    .prologue
    .line 2817
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/VideoModule;->dismissPopup(ZZ)V

    .line 2818
    return-void
.end method

.method public dismissPopup(ZZ)V
    .locals 2
    .parameter "topLevelPopupOnly"
    .parameter "fullScreen"

    .prologue
    .line 2821
    if-eqz p2, :cond_0

    .line 2822
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 2823
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2825
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 2826
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 2827
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 2830
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoController;->popupDismissed(Z)V

    .line 2831
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 2413
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2419
    :goto_0
    return v0

    .line 2414
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_1

    .line 2415
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2416
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_2

    .line 2417
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2419
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 7
    .parameter "activity"
    .parameter "root"
    .parameter "reuseScreenNail"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 423
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 424
    iput-object p2, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    .line 425
    new-instance v2, Lcom/android/camera/ComboPreferences;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v5}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 426
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 427
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 429
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v6, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 430
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 432
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v5

    iput v5, v2, Lcom/android/camera/CameraActivity;->mNumberOfCameras:I

    .line 433
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0d0057

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 434
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetEffect()Z

    .line 440
    new-instance v0, Lcom/android/camera/VideoModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$CameraOpenThread;-><init>(Lcom/android/camera/VideoModule;)V

    .line 441
    .local v0, cameraOpenThread:Lcom/android/camera/VideoModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->start()V

    .line 443
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 445
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040047

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 449
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    .line 450
    if-eqz p3, :cond_1

    .line 451
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 455
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 459
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->join()V

    .line 460
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-eqz v2, :cond_3

    .line 461
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0d0001

    invoke-static {v2, v5}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 451
    goto :goto_0

    .line 453
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_3

    .line 463
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v2, :cond_4

    .line 464
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0d0002

    invoke-static {v2, v5}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 467
    :catch_0
    move-exception v2

    .line 471
    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/VideoModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoModule$2;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 478
    .local v1, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 480
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeControlByIntent()V

    .line 481
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeOverlay()V

    .line 482
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeMiscControls()V

    .line 484
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    .line 485
    new-instance v2, Lcom/android/camera/LocationManager;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 489
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mOrientationResetNeeded:Z

    .line 493
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 494
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-eqz v2, :cond_6

    .line 495
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0d0001

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 501
    :catch_1
    move-exception v2

    .line 505
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 506
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 507
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 509
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 510
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 511
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    goto :goto_2

    .line 497
    :cond_6
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v2, :cond_5

    .line 498
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0d0002

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method public installIntentFilter()V
    .locals 3

    .prologue
    .line 837
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 839
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 841
    new-instance v1, Lcom/android/camera/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 842
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 843
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1572
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 2788
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2033
    packed-switch p1, :pswitch_data_0

    .line 2048
    :goto_0
    return-void

    .line 2035
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2038
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2039
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2042
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2043
    const-string v0, "CAM_VideoModule"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2033
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1078
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1086
    :goto_0
    return v0

    .line 1079
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 1080
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1082
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1083
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->hide()V

    goto :goto_0

    .line 1086
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 2
    .parameter

    .prologue
    .line 2771
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2784
    :cond_0
    :goto_0
    return-void

    .line 2773
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2774
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 2775
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    goto :goto_0

    .line 2782
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2102
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 2104
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged()V

    .line 2105
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 2349
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 2213
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 2216
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2217
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2218
    const v2, 0x7f040047

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2221
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeControlByIntent()V

    .line 2222
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeOverlay()V

    .line 2223
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 2224
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeMiscControls()V

    .line 2225
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2226
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 2227
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2230
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2231
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 2232
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->onFullScreenChanged(Z)V

    .line 2233
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    .line 2234
    return-void
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2111
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    invoke-direct {p0, p2}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2115
    :cond_0
    :try_start_1
    const-string v0, "android.filterpacks.videosink.MediaRecorderStopException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2117
    const-string v0, "CAM_VideoModule"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2118
    monitor-exit p0

    return-void

    .line 2120
    :catch_0
    move-exception v0

    .line 2121
    :try_start_2
    const-string v1, "CAM_VideoModule"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2123
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during recording!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2052
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate. Effect Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 2056
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2057
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkQualityAndStartPreview()V

    .line 2092
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2093
    const-string v0, "CAM_VideoModule"

    const-string v1, "OnEffectsUpdate: closing effects if activity paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeEffects()V

    .line 2096
    :cond_1
    return-void

    .line 2058
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 2060
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->addVideoToMediaStore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2061
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 2062
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v0, :cond_4

    .line 2063
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 2069
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 2072
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2073
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 2074
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->clearVideoNamer()V

    goto :goto_0

    .line 2065
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showAlert()V

    goto :goto_1

    .line 2076
    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    .line 2078
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 2079
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2080
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2082
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2086
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2080
    nop

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
    .line 1535
    const-string v0, "CAM_VideoModule"

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

    .line 1536
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1538
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 1539
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1541
    :cond_0
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 4
    .parameter "full"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2543
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 2544
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 2546
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 2547
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/VideoModule;->dismissPopup(ZZ)V

    .line 2549
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 2551
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 2553
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 2554
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2556
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2558
    :cond_3
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_7

    .line 2559
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_4

    .line 2560
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 2569
    :cond_4
    :goto_2
    return-void

    :cond_5
    move v0, v2

    .line 2551
    goto :goto_0

    :cond_6
    move v1, v2

    .line 2556
    goto :goto_1

    .line 2564
    :cond_7
    if-eqz p1, :cond_8

    .line 2565
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->expand()V

    goto :goto_2

    .line 2567
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->shrink()V

    goto :goto_2
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1546
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1547
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1549
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1552
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0d004d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

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

    .line 1093
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1114
    :goto_0
    return v0

    .line 1097
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1099
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1100
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1105
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1106
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1111
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1097
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
    const/4 v0, 0x0

    .line 1119
    packed-switch p1, :pswitch_data_0

    .line 1124
    :goto_0
    return v0

    .line 1121
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1122
    const/4 v0, 0x1

    goto :goto_0

    .line 1119
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    .line 577
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {p1, v2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    .line 580
    .local v0, newOrientation:I
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    if-eq v2, v0, :cond_2

    .line 581
    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 587
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 588
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 594
    :cond_2
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x168

    .line 597
    .local v1, orientationCompensation:I
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    if-ne v2, v1, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mOrientationResetNeeded:Z

    if-eqz v2, :cond_5

    .line 598
    :cond_3
    iput v1, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    .line 601
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v2, :cond_4

    .line 602
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    invoke-direct {p0, v2, v4}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 603
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mOrientationResetNeeded:Z

    .line 605
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 609
    :cond_5
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 610
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 611
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    .line 615
    :cond_6
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    iget v3, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/AbstractSettingPopup;->setOrientation(IZ)V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 0

    .prologue
    .line 1067
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1021
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 1023
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1028
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1033
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectDisplay()V

    .line 1046
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releasePreviewResources()V

    .line 1048
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1052
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetScreenOn()V

    .line 1054
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1056
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1058
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 1060
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 1063
    return-void

    .line 1025
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1026
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 1042
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1043
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->clearVideoNamer()V

    goto :goto_1
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2800
    return-void
.end method

.method public onPieOpened(II)V
    .locals 2
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 2793
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->cancelActivityTouchHandling()V

    .line 2794
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2795
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2345
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 703
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 852
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iput v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 857
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 860
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v1, :cond_5

    .line 861
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetEffect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 864
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 865
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-eqz v1, :cond_3

    .line 866
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0d0001

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 869
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v1, :cond_4

    .line 870
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0d0002

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 873
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 874
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 875
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 879
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 881
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 884
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 886
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 888
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_6

    .line 889
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    .line 890
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 893
    :cond_6
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 895
    new-instance v1, Lcom/android/camera/VideoModule$VideoNamer;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$VideoNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 848
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 674
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 675
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 668
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 669
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPlayVideoActivity()V

    .line 664
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2252
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2284
    :goto_0
    return-void

    .line 2253
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v3

    .line 2256
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2283
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2258
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2260
    .local v0, recordLocation:Z
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2263
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateEffectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2265
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2266
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2268
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2269
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_3

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-eq v2, v4, :cond_5

    .line 2271
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2272
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2277
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2278
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2282
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    .line 2283
    monitor-exit v3

    goto :goto_0

    .line 2274
    :cond_4
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 2275
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_1

    .line 2280
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2836
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 2838
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 711
    .local v0, stop:Z
    if-eqz v0, :cond_3

    .line 712
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 716
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 721
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 722
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 714
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 730
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2483
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2484
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0d0065

    iget v3, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2512
    :cond_0
    :goto_0
    return-void

    .line 2489
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2493
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    .line 2495
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 2496
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    goto :goto_0

    .line 2502
    :cond_2
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 2503
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2504
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2505
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2506
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2508
    const-string v1, "CAM_VideoModule"

    const-string v2, "Video snapshot start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/VideoModule$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2510
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2511
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1074
    :cond_0
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 536
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 5
    .parameter "popup"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 2803
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 2804
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2805
    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 2806
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 2808
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/AbstractSettingPopup;->setOrientation(IZ)V

    .line 2809
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 2810
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2812
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2813
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2814
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2471
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2472
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 2476
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2478
    :cond_0
    return-void

    .line 2474
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewFrameLayout;->showBorder(Z)V

    goto :goto_0

    .line 2476
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateCameraAppView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2516
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2530
    :cond_0
    :goto_0
    return-void

    .line 2519
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-nez v0, :cond_3

    .line 2520
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2521
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    goto :goto_0

    .line 2524
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    .line 2525
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0

    .line 2526
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    if-eqz v0, :cond_0

    .line 2527
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    .line 2528
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 2765
    const/4 v0, 0x1

    return v0
.end method
