.class public abstract Lcom/android/camera/ActivityBase;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "ActivityBase.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;
.implements Lcom/android/camera/ui/FlashButton$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ActivityBase$ZoomChangeListener;,
        Lcom/android/camera/ActivityBase$MyAppBridge;,
        Lcom/android/camera/ActivityBase$HideCameraAppView;,
        Lcom/android/camera/ActivityBase$SaveThumbnailTask;,
        Lcom/android/camera/ActivityBase$LoadThumbnailTask;,
        Lcom/android/camera/ActivityBase$CameraOpenThread;
    }
.end annotation


# instance fields
.field protected mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field protected mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

.field protected mApplication:Lcom/android/camera/CameraAppImpl;

.field protected mCameraAppView:Landroid/view/View;

.field private mCameraBrightness:Lcom/android/camera/CameraBrightness;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraId:I

.field protected mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

.field private mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field protected mCameraSound:Lcom/android/camera/MiuiCameraSound;

.field protected mCloseActivityThread:Ljava/lang/Thread;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentSimpleMode:Ljava/lang/String;

.field private mDeletePictureFilter:Landroid/content/IntentFilter;

.field private mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

.field protected mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field protected mFlashModeButton:Lcom/android/camera/ui/FlashButton;

.field protected mHDRExitArea:Landroid/view/View;

.field protected mHDRExitButton:Landroid/widget/TextView;

.field protected mHDRStatus:Z

.field protected mHasSwitchedToFront:Z

.field private mHideCameraAppView:Lcom/android/camera/ActivityBase$HideCameraAppView;

.field protected mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationManager:Lcom/android/camera/LocationManager;

.field protected mModeManager:Lcom/android/camera/ModeManager;

.field protected mModePicker:Lcom/android/camera/ModeChangeManager;

.field protected mNumberOfCameras:I

.field protected mOpenCameraFail:Z

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mPreferences:Lcom/android/camera/ComboPreferences;

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field protected mScreenHint:Lcom/android/camera/ui/ScreenHint;

.field protected mSettingActivityShow:Z

.field protected mSettingButton:Lcom/android/camera/ui/SettingButton;

.field protected mSettingView:Lcom/android/camera/ui/SettingView;

.field protected mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

.field protected mShowCameraAppView:Z

.field protected mShowWhenLocked:Z

.field protected mShutterButton:Lcom/android/camera/ShutterButton;

.field protected mSimpleExitArea:Landroid/view/View;

.field protected mSimpleExitButton:Landroid/widget/TextView;

.field private mSingleTapArea:Landroid/view/View;

.field protected mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

.field protected mThumbnail:Lcom/android/camera/Thumbnail;

.field protected mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

.field protected mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

.field protected mThumbnailView:Lcom/android/camera/ui/RotateImageView;

.field protected mThumbnailViewWidth:I

.field protected mUIStyle:I

.field private mUpdateThumbnailDelayed:Z

.field protected mZoomControl:Lcom/android/camera/ui/ZoomControl;

.field protected mZoomMax:I

.field protected mZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 115
    iput v3, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.gallery3d.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    .line 137
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHasSwitchedToFront:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    .line 160
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    .line 161
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mSettingActivityShow:Z

    .line 164
    iput v3, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    .line 167
    iput v2, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    .line 168
    iput v3, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    .line 173
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    .line 180
    new-instance v0, Lcom/android/camera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$1;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 1164
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ActivityBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/ActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase;->onFullScreenChanged(Z)V

    return-void
.end method

.method private initializeFlashModeButton(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;I)V
    .locals 2
    .parameter "listener"
    .parameter "flashResId"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-nez v0, :cond_0

    .line 739
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FlashButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/ui/FlashButton;->initialize(ILjava/util/List;)V

    .line 742
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FlashButton;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 743
    return-void
.end method

.method private initializeSkinBeautifyButton(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    if-nez v0, :cond_0

    .line 731
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SkinBeautifyButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/SkinBeautifyButton;->initialize()V

    .line 734
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SkinBeautifyButton;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 735
    return-void
.end method

.method private isShowWhenLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 259
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 260
    const-string v2, "ShowCameraWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 262
    :cond_0
    return v1
.end method

.method private onFullScreenChanged(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-ne v0, p1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    .line 595
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHideCameraAppView:Lcom/android/camera/ActivityBase$HideCameraAppView;

    if-nez v0, :cond_2

    .line 598
    new-instance v0, Lcom/android/camera/ActivityBase$HideCameraAppView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ActivityBase$HideCameraAppView;-><init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHideCameraAppView:Lcom/android/camera/ActivityBase$HideCameraAppView;

    .line 599
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 602
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 606
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getLastThumbnailUncached()V

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z

    goto :goto_0
.end method


# virtual methods
.method protected addMuteToParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .prologue
    .line 933
    const-string v0, "camera-service-mute"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method protected addSecureNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase$MyAppBridge;->getSecureSize()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase$MyAppBridge;->setSecureSize(I)V

    .line 1013
    :cond_0
    return-void
.end method

.method protected collapseCameraControls()Z
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    const/4 v0, 0x1

    .line 857
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected collapsePopupForSimpleMode()Z
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 865
    const/4 v0, 0x1

    .line 868
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createCameraScreenNail(Z)V
    .locals 4

    .prologue
    .line 531
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 532
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 533
    const-string v0, "/local/all/"

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    const-string v2, "media-set-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v2, "media-item-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 543
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->recycle()V

    .line 546
    :cond_0
    new-instance v0, Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$MyAppBridge;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    .line 547
    const-string v0, "app-bridge"

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 549
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 554
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase$MyAppBridge;->setSecure(Z)V

    .line 556
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SecurePictureNum"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase$MyAppBridge;->setSecureSize(I)V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 559
    return-void

    .line 537
    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public dismissSettingView()V
    .locals 0

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 1007
    return-void
.end method

.method protected enableCameraControls(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ModeManager;->enableSettingView(Z)V

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ModeChangeManager;->setEnabled(Z)V

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraPickerButton;->setEnabled(Z)V

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 886
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 887
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    if-eqz v0, :cond_6

    .line 888
    if-eqz p1, :cond_8

    .line 889
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 894
    :cond_6
    :goto_1
    return-void

    .line 889
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 891
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public exitHDR()V
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->exitHDRMode(Z)V

    .line 987
    return-void
.end method

.method protected exitHDRMode(Z)V
    .locals 2
    .parameter "changeSettings"

    .prologue
    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    .line 976
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->setHDRStatus(Z)V

    .line 977
    if-eqz p1, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->onSharedPreferenceChanged()V

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 981
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 982
    return-void
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method protected getLastThumbnail()V
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 441
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateThumbnailView()V

    .line 442
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 445
    :cond_0
    return-void
.end method

.method protected getLastThumbnailUncached()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 449
    :cond_0
    new-instance v0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 450
    return-void
.end method

.method protected getMarginValue(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 998
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1000
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method protected getSecureNum()I
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->getSecureSize()I

    move-result v0

    .line 1019
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected gotoGallery()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$100(Lcom/android/camera/ActivityBase$MyAppBridge;I)V

    .line 509
    return-void
.end method

.method protected handleVolumeKeyEvent(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 794
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_volumekey_function_key"

    const v3, 0x7f0d0174

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 796
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-nez v2, :cond_1

    .line 817
    :cond_0
    :goto_0
    return v0

    .line 799
    :cond_1
    const-string v2, "shutter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->performShutterClick()V

    goto :goto_0

    .line 802
    :cond_2
    const-string v2, "zoom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 803
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v1, :cond_4

    .line 804
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 805
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 806
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 807
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v1}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 808
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->sendFadeoutZoomMsg()V

    .line 809
    if-eqz p1, :cond_3

    .line 810
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->zoomIn()V

    goto :goto_0

    .line 812
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->zoomOut()V

    goto :goto_0

    .line 817
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasFrontCamera()Z
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hideScreenSettingView()Z
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->dismiss()V

    .line 724
    const/4 v0, 0x1

    .line 726
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initSettingButton()V
    .locals 2

    .prologue
    .line 694
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    .line 695
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 696
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    new-instance v1, Lcom/android/camera/ActivityBase$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ActivityBase$3;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingButton;->setOnSettingButtonListener(Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;)V

    .line 712
    return-void
.end method

.method protected initializeCameraControls(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "flashResId"

    .prologue
    .line 716
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ActivityBase;->initializeFlashModeButton(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;I)V

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->initializeCameraPickerButton(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 718
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase;->initializeSkinBeautifyButton(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 719
    return-void
.end method

.method protected initializeCameraPickerButton(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    if-nez v0, :cond_0

    .line 747
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraPickerButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hasFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v1}, Lcom/android/camera/ModeManager;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraPickerButton;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 751
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraPickerButton;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected initializeZoom()V
    .locals 3

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mZoomMax:I

    .line 825
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomMax(I)V

    .line 826
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 827
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 828
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    new-instance v1, Lcom/android/camera/ActivityBase$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ActivityBase$ZoomChangeListener;-><init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method protected isBackCamera()Z
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFrontCamera()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 323
    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanoramaActivity()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method protected launchHDRMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    .line 962
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateHDRExitText()V

    .line 963
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->setHDRStatus(Z)V

    .line 964
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->onSharedPreferenceChanged()V

    .line 965
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 968
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 971
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/ActivityBase;->setOrientationIndicator(IZ)V

    .line 972
    return-void
.end method

.method protected notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V
    invoke-static {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$600(Lcom/android/camera/ActivityBase$MyAppBridge;)V

    .line 684
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->disableToggleStatusBar()V

    .line 217
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->isShowWhenLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    .line 218
    const v0, 0x7f0f0027

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 220
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 223
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 225
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 228
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    .line 229
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 230
    new-instance v0, Lcom/android/camera/ui/ScreenHint;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ScreenHint;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    .line 231
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraAppImpl;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    .line 234
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->addActivity(Landroid/app/Activity;)V

    .line 235
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraErrorCallback;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 236
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mPowerManager:Landroid/os/PowerManager;

    .line 237
    new-instance v0, Lcom/android/camera/MiuiCameraSound;

    invoke-direct {v0, p0}, Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 238
    new-instance v0, Lcom/android/camera/CameraBrightness;

    invoke-direct {v0}, Lcom/android/camera/CameraBrightness;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    .line 239
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/ActivityBase$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ActivityBase$2;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v0, :cond_1

    .line 251
    instance-of v0, p0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    .line 252
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->lockScreenDelayed()V

    .line 255
    :cond_1
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 418
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->removeActivity(Landroid/app/Activity;)V

    .line 404
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    .line 405
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->removeInstance(Landroid/content/Context;)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->release()V

    .line 408
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 410
    :cond_0
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 411
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->onDestroy()V

    .line 412
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 413
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 367
    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    .line 368
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    const/16 v1, 0x52

    if-ne p1, v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingButton;->onClick(Landroid/view/View;)V

    .line 374
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_0

    .line 378
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 15
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 621
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-nez v12, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p6

    if-ne v0, v1, :cond_2

    move/from16 v0, p3

    move/from16 v1, p7

    if-ne v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, p8

    if-ne v0, v1, :cond_2

    move/from16 v0, p5

    move/from16 v1, p9

    if-eq v0, v1, :cond_0

    .line 627
    :cond_2
    sub-int v11, p4, p2

    .line 628
    .local v11, width:I
    sub-int v4, p5, p3

    .line 629
    .local v4, height:I
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v12

    rem-int/lit16 v12, v12, 0xb4

    if-nez v12, :cond_3

    .line 630
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v12, v11, v4}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 639
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 640
    .local v7, root:Landroid/view/View;
    const/4 v12, 0x2

    new-array v8, v12, [I

    .line 641
    .local v8, rootLocation:[I
    const/4 v12, 0x2

    new-array v10, v12, [I

    .line 642
    .local v10, viewLocation:[I
    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 643
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 645
    const/4 v12, 0x0

    aget v12, v10, v12

    const/4 v13, 0x0

    aget v13, v8, v13

    sub-int v5, v12, v13

    .line 646
    .local v5, l:I
    const/4 v12, 0x1

    aget v12, v10, v12

    const/4 v13, 0x1

    aget v13, v8, v13

    sub-int v9, v12, v13

    .line 647
    .local v9, t:I
    add-int v6, v5, v11

    .line 648
    .local v6, r:I
    add-int v2, v9, v4

    .line 649
    .local v2, b:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v9, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 650
    .local v3, frame:Landroid/graphics/Rect;
    const-string v12, "ActivityBase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "set CameraRelativeFrame as "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->setCameraRelativeFrame(Landroid/graphics/Rect;)V
    invoke-static {v12, v3}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$400(Lcom/android/camera/ActivityBase$MyAppBridge;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 634
    .end local v2           #b:I
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v5           #l:I
    .end local v6           #r:I
    .end local v7           #root:Landroid/view/View;
    .end local v8           #rootLocation:[I
    .end local v9           #t:I
    .end local v10           #viewLocation:[I
    :cond_3
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v12, v4, v11}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_1
.end method

.method protected onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 783
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 278
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 279
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 272
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 273
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 676
    return-void
.end method

.method protected onSingleTapUp(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 660
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 672
    :goto_0
    return v1

    .line 662
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 663
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 665
    .local v0, relativeLocation:[I
    aget v1, v0, v3

    sub-int/2addr p1, v1

    .line 666
    aget v1, v0, v2

    sub-int/2addr p2, v1

    .line 667
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/camera/ActivityBase;->onSingleTapUp(Landroid/view/View;II)V

    move v1, v2

    .line 670
    goto :goto_0

    :cond_2
    move v1, v3

    .line 672
    goto :goto_0
.end method

.method protected openSettingActivity()V
    .locals 4

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 923
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 924
    const-class v1, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 925
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 926
    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 927
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mSettingActivityShow:Z

    .line 928
    invoke-static {v1}, Lcom/android/camera/CameraPreferenceActivity;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 929
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 930
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->pause()V

    .line 297
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 298
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 299
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v1}, Lcom/android/camera/CameraBrightness;->onPause()V

    .line 301
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onPause()V

    .line 302
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->saveThumbnailToFile()V

    .line 308
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->cancelHint()V

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_3

    .line 318
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 320
    :cond_3
    return-void
.end method

.method protected performShutterClick()V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method protected playCameraSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0, p1}, Lcom/android/camera/MiuiCameraSound;->playSound(I)V

    .line 940
    :cond_0
    return-void
.end method

.method protected recreateCameraScreenNail()Z
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method protected registerMotionFocusManager(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 690
    return-void
.end method

.method protected resetAllStatus()V
    .locals 0

    .prologue
    .line 879
    return-void
.end method

.method protected resetSimpleMode()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->resetAllStatus()V

    .line 874
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    const-string v1, "mode_none"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->setCurrentMode(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 877
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->resume()V

    .line 284
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mSettingActivityShow:Z

    .line 285
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 286
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 287
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v1

    .line 288
    .local v1, recordLocation:Z
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 289
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v2}, Lcom/android/camera/CameraBrightness;->onResume()V

    .line 290
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->onResume()V

    .line 291
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 292
    return-void
.end method

.method protected saveThumbnailToFile()V
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Lcom/android/camera/ActivityBase$SaveThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ActivityBase$SaveThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/Thumbnail;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 515
    :cond_0
    return-void
.end method

.method protected sendFadeoutZoomMsg()V
    .locals 0

    .prologue
    .line 787
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setContentView(I)V

    .line 355
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/GalleryActionBar;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 356
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 357
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 990
    const/4 v5, 0x2

    new-array v4, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    aput-object v6, v4, v5

    .line 991
    .local v4, views:[Landroid/view/View;
    move-object v0, v4

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 992
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/camera/ActivityBase;->getMarginValue(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/camera/ActivityBase;->updateRotateLayout(ILandroid/view/View;I)V

    .line 991
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 382
    iput p1, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    .line 383
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 384
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 387
    iput p1, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    .line 388
    iput-object p2, p0, Lcom/android/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 390
    return-void
.end method

.method protected setSingleTapUpListener(Landroid/view/View;)V
    .locals 0
    .parameter "singleTapArea"

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 656
    return-void
.end method

.method protected setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V
    invoke-static {v0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$500(Lcom/android/camera/ActivityBase$MyAppBridge;Z)V

    .line 680
    return-void
.end method

.method protected showIndicators(Z)V
    .locals 2

    .prologue
    .line 943
    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 945
    return-void

    .line 943
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected supportSkinBeautification()Z
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method protected switchHDR()V
    .locals 2

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 950
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->exitHDR()V

    .line 955
    :goto_0
    return-void

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->launchHDRMode()V

    .line 953
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected switchModeLayout()V
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->onSwitchingPassedHalf()V

    .line 1184
    return-void
.end method

.method protected tryRemoveCountDownMessage()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x64

    .line 572
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 574
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 581
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 589
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->registerMotionFocusManager(Z)V

    .line 590
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHideCameraAppView:Lcom/android/camera/ActivityBase$HideCameraAppView;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected updateFlashButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 759
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    if-nez v0, :cond_1

    .line 760
    :cond_0
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FlashButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    .line 761
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SkinBeautifyButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 764
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->supportSkinBeautification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 767
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 772
    :goto_0
    return-void

    .line 769
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateHDRExitText()V
    .locals 0

    .prologue
    .line 958
    return-void
.end method

.method protected updateRotateLayout(ILandroid/view/View;I)V
    .locals 3
    .parameter "degree"
    .parameter "view"
    .parameter "marginValue"

    .prologue
    const/4 v2, -0x1

    .line 897
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 900
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 918
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    return-void

    .line 902
    :sswitch_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 903
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 906
    :sswitch_1
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 907
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 910
    :sswitch_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 911
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 914
    :sswitch_3
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 915
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 900
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected updateThumbnailView()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected zoomIn()V
    .locals 3

    .prologue
    .line 832
    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomMax:I

    div-int/lit8 v0, v1, 0xc

    .line 833
    .local v0, delValue:I
    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .end local v0           #delValue:I
    :cond_0
    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 834
    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    iget v2, p0, Lcom/android/camera/ActivityBase;->mZoomMax:I

    if-le v1, v2, :cond_1

    .line 835
    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomMax:I

    iput v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget v2, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 838
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 839
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 840
    return-void
.end method

.method protected zoomOut()V
    .locals 3

    .prologue
    .line 843
    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomMax:I

    div-int/lit8 v0, v1, 0xc

    .line 844
    .local v0, delValue:I
    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .end local v0           #delValue:I
    :cond_0
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 845
    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    if-gez v1, :cond_1

    .line 846
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 848
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 849
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget v2, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 850
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 851
    return-void
.end method
