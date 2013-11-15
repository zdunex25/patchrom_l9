.class public Lcom/android/camera/VideoCamera;
.super Lcom/android/camera/ActivityBase;
.source "VideoCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/ModeChangeManager$OnModeChangeListener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoCamera$VideoNamer;,
        Lcom/android/camera/VideoCamera$JpegPictureCallback;,
        Lcom/android/camera/VideoCamera$MyOrientationEventListener;,
        Lcom/android/camera/VideoCamera$MyBroadcastReceiver;,
        Lcom/android/camera/VideoCamera$MainHandler;,
        Lcom/android/camera/VideoCamera$DefaultHashMap;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioEncoder:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBgLearningMessageFrame:Landroid/view/View;

.field private mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

.field private mCameraDisplayOrientation:I

.field private mCaptureButton:Lcom/android/camera/ui/RotateImageView;

.field private mCaptureTimeLapse:Z

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

.field mFocusManager:Lcom/android/camera/FocusManagerVideo;

.field private final mHandler:Landroid/os/Handler;

.field private mHfr:Ljava/lang/String;

.field private mIsFromStop:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastBackPressedTime:J

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mOnResumeTime:J

.field private mOrientationCompensationAtRecordStart:I

.field private mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuality:I

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mResetEffect:Z

.field private mRestartPreview:Z

.field private mRestoreFlash:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/RotateImageView;

.field private mReviewControl:Landroid/view/View;

.field private mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSnapshotInProgress:Z

.field private mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceWidth:I

.field private mSwitchingCamera:Z

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mUnsupportedHFRVideoCodec:Z

.field private mUnsupportedHFRVideoSize:Z

.field mUnsupportedResolution:Z

.field private mVideoEncoder:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFocusMode:Ljava/lang/String;

.field private mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

.field private mVideoSnapSizeChanged:Z

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 250
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 252
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 254
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 256
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 259
    sget-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "3gp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "mp4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "h263"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "h264"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "m4v"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 268
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "amrnb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "qcelp"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "evrc"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "amrwb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "aac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 278
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "1280x720"

    const-string v2, "720P"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "800x480"

    const-string v2, "WVGA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "640x480"

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "432x240"

    const-string v2, "WQVGA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "320x240"

    const-string v2, "QVGA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 127
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    .line 158
    iput v2, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 159
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 160
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mLastBackPressedTime:J

    .line 166
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 192
    iput v2, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 197
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 205
    new-instance v0, Lcom/android/camera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/VideoCamera$MainHandler;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 211
    const-string v0, "normal"

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    .line 212
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/VideoCamera;->mQuality:I

    .line 287
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 290
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    .line 291
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 293
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    .line 374
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3164
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/EffectsRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->capture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoCamera;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoCamera;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->switchCamera()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->showUserMsg(I)V

    return-void
.end method

.method private addVideoToMediaStore()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1618
    const/4 v2, 0x0

    .line 1619
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_3

    .line 1620
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_size"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v4

    .line 1623
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 1624
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_0

    .line 1625
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 1627
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1632
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$VideoNamer;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1638
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1640
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1641
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1643
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->addSecureNum(I)V

    .line 1644
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1646
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1660
    :goto_1
    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1661
    return v0

    .line 1629
    :cond_2
    const-string v4, "videocamera"

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

    .line 1648
    :catch_0
    move-exception v0

    .line 1651
    :try_start_1
    const-string v1, "videocamera"

    const-string v2, "failed to add video to media store"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1652
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->addSecureNum(I)V

    .line 1653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1657
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

    move v0, v3

    .line 1658
    goto :goto_1

    .line 1657
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

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private capture()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2647
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2648
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0d011a

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2672
    :cond_0
    :goto_0
    return v0

    .line 2653
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2657
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2658
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 2659
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    goto :goto_0

    .line 2663
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    .line 2664
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2665
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2666
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2668
    const-string v2, "videocamera"

    const-string v3, "Video snapshot start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v3, Lcom/android/camera/VideoCamera$JpegPictureCallback;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/VideoCamera$JpegPictureCallback;-><init>(Lcom/android/camera/VideoCamera;Landroid/location/Location;)V

    invoke-virtual {v2, v6, v6, v6, v3}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2670
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 2671
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    move v0, v1

    .line 2672
    goto :goto_0
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 2872
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 2873
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2874
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 2876
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2879
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2880
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1315
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
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

    .line 1318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1321
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    if-eqz v0, :cond_0

    .line 3159
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$VideoNamer;->finish()V

    .line 3160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    .line 3162
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->closeCamera(Z)V

    .line 1076
    return-void
.end method

.method private closeCamera(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1090
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1092
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :goto_0
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectCamera()V

    .line 1100
    if-eqz p1, :cond_1

    .line 1101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeEffects()V

    .line 1104
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 1105
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1106
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1107
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 1108
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1109
    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1110
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1111
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeEffects()V
    .locals 2

    .prologue
    .line 1063
    const-string v0, "videocamera"

    const-string v1, "Closing effects"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_0

    .line 1065
    const-string v0, "videocamera"

    const-string v1, "Effects are already closed. Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1070
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 1071
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 3130
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3134
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3136
    :cond_0
    return-void

    .line 3131
    :catch_0
    move-exception v0

    .line 3132
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3121
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3122
    const-string v0, ".mp4"

    .line 3124
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3114
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3115
    const-string v0, "video/mp4"

    .line 3117
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
    .line 399
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 400
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0d00eb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1666
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 1668
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1669
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1671
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1674
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1675
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1678
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

    .line 1679
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1681
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

    .line 1683
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1301
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1303
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1304
    const/4 v0, -0x1

    .line 1305
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1309
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ActivityBase;->setResultEx(ILandroid/content/Intent;)V

    .line 1310
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1311
    return-void

    .line 1307
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 2715
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableExitButton(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3006
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3007
    return-void
.end method

.method private enableExitButtonIfNeed(Z)V
    .locals 3

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_speed_key"

    const v2, 0x7f0d00f9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2931
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v1}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2932
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2934
    :cond_0
    return-void
.end method

.method private generateVideoFilename(I)V
    .locals 9

    .prologue
    .line 1591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1592
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1594
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

    .line 1595
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1596
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

    .line 1597
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1598
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1599
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1602
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
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

    .line 1607
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1608
    if-eqz v0, :cond_0

    .line 1609
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1610
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$VideoNamer;->prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 1613
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1614
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

    .line 1615
    return-void
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 660
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getDesiredPreviewSize()V
    .locals 6

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 876
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 878
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    .line 901
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

    .line 903
    return-void

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 881
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 882
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 883
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 885
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 886
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 887
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_2

    .line 888
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 891
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSingleOutputEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 892
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZ)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 894
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 895
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 897
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 898
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    goto/16 :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 407
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 408
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 413
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getThumbnail()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1881
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1882
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1884
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v1, v0, v3, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 1886
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1889
    .end local v0           #videoFrame:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 2075
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2076
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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1922
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1923
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1924
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1926
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1927
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1929
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1930
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1931
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1932
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1933
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2573
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 2577
    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    .line 2578
    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    .line 2579
    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewCancelButton:Lcom/android/camera/ui/RotateImageView;

    .line 2580
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewCancelButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2584
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2601
    :cond_0
    :goto_0
    return-void

    .line 2588
    :cond_1
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 2589
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    .line 2590
    const v0, 0x7f0c0087

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    .line 2591
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2592
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2593
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2594
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2595
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    .line 2597
    new-instance v0, Lcom/android/camera/ModeChangeManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ModeChangeManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    .line 2598
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModeChangeManager;->setVisibility(I)V

    .line 2599
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModeChangeManager;->setOnModeChangeListener(Lcom/android/camera/ModeChangeManager$OnModeChangeListener;)V

    goto :goto_0
.end method

.method private initializeEffectsPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1470
    const-string v1, "videocamera"

    const-string v2, "initializeEffectsPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1512
    :goto_0
    return-void

    .line 1474
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 1477
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v1, v1, v2

    .line 1479
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 1480
    new-instance v2, Lcom/android/camera/EffectsRecorder;

    invoke-direct {v2, p0}, Lcom/android/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1484
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 1485
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1486
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v1}, Lcom/android/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 1487
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1488
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V

    .line 1489
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1490
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1497
    iget v1, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1498
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    .line 1500
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1502
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1504
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1506
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1508
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1510
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 11

    .prologue
    const-wide/32 v4, 0x17d7840

    const-wide/16 v2, 0x0

    .line 1515
    const-string v0, "videocamera"

    const-string v1, "initializeEffectsRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1518
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1521
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1522
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 1523
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1524
    if-eqz v0, :cond_0

    .line 1526
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "rw"

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1528
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    :cond_0
    :goto_0
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1537
    :goto_1
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v6, v7}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1541
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v6, :cond_1

    .line 1542
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide v7, 0x408f400000000000L

    iget v9, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 1548
    :goto_2
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v6, :cond_2

    .line 1549
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1556
    :goto_3
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v6}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x2faf080

    sub-long/2addr v6, v8

    .line 1557
    cmp-long v8, v6, v4

    if-gez v8, :cond_4

    .line 1560
    :goto_4
    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 1563
    :goto_5
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 1564
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 1565
    return-void

    .line 1529
    :catch_0
    move-exception v0

    .line 1531
    const-string v6, "videocamera"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1544
    :cond_1
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_2

    .line 1551
    :cond_2
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v6}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 1552
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-wide v0, v4

    goto :goto_5

    :cond_4
    move-wide v4, v6

    goto :goto_4

    :cond_5
    move-wide v0, v2

    goto :goto_1
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 2386
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v1, v5, v6

    .line 2387
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v2, :cond_0

    .line 2388
    .local v2, mirror:Z
    :goto_0
    iget v5, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    iget v6, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v5, v6}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v3

    .line 2389
    .local v3, orientation:I
    new-instance v5, Lcom/android/camera/FocusManagerVideo;

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7, v2, v3}, Lcom/android/camera/FocusManagerVideo;-><init>(IIZI)V

    iput-object v5, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    .line 2391
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2392
    .local v0, display:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 2393
    .local v4, point:Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2394
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/FocusManagerVideo;->setPreviewSize(II)V

    .line 2395
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/AbstractFocusManager;->setRenderSize(II)V

    .line 2396
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setRenderSize(II)V

    .line 2397
    return-void

    .line 2387
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #mirror:Z
    .end local v3           #orientation:I
    .end local v4           #point:Landroid/graphics/Point;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 2604
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2605
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2606
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 2607
    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    .line 2609
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2610
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 2611
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2612
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2613
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2622
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2623
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2626
    :cond_0
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 2632
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    .line 2633
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    .line 2635
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureButton:Lcom/android/camera/ui/RotateImageView;

    .line 2636
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v1, Lcom/android/camera/VideoCamera$3;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$3;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2644
    return-void
.end method

.method private initializeRecorder()V
    .locals 11

    .prologue
    const/16 v10, 0x500

    const/16 v9, 0x2d0

    const/4 v6, 0x5

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 1325
    const-string v0, "videocamera"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1467
    :goto_0
    return-void

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 1330
    const-string v0, "videocamera"

    const-string v1, "SurfaceTexture is null. Wait for surface changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1334
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1335
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1337
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    .line 1338
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    .line 1339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    .line 1341
    iget v0, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    if-ne v0, v7, :cond_2

    .line 1342
    iget v0, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    if-lt v0, v10, :cond_2

    iget v0, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    if-lt v0, v9, :cond_2

    .line 1343
    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    .line 1344
    const v0, 0x7f0d0153

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1350
    :cond_2
    const-wide/16 v0, 0x0

    .line 1351
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1352
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 1353
    const-string v0, "output"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1354
    if-eqz v0, :cond_3

    .line 1356
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "rw"

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1358
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1364
    :cond_3
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1366
    :cond_4
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1369
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1370
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1371
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getVideoHighFrameRate()Ljava/lang/String;

    move-result-object v3

    .line 1372
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v4, :cond_a

    if-eqz v3, :cond_5

    const-string v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1373
    :cond_5
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1374
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    iput v5, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 1378
    :goto_2
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1380
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    iput v5, v4, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 1381
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    iput v5, v4, Landroid/media/CamcorderProfile;->duration:I

    .line 1383
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1384
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1385
    if-eqz v3, :cond_b

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget v3, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    if-ne v3, v10, :cond_b

    iget v3, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    if-ne v3, v9, :cond_b

    .line 1386
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0x3d0900

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1400
    :cond_6
    :goto_3
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_7

    .line 1401
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v3, 0x408f400000000000L

    iget v5, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1404
    :cond_7
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 1405
    if-eqz v2, :cond_8

    .line 1406
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    double-to-float v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1414
    :cond_8
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_d

    .line 1415
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1422
    :goto_4
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    sub-long/2addr v2, v4

    .line 1423
    const-wide/32 v4, 0x17d7840

    cmp-long v4, v2, v4

    if-gez v4, :cond_9

    .line 1424
    const-wide/32 v2, 0x17d7840

    .line 1426
    :cond_9
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_10

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    .line 1430
    :goto_5
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1444
    :goto_6
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v1

    .line 1445
    iget v1, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    if-eq v1, v8, :cond_f

    .line 1446
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v7, :cond_e

    .line 1447
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1454
    :goto_7
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1455
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1458
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1465
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1466
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1359
    :catch_0
    move-exception v0

    .line 1361
    const-string v1, "videocamera"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1376
    :cond_a
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iput v8, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    goto/16 :goto_2

    .line 1387
    :cond_b
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1388
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1390
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1394
    if-ne v2, v6, :cond_c

    .line 1395
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0x7a1200

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto/16 :goto_3

    .line 1396
    :cond_c
    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 1397
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0xe4e1c0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto/16 :goto_3

    .line 1417
    :cond_d
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 1418
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1449
    :cond_e
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_7

    .line 1452
    :cond_f
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto/16 :goto_7

    .line 1459
    :catch_1
    move-exception v0

    .line 1460
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

    .line 1461
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1462
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1431
    :catch_2
    move-exception v0

    goto/16 :goto_6

    :cond_10
    move-wide v0, v2

    goto/16 :goto_5
.end method

.method private initializeSettingScreen()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 511
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v1, :cond_0

    .line 512
    new-instance v1, Lcom/android/camera/VideoModeManager;

    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    invoke-direct {v1, p0, v4, p0, p0}, Lcom/android/camera/VideoModeManager;-><init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 515
    .local v0, isSimpleMode:Z
    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->showIndicators(Z)V

    .line 516
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v5, v0, v6, v1}, Lcom/android/camera/ModeManager;->initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Z)V

    .line 518
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v1}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 519
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget v4, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v1, v4, v3}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    .line 520
    const v1, 0x7f060007

    invoke-virtual {p0, p0, v1}, Lcom/android/camera/ActivityBase;->initializeCameraControls(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;I)V

    .line 521
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/FlashButton;->setCallback(Lcom/android/camera/ui/FlashButton$Callback;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateFlashButton()V

    .line 523
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "pref_video_quality_key"

    aput-object v5, v4, v3

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Lcom/android/camera/ModeManager;->overrideSettings([Ljava/lang/String;)V

    .line 528
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 515
    goto :goto_0

    :cond_3
    move v1, v3

    .line 516
    goto :goto_1
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

    .line 2129
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
    .line 1296
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1297
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2023
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2024
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2025
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2019
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 2028
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 2029
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 2030
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 2031
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 2032
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 2034
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2037
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 2038
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 2039
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2041
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2043
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2047
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 2048
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2050
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2051
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2054
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 2055
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2057
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2060
    if-eqz p2, :cond_5

    .line 2061
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2062
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 2063
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 2064
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2066
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2069
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onSettingsBack()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1229
    sget-object v0, Lcom/android/camera/CameraSettings;->sVideoChangeManager:Lcom/android/camera/ChangeManager;

    .line 1230
    .local v0, cm:Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v4}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1231
    invoke-virtual {v0, v4}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1232
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->restorePreferences()V

    .line 1233
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1235
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1236
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->restorePreferences()V

    goto :goto_0

    .line 1237
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1238
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1239
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private onStopVideoRecording()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 641
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 642
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    move-result v0

    .line 643
    .local v0, recordFail:Z
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_3

    .line 644
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 645
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v2, :cond_2

    .line 646
    if-nez v0, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 656
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 657
    return-void

    .line 646
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 647
    :cond_2
    if-nez v0, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    goto :goto_1

    .line 651
    :cond_3
    if-nez v0, :cond_0

    .line 653
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getCameraRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 654
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_1
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1719
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1720
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1723
    return-void
.end method

.method private qcomReadVideoPreferences()V
    .locals 14

    .prologue
    const v13, 0x7f0d0131

    const/4 v12, 0x1

    .line 706
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_camera_videoencoder_key"

    const v11, 0x7f0d012e

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 709
    .local v8, videoEncoder:Ljava/lang/String;
    sget-object v9, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-virtual {v9, v8}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    .line 710
    const-string v9, "videocamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Video Encoder type in application="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_camera_audioencoder_key"

    const v11, 0x7f0d012f

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, audioEncoder:Ljava/lang/String;
    sget-object v9, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-virtual {v9, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    .line 716
    const-string v9, "videocamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Audio Encoder type in application="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_camera_video_duration_key"

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, minutesStr:Ljava/lang/String;
    const/4 v1, -0x1

    .line 722
    .local v1, minutes:I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 728
    :goto_0
    const/4 v9, -0x1

    if-ne v1, v9, :cond_2

    .line 732
    const-string v9, "mms"

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getVidoeDurationInMillis(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 738
    :goto_1
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->isPowerModeSupported()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 739
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_camera_powermode_key"

    const v11, 0x7f0d014a

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 742
    .local v6, powermode:Ljava/lang/String;
    const-string v9, "videocamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read videopreferences power mode ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPowerMode()Ljava/lang/String;

    move-result-object v4

    .line 744
    .local v4, old_mode:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v9, :cond_0

    .line 746
    iput-boolean v12, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 748
    :cond_0
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v6}, Landroid/hardware/Camera$Parameters;->setPowerMode(Ljava/lang/String;)V

    .line 750
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 752
    .local v5, old_size:Landroid/hardware/Camera$Size;
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 753
    .local v7, size:Landroid/hardware/Camera$Size;
    const-string v9, "videocamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New Video picture size : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v7, v5}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 755
    const-string v9, "Normal_Power"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v9, :cond_3

    .line 756
    const-string v9, "videocamera"

    const-string v10, "new Video size id different from old picture size , restart.."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iput-boolean v12, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    .line 764
    .end local v4           #old_mode:Ljava/lang/String;
    .end local v5           #old_size:Landroid/hardware/Camera$Size;
    .end local v6           #powermode:Ljava/lang/String;
    .end local v7           #size:Landroid/hardware/Camera$Size;
    :cond_1
    :goto_2
    return-void

    .line 723
    :catch_0
    move-exception v3

    .line 725
    .local v3, npe:Ljava/lang/NumberFormatException;
    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 735
    .end local v3           #npe:Ljava/lang/NumberFormatException;
    :cond_2
    const v9, 0x5265c00

    iput v9, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 758
    .restart local v4       #old_mode:Ljava/lang/String;
    .restart local v5       #old_size:Landroid/hardware/Camera$Size;
    .restart local v6       #powermode:Ljava/lang/String;
    .restart local v7       #size:Landroid/hardware/Camera$Size;
    :cond_3
    const-string v9, "Low_Power"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v9, :cond_1

    .line 760
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private qcomSetCameraParameters()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2137
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d0084

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2140
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color effect value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2142
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2145
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 2146
    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    .line 2149
    const-string v0, "debug.camera.yv12"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2150
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2151
    const-string v0, "videocamera"

    const-string v1, "preview format set to YV12"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const v1, 0x32315659

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 2155
    :cond_1
    const-string v0, "off"

    .line 2156
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_video_speed_key"

    const v3, 0x7f0d00f9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2159
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2160
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_movie_solid_key"

    const v5, 0x7f0d0184

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2166
    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "fast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/VideoCamera;->mQuality:I

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    :cond_2
    sget-boolean v2, Lcom/android/camera/Device;->IS_MITWO:Z

    if-nez v2, :cond_e

    .line 2169
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v6}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2170
    const-string v2, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "fast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2171
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2172
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2179
    :cond_4
    :goto_0
    const-string v2, "fast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2180
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_f

    const-string v0, "off"

    .line 2183
    :goto_1
    const-string v1, "fast"

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    :cond_5
    move-object v1, v0

    .line 2186
    const-string v0, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2187
    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 2188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2189
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current set resolution is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedHfrSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2192
    if-eqz v0, :cond_6

    .line 2193
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "supported hfr size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget v3, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v3, v0, :cond_6

    .line 2195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 2196
    const-string v0, "videocamera"

    const-string v2, "Current hfr resolution is supported"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2205
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    if-eqz v0, :cond_8

    .line 2206
    const-string v0, "videocamera"

    const-string v2, "Unsupported hfr resolution"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_8
    const-string v0, "120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x500

    iget v2, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    if-ne v0, v2, :cond_9

    const/16 v0, 0x2d0

    iget v2, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    if-ne v0, v2, :cond_9

    .line 2208
    const-string v1, "90"

    .line 2209
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0d0152

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-direct {v0, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2211
    :cond_9
    iget v0, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    .line 2212
    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    .line 2215
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoHighFrameRateModes()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2217
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoHighFrameRate(Ljava/lang/String;)V

    .line 2220
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->supportHDR()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2222
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2223
    const-string v1, "setVideoHDRMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2224
    if-eqz v1, :cond_c

    .line 2225
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_10

    const-string v0, "on"

    :goto_3
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2234
    :cond_c
    :goto_4
    invoke-static {}, Lcom/android/camera/Device;->supportLowPowerMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2235
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVideoCaptureEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Normal_Power"

    :goto_5
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPowerMode(Ljava/lang/String;)V

    .line 2238
    :cond_d
    return-void

    .line 2175
    :cond_e
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v7}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto/16 :goto_0

    .line 2180
    :cond_f
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_hfr_key"

    const v2, 0x7f0d00ee

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    const-string v0, "videocamera"

    const-string v2, "supported hfr sizes is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2225
    :cond_10
    :try_start_2
    const-string v0, "off"
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 2235
    :cond_11
    const-string v0, "Low_Power"

    goto :goto_5

    .line 2230
    :catch_1
    move-exception v0

    goto :goto_4

    .line 2229
    :catch_2
    move-exception v0

    goto :goto_4

    .line 2228
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method private readVideoPreferences()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 769
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_video_quality_key"

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 777
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 778
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 779
    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 781
    if-lez v0, :cond_5

    move v0, v1

    .line 790
    :cond_0
    :goto_0
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 791
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 793
    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 799
    :goto_1
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 800
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-eqz v4, :cond_7

    .line 801
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 803
    iget v4, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v4, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 804
    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v5, 0x1e0

    if-le v4, v5, :cond_1

    move v0, v3

    .line 810
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v4, :cond_2

    .line 811
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "pref_video_quality_key"

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/camera/ModeManager;->overrideSettings([Ljava/lang/String;)V

    .line 824
    :cond_2
    :goto_2
    const-string v3, "0"

    .line 825
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_video_speed_key"

    const v6, 0x7f0d00f9

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 828
    const-string v5, "slow"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 830
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_video_time_lapse_frame_interval_key"

    const v5, 0x7f0d0032

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 833
    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 834
    const-string v4, "slow"

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    .line 842
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 844
    iget v0, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v0, :cond_9

    :goto_4
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 846
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_4

    .line 847
    add-int/lit16 v3, v3, 0x3e8

    .line 848
    const/16 v0, 0x3e8

    if-lt v3, v0, :cond_3

    const/16 v0, 0x3ef

    if-le v3, v0, :cond_4

    .line 850
    :cond_3
    add-int/lit16 v3, v3, -0x3e8

    .line 851
    const-string v0, "0"

    .line 852
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 853
    const-string v1, "pref_video_speed_key"

    const-string v4, "normal"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 854
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 855
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 856
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0d0183

    iget v2, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 858
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 861
    :cond_4
    rem-int/lit16 v0, v3, 0x3e8

    iput v0, p0, Lcom/android/camera/VideoCamera;->mQuality:I

    .line 862
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 863
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getDesiredPreviewSize()V

    .line 864
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->qcomReadVideoPreferences()V

    .line 865
    return-void

    :cond_5
    move v0, v2

    .line 784
    goto/16 :goto_0

    .line 795
    :cond_6
    iput v2, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 816
    :cond_7
    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 817
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v3, :cond_2

    .line 818
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "pref_video_quality_key"

    aput-object v5, v4, v2

    aput-object v7, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/camera/ModeManager;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 836
    :cond_8
    const-string v5, "fast"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 837
    const/4 v4, 0x6

    if-ne v0, v4, :cond_a

    .line 838
    const/4 v0, 0x5

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_3

    :cond_9
    move v1, v2

    .line 844
    goto :goto_4

    :cond_a
    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_3
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1580
    const-string v0, "videocamera"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1582
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 1583
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1584
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1585
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 1587
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1588
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1569
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1571
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 1572
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1573
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1574
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1576
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1577
    return-void
.end method

.method private resetEffect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3101
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    if-eqz v1, :cond_0

    .line 3102
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_video_effect_key"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3104
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3105
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->writeDefaultEffectToPrefs()V

    .line 3110
    :goto_0
    return v0

    .line 3109
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    .line 3110
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2013
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2014
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2015
    return-void
.end method

.method private resetSettings()V
    .locals 1

    .prologue
    .line 1115
    const-string v0, "normal"

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    .line 1116
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 1117
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 7

    .prologue
    .line 906
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v1, v2, v3

    .line 907
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 910
    .local v0, degrees:I
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 912
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_1

    .line 913
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0

    .line 918
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    if-nez v2, :cond_0

    .line 920
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_3

    .line 921
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0

    .line 924
    :cond_3
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2696
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2697
    iput v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 2698
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 2699
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 2702
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-eqz v0, :cond_1

    .line 2703
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 2706
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_2

    .line 2707
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 2708
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 2710
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2711
    return-void
.end method

.method private setCameraParameters()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2242
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview dimension in App->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2244
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2247
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    .line 2248
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    .line 2249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2251
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video dimension in App->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-size"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_9

    .line 2257
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_8

    const-string v0, "off"

    .line 2264
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2265
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2266
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2276
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0d0077

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2279
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2281
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2290
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2291
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2295
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 2296
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_video_focusmode_key"

    const v3, 0x7f0d016b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2300
    invoke-static {v1, v0}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2301
    const-string v0, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2302
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2303
    const-string v0, "continuous-video"

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFocusMode:Ljava/lang/String;

    .line 2308
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2310
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2314
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2315
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2316
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 2324
    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2327
    iget v1, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    const/16 v2, 0x440

    if-ne v1, v2, :cond_5

    .line 2328
    iget v1, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    iput v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 2329
    iget v1, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    iput v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2332
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2333
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2334
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2336
    :cond_6
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

    .line 2340
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v5}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 2342
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2344
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2347
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->qcomSetCameraParameters()V

    .line 2349
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2352
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_antibanding_key"

    const v2, 0x7f0d00e3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2355
    const-string v1, "videocamera"

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

    .line 2356
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2357
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2360
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2362
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2364
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->updateCameraScreenNailSize(II)V

    .line 2365
    return-void

    .line 2257
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    const v2, 0x7f0d0076

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2262
    :cond_9
    const-string v0, "off"

    goto/16 :goto_0

    .line 2268
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2269
    if-nez v0, :cond_0

    .line 2270
    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 2283
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2284
    if-nez v0, :cond_1

    .line 2285
    const-string v0, "auto"

    goto/16 :goto_2

    .line 2305
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-on"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2306
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFocusMode:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1015
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    .line 1016
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    .line 1017
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractFocusManager;->setDisplayOrientation(I)V

    .line 1020
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1892
    const/4 v0, 0x0

    .line 1893
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 1894
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1900
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1903
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1904
    .local v1, info:[Landroid/hardware/Camera$CameraInfo;
    iget v4, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v4, v1, v4

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v2, :cond_3

    .line 1905
    .local v2, mirror:Z
    :goto_1
    iget v4, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    neg-int v4, v4

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1907
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1908
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1910
    .end local v1           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1911
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1912
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1914
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1915
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1916
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1917
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1919
    return-void

    .line 1896
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1897
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local v1       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v2, v3

    .line 1904
    goto :goto_1
.end method

.method private showCaptureButton()Z
    .locals 2

    .prologue
    .line 1875
    const-string v0, "fast"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVideoCaptureEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showHDRExit(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3000
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3001
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3002
    return-void

    :cond_0
    move v0, v2

    .line 3000
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3001
    goto :goto_1
.end method

.method private showRecordingUI(Z)V
    .locals 5

    .prologue
    const v4, 0x7f0c002b

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1831
    if-eqz p1, :cond_7

    .line 1832
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1833
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f02013b

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1834
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1835
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1837
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1838
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModeChangeManager;->setVisibility(I)V

    .line 1840
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_5

    .line 1842
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1847
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hasFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1849
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1869
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_4

    .line 1870
    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->showHDRExit(Z)V

    .line 1872
    :cond_4
    return-void

    .line 1844
    :cond_5
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCaptureButton:Lcom/android/camera/ui/RotateImageView;

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    .line 1853
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f02003e

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1854
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1855
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraPickerButton;->isShow()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1859
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1861
    :cond_9
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1862
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1863
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1864
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/ModeChangeManager;->setVisibility(I)V

    .line 1865
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hasFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_2

    .line 1866
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showUserMsg(I)V
    .locals 3

    .prologue
    .line 3148
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 3149
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0d011b

    iget v2, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3155
    :cond_0
    :goto_0
    return-void

    .line 3151
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3152
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0d011c

    iget v2, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

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
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1023
    const-string v0, "videocamera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1026
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 1027
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 1028
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1033
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setDisplayOrientation()V

    .line 1034
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1035
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 1038
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1040
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1053
    return-void

    .line 1042
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceWidth:I

    .line 1043
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHeight:I

    .line 1044
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeEffectsPreview()V

    .line 1045
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1049
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview or setPreviewSurfaceTexture failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVideoRecording()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 1731
    const-string v0, "videocamera"

    const-string v2, "startVideoRecording"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    invoke-virtual {p0, v7}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 1733
    invoke-direct {p0, v7}, Lcom/android/camera/VideoCamera;->enableExitButton(Z)V

    .line 1735
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    if-ne v0, v1, :cond_2

    .line 1736
    const-string v0, "videocamera"

    const-string v2, "Unsupported HFR and video size combinations"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1738
    const-string v0, "Only "

    .line 1739
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedHfrSizes()Ljava/util/List;

    move-result-object v2

    .line 1740
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-gt v1, v3, :cond_1

    .line 1741
    if-eq v1, v3, :cond_0

    .line 1742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1740
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1745
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1749
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " are supported when HFR is on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1750
    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1828
    :goto_2
    return-void

    .line 1754
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    if-ne v0, v1, :cond_3

    .line 1755
    const-string v0, "videocamera"

    const-string v1, "Unsupported HFR and video codec combinations"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const v0, 0x7f0d0151

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1763
    :cond_3
    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1764
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1765
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeEffectsRecording()V

    .line 1766
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_6

    .line 1767
    const-string v0, "videocamera"

    const-string v1, "Fail to initialize effect recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1771
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeRecorder()V

    .line 1772
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    if-ne v0, v1, :cond_5

    .line 1773
    const-string v0, "videocamera"

    const-string v1, "Unsupported Resolution according to target"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1776
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_6

    .line 1777
    const-string v0, "videocamera"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1782
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseAudioPlayback()V

    .line 1791
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1793
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    :goto_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_7

    .line 1811
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    .line 1813
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v4, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1818
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1819
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.start_video_recording"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1820
    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1821
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v2, "video_recorded_key"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1822
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1823
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    .line 1824
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 1826
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    .line 1827
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOn()V

    goto/16 :goto_2

    .line 1794
    :catch_0
    move-exception v0

    .line 1795
    const-string v1, "videocamera"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1796
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseEffectsRecorder()V

    goto/16 :goto_2

    .line 1801
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1802
    :catch_1
    move-exception v0

    .line 1803
    const-string v1, "videocamera"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1804
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1806
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto/16 :goto_2
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 1056
    const-string v0, "videocamera"

    const-string v1, "Guru : Stop Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1059
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1940
    const-string v0, "videocamera"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-virtual {p0, v3}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 1942
    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->enableExitButton(Z)V

    .line 1944
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_7

    .line 1948
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1953
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1960
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1961
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1962
    const-string v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: Setting current video filename: "

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

    move v1, v2

    .line 1969
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1980
    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v4, :cond_0

    .line 1983
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v3

    .line 1984
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->closeCamera(Z)V

    .line 1987
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 1988
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_1

    .line 1989
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1992
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1993
    if-eqz v0, :cond_2

    .line 1994
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    .line 1996
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.stop_video_recording"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1999
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2000
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 2002
    :cond_3
    return v1

    .line 1955
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1956
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1957
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    .line 1958
    goto :goto_0

    .line 1964
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 1965
    :goto_4
    const-string v4, "videocamera"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1966
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    :cond_5
    move v1, v3

    .line 1967
    goto :goto_1

    :cond_6
    move v4, v2

    .line 1983
    goto :goto_2

    .line 1964
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 14
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 3078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3079
    .local v2, dateTaken:J
    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 3080
    .local v1, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v5

    .line 3081
    .local v5, orientation:I
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 3082
    .local v12, s:Landroid/hardware/Camera$Size;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->addSecureNum(I)V

    .line 3083
    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    iget v8, v12, Landroid/hardware/Camera$Size;->height:I

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v4, p2

    move-object v6, p1

    invoke-static/range {v0 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZ)Landroid/net/Uri;

    move-result-object v13

    .line 3085
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_1

    .line 3087
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v11, v6

    .line 3089
    .local v11, ratio:I
    invoke-static {v11}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    .line 3090
    .local v10, inSampleSize:I
    const/4 v0, 0x0

    invoke-static {p1, v5, v10, v13, v0}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 3091
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    .line 3092
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v4}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3094
    :cond_0
    invoke-static {p0, v13}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3098
    .end local v10           #inSampleSize:I
    .end local v11           #ratio:I
    :goto_0
    return-void

    .line 3096
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->addSecureNum(I)V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2786
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2820
    :goto_0
    return-void

    .line 2788
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_1

    .line 2789
    invoke-virtual {p0, v3}, Lcom/android/camera/ActivityBase;->exitHDRMode(Z)V

    .line 2791
    :cond_1
    const-string v0, "videocamera"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 2793
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 2794
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 2795
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateFlashButton()V

    .line 2796
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 2797
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHasSwitchedToFront:Z

    if-nez v0, :cond_2

    .line 2798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHasSwitchedToFront:Z

    .line 2799
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetSettings()V

    .line 2801
    :cond_2
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 2802
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2804
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2808
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 2809
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2810
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2811
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 2814
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initializeZoom()V

    .line 2815
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    .line 2816
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    .line 2819
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2805
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)Z
    .locals 3

    .prologue
    .line 2458
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2466
    :goto_0
    return v0

    .line 2459
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 2460
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v0, :cond_2

    .line 2461
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2462
    const-string v1, "SecurePictureNum"

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSecureNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2464
    :cond_2
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 2465
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2466
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2368
    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 2369
    move v0, p1

    .line 2370
    .local v0, tmp:I
    move p1, p2

    .line 2371
    move p2, v0

    .line 2374
    .end local v0           #tmp:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 2375
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/AbstractFocusManager;->setRenderSize(II)V

    .line 2377
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    .line 2379
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 2380
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2381
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2383
    :cond_1
    return-void
.end method

.method private updateEffectSelection()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2830
    iget v2, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 2831
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 2832
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 2833
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 2835
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-ne v4, v2, :cond_2

    .line 2836
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-nez v4, :cond_1

    .line 2866
    :cond_0
    :goto_0
    return v0

    .line 2837
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2839
    :cond_2
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New effect selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_video_effect_key"

    const-string v7, "none"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    iget v3, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-nez v3, :cond_3

    .line 2844
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->stopPreview()V

    .line 2845
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    move v0, v1

    .line 2846
    goto :goto_0

    .line 2848
    :cond_3
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2851
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2852
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2854
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2855
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 2856
    goto :goto_0

    .line 2858
    :cond_4
    if-nez v2, :cond_5

    .line 2860
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 2861
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->checkQualityAndStartPreview()V

    :goto_1
    move v0, v1

    .line 2866
    goto :goto_0

    .line 2864
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

    .line 2080
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 2126
    :goto_0
    return-void

    .line 2083
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2084
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long v2, v0, v2

    .line 2088
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    move v5, v4

    .line 2092
    :goto_1
    if-eqz v5, :cond_5

    .line 2093
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x3e7

    add-long/2addr v0, v7

    .line 2098
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v7, :cond_3

    .line 2099
    invoke-static {v0, v1, v6}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2100
    const-wide/16 v0, 0x3e8

    .line 2109
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2111
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v4, v5, :cond_1

    .line 2114
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 2116
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_4

    const v4, 0x7f0a0002

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2120
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2123
    :cond_1
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 2124
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 2088
    goto :goto_1

    .line 2105
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2106
    iget v0, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    .line 2116
    :cond_4
    const/high16 v4, 0x7f0a

    goto :goto_4

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method private updateScreenSettingView()V
    .locals 2

    .prologue
    .line 2718
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateVideoSpeedUI()Z

    move-result v0

    .line 2719
    .local v0, isUpdated:Z
    if-eqz v0, :cond_0

    .line 2720
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 2724
    :goto_0
    return-void

    .line 2722
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateVideoQualityUI()Z

    goto :goto_0
.end method

.method private updateVideoQualityUI()Z
    .locals 6

    .prologue
    .line 2440
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v3, :cond_0

    .line 2442
    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2444
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2447
    .local v2, videoQuality:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2448
    .local v1, quality:I
    iget v3, p0, Lcom/android/camera/VideoCamera;->mQuality:I

    if-eq v1, v3, :cond_0

    .line 2449
    iput v1, p0, Lcom/android/camera/VideoCamera;->mQuality:I

    .line 2450
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 2451
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/SettingView;->showPopup(Ljava/lang/String;)V

    .line 2452
    const/4 v3, 0x1

    .line 2455
    .end local v0           #defaultQuality:Ljava/lang/String;
    .end local v1           #quality:I
    .end local v2           #videoQuality:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateVideoSpeedUI()Z
    .locals 4

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_2

    .line 2407
    const-string v0, "off"

    .line 2408
    const-string v0, "0"

    .line 2409
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_speed_key"

    const v2, 0x7f0d00f9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2411
    const-string v0, "normal"

    .line 2413
    const-string v2, "fast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2414
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_hfr_key"

    const v3, 0x7f0d00ee

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2417
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2418
    const-string v0, "fast"

    .line 2429
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2430
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    .line 2431
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 2432
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    const-string v1, "pref_video_speed_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->showPopup(Ljava/lang/String;)V

    .line 2433
    const/4 v0, 0x1

    .line 2436
    :goto_1
    return v0

    .line 2420
    :cond_1
    const-string v2, "slow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2422
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_video_time_lapse_frame_interval_key"

    const v3, 0x7f0d0032

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2425
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2426
    const-string v1, "slow"

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    goto :goto_0

    .line 2436
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 3

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 869
    const-string v1, "pref_video_effect_key"

    const v2, 0x7f0d010c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 871
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 872
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "m"

    .prologue
    .line 2976
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 2996
    :goto_0
    return v3

    .line 2979
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 2980
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2981
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2984
    .local v2, y:F
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 2985
    .local v0, popup:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2989
    invoke-static {v1, v2, v0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2991
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 2996
    .end local v0           #popup:Landroid/view/View;
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected enableCameraControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2007
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->enableCameraControls(Z)V

    .line 2008
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->enableExitButtonIfNeed(Z)V

    .line 2009
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1727
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2479
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2480
    packed-switch p1, :pswitch_data_0

    .line 2495
    :goto_0
    return-void

    .line 2482
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2485
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2486
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

    .line 2487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    goto :goto_0

    .line 2489
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2490
    const-string v0, "videocamera"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    goto :goto_0

    .line 2480
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 1197
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1199
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_4

    .line 1201
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapsePopupForSimpleMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 1210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1211
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mLastBackPressedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1212
    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mLastBackPressedTime:J

    .line 1213
    const v0, 0x7f0d017c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1216
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    goto :goto_0

    .line 1220
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_4

    .line 1221
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->exitHDR()V

    goto :goto_0

    .line 1225
    :cond_4
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 2

    .prologue
    .line 2773
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2783
    :cond_0
    :goto_0
    return-void

    .line 2775
    :cond_1
    const-string v0, "videocamera"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2779
    iput p1, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 2781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    .line 2782
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2551
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->writeDefaultEffectToPrefs()V

    .line 2553
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 2555
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2556
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0d0002

    const v5, 0x7f0d0001

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 419
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 420
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 421
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/ComboPreferences;)V

    .line 422
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v6}, Lcom/android/camera/VideoCamera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 423
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v6, v7}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 424
    const v6, 0x7f0d010c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 425
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetEffect()Z

    .line 426
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetSettings()V

    .line 431
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v6

    const-string v7, "open_camera_times_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 432
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 433
    .local v0, cameraOpenThread:Lcom/android/camera/ActivityBase$CameraOpenThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 435
    invoke-static {v2}, Lcom/android/camera/ModeChangeManager;->setCurrentMode(I)V

    .line 436
    const v6, 0x7f04002e

    invoke-virtual {p0, v6}, Lcom/android/camera/ActivityBase;->setContentView(I)V

    .line 437
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeMiscControls()V

    .line 440
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 441
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v6, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->createCameraScreenNail(Z)V

    .line 442
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateFlashButton()V

    .line 445
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 446
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v2, :cond_2

    .line 447
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-lez v2, :cond_1

    move v2, v4

    :goto_1
    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 508
    :goto_2
    return-void

    :cond_0
    move v2, v3

    .line 441
    goto :goto_0

    :cond_1
    move v2, v5

    .line 447
    goto :goto_1

    .line 452
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v2, :cond_3

    .line 453
    const v2, 0x7f0d0003

    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 456
    :catch_0
    move-exception v2

    .line 460
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeControlByIntent()V

    .line 461
    new-instance v2, Lcom/android/camera/ui/VideoSettingsStatusBar;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/VideoSettingsStatusBar;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    .line 462
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeFocusManager()V

    .line 463
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 464
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initSettingButton()V

    .line 466
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/VideoCamera$1;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoCamera$1;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 473
    .local v1, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 474
    new-instance v2, Lcom/android/camera/RotateDialogController;

    const v6, 0x7f040028

    invoke-direct {v2, p0, v6}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 475
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    .line 476
    new-instance v2, Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-direct {v2, p0, p0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;-><init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    .line 477
    const v2, 0x7f0c009a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ZoomControl;

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    .line 480
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 481
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v2, :cond_6

    .line 482
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    move v2, v4

    :goto_3
    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 491
    :catch_1
    move-exception v2

    .line 495
    :cond_4
    const v2, 0x7f0c001e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    .line 496
    const v2, 0x7f0c001f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    .line 497
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/camera/VideoCamera$2;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoCamera$2;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    const v2, 0x7f0c0035

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    .line 504
    const v2, 0x7f0c0036

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    .line 505
    new-instance v2, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 507
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    goto/16 :goto_2

    :cond_5
    move v2, v5

    .line 482
    goto :goto_3

    .line 487
    :cond_6
    :try_start_2
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v2, :cond_4

    .line 488
    const v2, 0x7f0d0003

    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2562
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2563
    invoke-direct {p0, p2}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2565
    :cond_0
    instance-of v0, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v0, :cond_1

    .line 2566
    const-string v0, "videocamera"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2567
    monitor-exit p0

    return-void

    .line 2569
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during recording!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2499
    const-string v0, "videocamera"

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

    .line 2500
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 2503
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2504
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->checkQualityAndStartPreview()V

    .line 2541
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2542
    const-string v0, "videocamera"

    const-string v1, "OnEffectsUpdate: closing effects if activity paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeEffects()V

    .line 2545
    :cond_1
    return-void

    .line 2505
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 2507
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2508
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_5

    .line 2509
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_4

    .line 2510
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 2518
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 2521
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2522
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 2523
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->clearVideoNamer()V

    goto :goto_0

    .line 2512
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    goto :goto_1

    .line 2515
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_1

    .line 2525
    :cond_6
    const/4 v0, 0x5

    if-ne p2, v0, :cond_7

    .line 2527
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 2528
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2529
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2531
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2535
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2529
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

    .prologue
    .line 1688
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

    .line 1689
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1691
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    .line 1692
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1694
    :cond_0
    return-void
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2885
    const-string v0, "pref_settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2886
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->openSettingActivity()V

    .line 2921
    :cond_0
    :goto_0
    return-void

    .line 2887
    :cond_1
    const-string v0, "pref_video_hdr_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2888
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->switchHDR()V

    goto :goto_0

    .line 2892
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    const-string v1, "mode_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    const-string v1, "mode_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2894
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->resetAllStatus()V

    .line 2896
    :cond_5
    iput-object p2, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    .line 2897
    const-string v0, "pref_settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2898
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    new-instance v1, Lcom/android/camera/VideoCamera$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$5;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->runAfterDismiss(Ljava/lang/Runnable;)V

    .line 2919
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->updateExitView(Landroid/widget/TextView;)V

    .line 2920
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    goto :goto_0

    .line 2903
    :cond_7
    const-string v0, "pref_video_speed_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2904
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_speed_key"

    const v2, 0x7f0d00f9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2906
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2907
    const-string v0, "fast"

    .line 2911
    :goto_2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2912
    const-string v2, "pref_video_speed_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2913
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 2915
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    goto :goto_1

    .line 2909
    :cond_8
    const-string v0, "normal"

    goto :goto_2

    .line 2916
    :cond_9
    const-string v0, "pref_video_hdr_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2917
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->switchHDR()V

    goto :goto_1
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2

    .prologue
    .line 1699
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1700
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1701
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1702
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1704
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isScreenHintVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    const v0, 0x7f0d00ed

    const/4 v1, 0x1

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
    const/4 v1, 0x1

    .line 1246
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1269
    :goto_0
    return v1

    .line 1250
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1269
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1252
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1258
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1262
    :sswitch_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->handleVolumeKeyEvent(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1250
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1287
    packed-switch p1, :pswitch_data_0

    .line 1292
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1289
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1290
    const/4 v0, 0x1

    goto :goto_0

    .line 1287
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

    .line 2470
    if-eq p1, v0, :cond_0

    .line 2471
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->switchToOtherMode(I)Z

    .line 2474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2827
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 665
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    .line 637
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 638
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 631
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 632
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPlayVideoActivity()V

    .line 627
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    .line 621
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlert()V

    .line 622
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2729
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2769
    :goto_0
    return-void

    .line 2730
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v3

    .line 2733
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2767
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2735
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 2736
    .local v0, recordLocation:Z
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2739
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateEffectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2741
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateScreenSettingView()V

    .line 2742
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 2744
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2745
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_3

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-ne v2, v4, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    if-eqz v2, :cond_5

    .line 2747
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2748
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 2752
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2753
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2767
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2768
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_0

    .line 2750
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    goto :goto_1

    .line 2754
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    if-eqz v2, :cond_7

    .line 2756
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2757
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2761
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2762
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    .line 2763
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    goto :goto_2

    .line 2759
    :cond_6
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    goto :goto_3

    .line 2765
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x2faf080

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 672
    const-string v1, "videocamera"

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 676
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 678
    .local v0, stop:Z
    if-eqz v0, :cond_4

    .line 679
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 680
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 685
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 690
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 691
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 682
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 683
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0
    .parameter "pressed"
    .parameter "fromWhat"

    .prologue
    .line 703
    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 3020
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3021
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0d011a

    iget v2, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3038
    :cond_0
    :goto_0
    return-void

    .line 3025
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3030
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3031
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    invoke-virtual {v1, p2, p3}, Lcom/android/camera/FocusManagerVideo;->getFocusArea(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 3032
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    invoke-virtual {v1, p2, p3}, Lcom/android/camera/FocusManagerVideo;->getFocusArea(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 3033
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3034
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerVideo;->getAutoFocusCallback()Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2401
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManagerVideo;->setPreviewSize(II)V

    .line 2402
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 612
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    .line 616
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1191
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1192
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1193
    :cond_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 4

    .prologue
    .line 2937
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 2938
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2939
    const-class v1, Lcom/android/camera/VideoCameraPreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2940
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2941
    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2942
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mSettingActivityShow:Z

    .line 2943
    invoke-static {v1}, Lcom/android/camera/VideoCameraPreferenceActivity;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2944
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2945
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1122
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFromStop:Z

    if-nez v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1124
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mSettingActivityShow:Z

    if-nez v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1128
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetSettings()V

    .line 1130
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 1141
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_7

    .line 1143
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1149
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 1150
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1151
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1153
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1157
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectDisplay()V

    .line 1170
    :goto_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 1171
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1172
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1174
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetScreenOn()V

    .line 1175
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    .line 1177
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1179
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1180
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1181
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1182
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 1183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    .line 1186
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    goto :goto_0

    .line 1133
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d0084

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/android/camera/CameraSettings;->resetSpecificSettings(Lcom/android/camera/ComboPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->reloadPreferences()V

    .line 1136
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->resetSettings(Lcom/android/camera/ComboPreferences;)V

    goto :goto_1

    .line 1145
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 1146
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1147
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    goto :goto_2

    .line 1166
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1167
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->clearVideoNamer()V

    goto :goto_3
.end method

.method protected performShutterClick()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    .line 1275
    return-void
.end method

.method protected resetAllStatus()V
    .locals 3

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d0084

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2951
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2952
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2953
    const-string v1, "pref_camera_coloreffect_key"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2954
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2955
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2959
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_speed_key"

    const v2, 0x7f0d00f9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2961
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2962
    const-string v0, "normal"

    .line 2963
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2964
    const-string v2, "pref_video_speed_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2965
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2966
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2968
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_2

    .line 2969
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2970
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->exitHDR()V

    .line 2972
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 941
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    .line 943
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-nez v0, :cond_0

    .line 945
    iput v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 946
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 950
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 951
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-nez v0, :cond_5

    .line 952
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 953
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 955
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "open_camera_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 956
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 957
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 959
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 960
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v0, :cond_9

    .line 961
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    const v0, 0x7f0d0002

    :goto_1
    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 970
    :catch_0
    move-exception v0

    .line 973
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_4

    .line 974
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 976
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 977
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 978
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 982
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initializeZoom()V

    .line 984
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 987
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 989
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 990
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 991
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 992
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 993
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 994
    new-instance v1, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 995
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 997
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_6

    .line 998
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getLastThumbnail()V

    .line 1001
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onSettingsBack()V

    .line 1003
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_7

    .line 1004
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    .line 1005
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1008
    :cond_7
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1010
    new-instance v0, Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$VideoNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    .line 1011
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 961
    :cond_8
    const v0, 0x7f0d0001

    goto/16 :goto_1

    .line 966
    :cond_9
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_3

    .line 967
    const v0, 0x7f0d0003

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected sendFadeoutZoomMsg()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 1279
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1283
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 569
    const/16 v5, 0x11

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

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v3, v5

    const/4 v6, 0x5

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    aput-object v5, v3, v6

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    aput-object v6, v3, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    aput-object v6, v3, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    aput-object v6, v3, v5

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v6, v3, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    aput-object v6, v3, v5

    const/16 v6, 0xe

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    const/16 v6, 0xf

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    const/16 v6, 0x10

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    .line 574
    .local v3, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    .line 575
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 574
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 569
    .end local v0           #arr$:[Lcom/android/camera/ui/Rotatable;
    .end local v1           #i$:I
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    .end local v3           #indicators:[Lcom/android/camera/ui/Rotatable;
    .end local v4           #len$:I
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v5}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v5

    goto :goto_0

    .line 578
    .restart local v0       #arr$:[Lcom/android/camera/ui/Rotatable;
    .restart local v1       #i$:I
    .restart local v3       #indicators:[Lcom/android/camera/ui/Rotatable;
    .restart local v4       #len$:I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->setOrientationIndicator(IZ)V

    .line 597
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 3011
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3012
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewFrameLayout;->showBorder(Z)V

    .line 3013
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3015
    :cond_0
    return-void

    .line 3013
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 931
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->stop()V

    .line 932
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFromStop:Z

    .line 934
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->pause()V

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFromStop:Z

    .line 937
    :cond_0
    return-void
.end method

.method protected switchHDR()V
    .locals 1

    .prologue
    .line 2924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 2925
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->switchHDR()V

    .line 2926
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3043
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 3045
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3059
    :cond_0
    :goto_0
    return-void

    .line 3048
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_3

    .line 3049
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3050
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    goto :goto_0

    .line 3053
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    .line 3054
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_0

    .line 3055
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    if-eqz v0, :cond_0

    .line 3056
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    .line 3057
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_0
.end method
