.class public Lcom/android/gallery3d/app/PhotoPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/AppBridge$Server;
.implements Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
.implements Lcom/android/gallery3d/app/OrientationManager$Listener;
.implements Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;
.implements Lcom/android/gallery3d/ui/PhotoView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;,
        Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;,
        Lcom/android/gallery3d/app/PhotoPage$Model;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private volatile mActionBarAllowed:Z

.field private mAppBridge:Lcom/android/gallery3d/app/AppBridge;

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

.field private mCameraSwitchCutoff:J

.field private mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

.field private mDeferUpdateUntil:J

.field private mDeferredUpdateWaiting:Z

.field private mDeleteIsFocus:Z

.field private mDeletePath:Lcom/android/gallery3d/data/Path;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHasCameraScreennailOrPlaceholder:Z

.field private mHaveImageEditor:Z

.field private mIsActive:Z

.field private mIsMenuVisible:Z

.field private mIsPanorama:Z

.field private mIsPanorama360:Z

.field private mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private final mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

.field private mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

.field private mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

.field private mRecenterCameraOnResume:Z

.field private final mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

.field private mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

.field private mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

.field private mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSetPathString:Ljava/lang/String;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mShowSpinner:Z

.field private mSkipUpdateCurrentPhoto:Z

.field private mStartInFilmstrip:Z

.field private mTreatBackAsUp:Z

.field private final mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private final mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 138
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 140
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 141
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 147
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 160
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 161
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    .line 168
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 173
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 179
    new-array v0, v3, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    .line 181
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    .line 185
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$1;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 196
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$2;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 207
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$3;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 265
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$4;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 963
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$8;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$8;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 1436
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPageBottomControls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/data/MediaItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama360:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/gallery3d/app/PhotoPage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/gallery3d/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/gallery3d/app/PhotoPage;->createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoPage;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/PhotoPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updatePanoramaUI(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/PhotoPage;)[Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    return-void
.end method

.method private canDoSlideShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 796
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v0

    .line 799
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 802
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/data/MtpSource;->isMtpPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 840
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v0

    .line 844
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-eqz v1, :cond_0

    .line 846
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 4
    .parameter "mediaObject"

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    .line 659
    .local v0, type:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "contentUri"

    .prologue
    .line 666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private hideBars()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 823
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 829
    :goto_0
    return-void

    .line 824
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 825
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 826
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 827
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 828
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 1106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1108
    return-void
.end method

.method private launchCamera()V
    .locals 3

    .prologue
    .line 691
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v2, Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 693
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 694
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 695
    return-void
.end method

.method private launchPhotoEditor()V
    .locals 5

    .prologue
    .line 698
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 699
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_nextgen_edit"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 708
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 710
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    :cond_2
    const-string v2, "launch-fullscreen"

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 714
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 716
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    goto :goto_0
.end method

.method private launchTinyPlanet()V
    .locals 4

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 680
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.TINY_PLANET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 682
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 684
    const-string v0, "launch-fullscreen"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 686
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 687
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    .line 688
    return-void
.end method

.method private onUpPressed()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 890
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 915
    :cond_1
    :goto_0
    return-void

    .line 896
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 897
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 898
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 902
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_4

    .line 906
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 907
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v1, "parent-media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 913
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private overrideTransitionToEditor()V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x10a0002

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 675
    return-void
.end method

.method private refreshHidingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 832
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 833
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 836
    :cond_0
    return-void
.end method

.method private requestDeferredUpdate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 720
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 721
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    if-nez v0, :cond_0

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 723
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 725
    :cond_0
    return-void
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 1238
    if-nez p1, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_0

    .line 1242
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 1243
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/Path;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1246
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1247
    const-string v3, "media-set-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v1, "media-item-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1252
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0
.end method

.method private setNfcBeamPushUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 655
    return-void
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 918
    .line 919
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 920
    const-string v1, "return-index-hint"

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 921
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 922
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 639
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v1, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 642
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 643
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 644
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$7;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private showBars()V
    .locals 2

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 820
    :goto_0
    return-void

    .line 814
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 815
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 816
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 817
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 818
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 819
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    goto :goto_0
.end method

.method private showDetails()V
    .locals 5

    .prologue
    .line 1111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1112
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1113
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1114
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$9;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1122
    return-void
.end method

.method private switchToGrid()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 986
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 987
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    if-eqz v0, :cond_2

    .line 991
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    .line 992
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 994
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 995
    const-string v0, "media-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v0, "parent-media-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v4, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v0

    .line 1003
    const-string v4, "cluster-menu"

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1006
    const-string v0, "app-bridge"

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1009
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "return-index-hint"

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1012
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_6

    .line 1013
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1003
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1006
    goto :goto_2

    .line 1009
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    goto :goto_3

    .line 1015
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private toggleBars()V
    .locals 1

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_1

    .line 855
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto :goto_0
.end method

.method private transitionFromAlbumPageIfNeeded()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1347
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    .line 1349
    const-string v0, "albumpage-transition"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1352
    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    if-eqz v0, :cond_3

    .line 1356
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 1357
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resetToFirstPicture()V

    .line 1372
    :cond_0
    :goto_0
    const/4 v0, 0x2

    if-ne v3, v0, :cond_6

    .line 1373
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1377
    :cond_2
    :goto_2
    return-void

    .line 1359
    :cond_3
    const-string v0, "index-hint"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1360
    if-ltz v0, :cond_0

    .line 1361
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v2, :cond_4

    .line 1363
    add-int/lit8 v0, v0, 0x1

    .line 1365
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1366
    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 1367
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->moveTo(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1373
    goto :goto_1

    .line 1374
    :cond_6
    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    .line 1375
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_2
.end method

.method private updateBars()V
    .locals 1

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 865
    :cond_0
    return-void
.end method

.method private updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-ne v0, p1, :cond_0

    .line 758
    :goto_0
    return-void

    .line 752
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 753
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->requestDeferredUpdate()V

    goto :goto_0

    .line 756
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    goto :goto_0
.end method

.method private updateMenuOperations()V
    .locals 5

    .prologue
    .line 774
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 777
    .local v1, menu:Landroid/view/Menu;
    if-nez v1, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    const v3, 0x7f1000c4

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 780
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 781
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canDoSlideShow()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 783
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    .line 785
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    .line 786
    .local v2, supportedOperations:I
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v3, :cond_5

    .line 787
    and-int/lit8 v2, v2, 0x1

    .line 791
    :cond_3
    :goto_2
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    .line 792
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    goto :goto_0

    .line 781
    .end local v2           #supportedOperations:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 788
    .restart local v2       #supportedOperations:I
    :cond_5
    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-nez v3, :cond_3

    .line 789
    and-int/lit16 v2, v2, -0x201

    goto :goto_2
.end method

.method private updatePanoramaUI(Z)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f1000ea

    .line 1475
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1478
    if-nez v0, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    invoke-static {v0, p1, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuForPanorama(Landroid/view/Menu;ZZ)V

    .line 1484
    if-eqz p1, :cond_2

    .line 1485
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1486
    if-eqz v0, :cond_0

    .line 1487
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1488
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1490
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 1491
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1492
    if-eqz v0, :cond_0

    .line 1493
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1494
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateProgressBar()V
    .locals 4

    .prologue
    .line 761
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    if-eqz v2, :cond_0

    .line 762
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 763
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v1

    .line 764
    .local v1, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_0

    .line 765
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StitchingProgressManager;->getProgress(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 766
    .local v0, progress:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 767
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->setProgress(I)V

    .line 771
    .end local v0           #progress:Ljava/lang/Integer;
    .end local v1           #progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    :cond_0
    return-void
.end method

.method private updateUIForCurrentPhoto()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    .line 748
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 738
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 739
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 740
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails()V

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 747
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V

    goto :goto_0
.end method

.method private wantBars()V
    .locals 1

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 851
    :cond_0
    return-void
.end method


# virtual methods
.method public addSecureAlbumItem(ZI)V
    .locals 1
    .parameter "isVideo"
    .parameter "id"

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/data/SecureAlbum;->addMediaItem(ZI)V

    .line 952
    return-void
.end method

.method public canDisplayBottomControl(I)Z
    .locals 4
    .parameter "control"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 600
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_0

    .line 615
    :goto_0
    return v1

    .line 603
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 605
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 610
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama:Z

    goto :goto_0

    .line 612
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama360:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x7f10008f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public canDisplayBottomControls()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 262
    const v0, 0x7f0a001d

    return v0
.end method

.method public notifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 946
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SnailAlbum;->notifyChange()V

    .line 947
    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 1175
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 1176
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1177
    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1182
    return-void
.end method

.method public onAlbumModeSelected(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1456
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1457
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->switchToGrid()V

    .line 1459
    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 875
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->switchWithCaptureAnimation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 879
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 880
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_0

    .line 881
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_4

    .line 882
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 884
    :cond_4
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onBottomControlClicked(I)V
    .locals 2
    .parameter "control"

    .prologue
    .line 621
    packed-switch p1, :pswitch_data_0

    .line 633
    :goto_0
    return-void

    .line 623
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchPhotoEditor()V

    goto :goto_0

    .line 626
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getPanoramaViewHelper()Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->showPanorama(Landroid/net/Uri;)V

    goto :goto_0

    .line 630
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchTinyPlanet()V

    goto :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x7f10008f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCommitDeleteImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1217
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 1222
    :goto_0
    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1219
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1220
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const v1, 0x7f1000ed

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 1221
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 20
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 278
    invoke-super/range {p0 .. p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 280
    new-instance v2, Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 281
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 283
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/OrientationManager;->addListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 291
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$5;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/app/PhotoPage$5;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 409
    const-string v2, "media-set-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->setupNfcBeamPush()V

    .line 412
    const-string v2, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 413
    .local v13, itemPathString:Ljava/lang/String;
    if-eqz v13, :cond_a

    const-string v2, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 416
    .local v5, itemPath:Lcom/android/gallery3d/data/Path;
    :goto_0
    const-string v2, "treat-back-as-up"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    .line 417
    const-string v2, "start-in-filmstrip"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    .line 418
    const-string v2, "in_camera_roll"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 419
    .local v12, inCameraRoll:Z
    const-string v2, "index-hint"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 421
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 422
    const-string v2, "app-bridge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_b

    .line 424
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 425
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 429
    invoke-static {}, Lcom/android/gallery3d/data/SnailSource;->newId()I

    move-result v11

    .line 430
    .local v11, id:I
    invoke-static {v11}, Lcom/android/gallery3d/data/SnailSource;->getSetPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v19

    .line 431
    .local v19, screenNailSetPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v11}, Lcom/android/gallery3d/data/SnailSource;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v18

    .line 432
    .local v18, screenNailItemPath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SnailAlbum;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 438
    const-string v2, "show_when_locked"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mFlags:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mFlags:I

    .line 444
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v3, "/local/all/0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery3d/data/SecureSource;->isSecurePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SecureAlbum;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    .line 449
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 451
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/filter/empty/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 456
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/combo/item/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 460
    move-object/from16 v5, v18

    .line 468
    .end local v11           #id:I
    .end local v18           #screenNailItemPath:Lcom/android/gallery3d/data/Path;
    .end local v19           #screenNailSetPath:Lcom/android/gallery3d/data/Path;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v16

    .line 470
    .local v16, originalSet:Lcom/android/gallery3d/data/MediaSet;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/gallery3d/data/ComboAlbum;

    if-eqz v2, :cond_4

    move-object/from16 v2, v16

    .line 473
    check-cast v2, Lcom/android/gallery3d/data/ComboAlbum;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/ComboAlbum;->useNameOfChild(I)V

    .line 475
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/filter/delete/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-nez v2, :cond_5

    .line 480
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to restore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_5
    if-nez v5, :cond_7

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v15

    .line 484
    .local v15, mediaItemCount:I
    if-lez v15, :cond_9

    .line 485
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-lt v2, v15, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 486
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 493
    .end local v15           #mediaItemCount:I
    :cond_7
    new-instance v1, Lcom/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v7, :cond_c

    const/4 v7, -0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v8, :cond_d

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v9, :cond_e

    const/4 v9, 0x0

    :goto_4
    invoke-direct/range {v1 .. v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZZ)V

    .line 498
    .local v1, pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 501
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/app/PhotoPage$6;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 565
    .end local v1           #pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    .end local v16           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_10

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_11

    const v2, 0x7f10000a

    :goto_7
    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 568
    .local v10, galleryRoot:Landroid/widget/RelativeLayout;
    if-eqz v10, :cond_9

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v2, :cond_8

    .line 570
    new-instance v2, Lcom/android/gallery3d/app/PhotoPageBottomControls;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v10}, Lcom/android/gallery3d/app/PhotoPageBottomControls;-><init>(Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    .line 572
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v17

    .line 573
    .local v17, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v17, :cond_9

    .line 574
    new-instance v2, Lcom/android/gallery3d/app/PhotoPageProgressBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3, v10}, Lcom/android/gallery3d/app/PhotoPageProgressBar;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    .line 575
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v2, :cond_9

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 582
    .end local v10           #galleryRoot:Landroid/widget/RelativeLayout;
    .end local v17           #progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    :cond_9
    return-void

    .line 413
    .end local v5           #itemPath:Lcom/android/gallery3d/data/Path;
    .end local v12           #inCameraRoll:Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 461
    .restart local v5       #itemPath:Lcom/android/gallery3d/data/Path;
    .restart local v12       #inCameraRoll:Z
    :cond_b
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/combo/item/{/filter/camera_shortcut,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 465
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    goto/16 :goto_1

    .line 493
    .restart local v16       #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AppBridge;->isPanorama()Z

    move-result v8

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AppBridge;->isStaticCamera()Z

    move-result v9

    goto/16 :goto_4

    .line 557
    .end local v16           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v14

    check-cast v14, Lcom/android/gallery3d/data/MediaItem;

    .line 559
    .local v14, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    new-instance v2, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {v2, v3, v4, v14}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 561
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    .line 562
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    goto/16 :goto_5

    .line 565
    .end local v14           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 566
    :cond_11
    const v2, 0x7f100061

    goto/16 :goto_7
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v1, 0x7f12000a

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->createActionBarMenu(ILandroid/view/Menu;)V

    .line 957
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v1, "image/*"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 958
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 959
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 960
    const/4 v0, 0x1

    return v0

    .line 959
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onCurrentImageUpdated()V
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 1326
    return-void
.end method

.method public onDeleteImage(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "offset"

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 1200
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    .line 1201
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 1202
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->addDeletion(Lcom/android/gallery3d/data/Path;I)V

    .line 1203
    return-void

    .line 1201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1419
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 1421
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1422
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->detachScreenNail()V

    .line 1423
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 1424
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 1425
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;->removeListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 1428
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 1429
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->cleanup()V

    .line 1432
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1433
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 1434
    return-void
.end method

.method public onFilmModeChanged(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 1330
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1331
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_0

    .line 1332
    if-eqz p1, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 1339
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 1340
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1344
    :goto_1
    return-void

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    goto :goto_0

    .line 1342
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_1
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 1186
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1188
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1189
    return-void

    .end local v0           #m:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 1186
    goto :goto_0
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1022
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v0, :cond_0

    move v0, v1

    .line 1101
    :goto_0
    return v0

    .line 1023
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1024
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 1026
    if-nez v3, :cond_1

    move v0, v1

    .line 1028
    goto :goto_0

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v4

    .line 1032
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 1034
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    .line 1035
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 1036
    const/4 v0, 0x0

    .line 1037
    sparse-switch v7, :sswitch_data_0

    move v0, v2

    .line 1101
    goto :goto_0

    .line 1039
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    move v0, v1

    .line 1040
    goto :goto_0

    .line 1043
    :sswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1044
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string v2, "media-item-path"

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v2, "photo-index"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1047
    const-string v2, "repeat"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1048
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    move v0, v1

    .line 1050
    goto :goto_0

    .line 1053
    :sswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 1054
    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.android.camera.action.EDITOR_CROP"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1055
    const-class v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1056
    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1058
    invoke-static {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {v2, v4, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 1061
    goto/16 :goto_0

    .line 1058
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 1064
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/android/gallery3d/app/TrimVideo;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1065
    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1067
    const-string v2, "media-item-path"

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 1069
    goto/16 :goto_0

    .line 1072
    :sswitch_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchPhotoEditor()V

    move v0, v1

    .line 1073
    goto/16 :goto_0

    .line 1076
    :sswitch_5
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_3

    .line 1077
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    :goto_2
    move v0, v1

    .line 1081
    goto/16 :goto_0

    .line 1079
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showDetails()V

    goto :goto_2

    .line 1084
    :sswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f11

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1090
    :sswitch_7
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1091
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1092
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v2, p1, v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v0, v1

    .line 1093
    goto/16 :goto_0

    .line 1095
    :sswitch_8
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1096
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1097
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v3, Lcom/android/gallery3d/ui/ImportCompleteListener;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v2, p1, v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v0, v1

    .line 1099
    goto/16 :goto_0

    .line 1037
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1000c4 -> :sswitch_1
        0x7f1000eb -> :sswitch_8
        0x7f1000ed -> :sswitch_6
        0x7f1000ee -> :sswitch_4
        0x7f1000ef -> :sswitch_7
        0x7f1000f0 -> :sswitch_7
        0x7f1000f1 -> :sswitch_2
        0x7f1000f2 -> :sswitch_7
        0x7f1000f3 -> :sswitch_5
        0x7f1000f4 -> :sswitch_7
        0x7f1000f5 -> :sswitch_3
    .end sparse-switch
.end method

.method public onOrientationCompensationChanged()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 870
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1298
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 1299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 1301
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 1302
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1304
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 1306
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 1310
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->pause()V

    .line 1311
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1312
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1313
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1314
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1315
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_2

    .line 1316
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    .line 1318
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 1319
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 1320
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->clearDeletion()V

    .line 1321
    :cond_3
    return-void
.end method

.method public onPictureCenter(Z)V
    .locals 4
    .parameter "isCamera"

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x9

    const/4 v0, 0x0

    .line 586
    if-nez p1, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 587
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 588
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 591
    return-void

    :cond_1
    move p1, v0

    .line 586
    goto :goto_0

    :cond_2
    move v0, v2

    .line 590
    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1381
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 1383
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1415
    :goto_0
    return-void

    .line 1387
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->transitionFromAlbumPageIfNeeded()V

    .line 1389
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->freeze()V

    .line 1390
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 1391
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 1393
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    .line 1394
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resume()V

    .line 1395
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 1397
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1398
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1399
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v2, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 1403
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_2

    .line 1404
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 1405
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1407
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v2, "image/*"

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1408
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eq v0, v2, :cond_3

    .line 1409
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 1410
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1413
    :cond_3
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1414
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1395
    goto :goto_1
.end method

.method public onSingleTapUp(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1129
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_1

    .line 1130
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->onSingleTapUp(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2, v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    .line 1134
    if-eqz v6, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    if-eq v6, v2, :cond_0

    .line 1139
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v3

    .line 1140
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_3

    move v2, v1

    .line 1141
    :goto_1
    and-int/lit16 v4, v3, 0x2000

    if-eqz v4, :cond_4

    move v5, v1

    .line 1142
    :goto_2
    and-int/lit16 v4, v3, 0x4000

    if-eqz v4, :cond_5

    move v4, v1

    .line 1143
    :goto_3
    const/high16 v7, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_6

    move v3, v1

    .line 1145
    :goto_4
    if-eqz v2, :cond_c

    .line 1148
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    .line 1149
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v7

    .line 1150
    div-int/lit8 v8, v2, 0x2

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0xc

    if-gt v8, v2, :cond_2

    div-int/lit8 v2, v7, 0x2

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    if-gt v2, v7, :cond_2

    move v0, v1

    .line 1154
    :cond_2
    :goto_5
    if-eqz v0, :cond_8

    .line 1155
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v0, :cond_7

    .line 1156
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v0

    .line 1140
    goto :goto_1

    :cond_4
    move v5, v0

    .line 1141
    goto :goto_2

    :cond_5
    move v4, v0

    .line 1142
    goto :goto_3

    :cond_6
    move v3, v0

    .line 1143
    goto :goto_4

    .line 1158
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 1160
    :cond_8
    if-eqz v4, :cond_9

    .line 1161
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onBackPressed()V

    goto :goto_0

    .line 1162
    :cond_9
    if-eqz v5, :cond_a

    .line 1163
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1164
    const-string v2, "dismiss-keyguard"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1165
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1166
    :cond_a
    if-eqz v3, :cond_b

    .line 1167
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V

    goto/16 :goto_0

    .line 1169
    :cond_b
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->toggleBars()V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto :goto_5
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 1258
    if-nez p2, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1266
    :cond_2
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1267
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1286
    :pswitch_0
    if-eqz p3, :cond_0

    .line 1287
    const-string v1, "media-item-path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1288
    const-string v2, "photo-index"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1289
    if-eqz v1, :cond_0

    .line 1290
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 1269
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1272
    :pswitch_2
    if-ne p2, v2, :cond_0

    .line 1273
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1277
    :pswitch_3
    if-ne p2, v2, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1279
    const v2, 0x7f0d0157

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0d019e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1281
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onUndoBarVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1501
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1502
    return-void
.end method

.method public onUndoDeleteImage()V
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1210
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setFocusHintPath(Lcom/android/gallery3d/data/Path;)V

    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->removeDeletion(Lcom/android/gallery3d/data/Path;)V

    .line 1212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1226
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "treat-up-as-back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1230
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :goto_0
    return-void

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    const v0, 0x7f0d0147

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public refreshBottomControlsWhenReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1463
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    if-nez v1, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 1467
    .local v0, currentPhoto:Lcom/android/gallery3d/data/MediaObject;
    if-nez v0, :cond_1

    .line 1468
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1470
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 941
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimation(I)Z

    move-result v0

    return v0
.end method
