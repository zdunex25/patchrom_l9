.class public Lcom/android/camera/ui/CameraPickerButton;
.super Landroid/widget/RelativeLayout;
.source "CameraPickerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;


# static fields
.field private static final sButtonImageResource:[I


# instance fields
.field private mCameraFacing:I

.field private mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

.field private mCameras:[Ljava/lang/CharSequence;

.field private mImageResourceIndex:I

.field private mIsChangeImage:Z

.field private mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x9t 0x1t 0x2t 0x7ft
        0xbt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mImageResourceIndex:I

    .line 53
    return-void
.end method

.method private updateImageResource()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->getCurrentMode()I

    move-result v3

    if-eq v3, v1, :cond_0

    move v0, v1

    .line 70
    .local v0, bCameraMode:Z
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[I

    aget v1, v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    return-void

    .end local v0           #bCameraMode:Z
    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    .line 70
    .restart local v0       #bCameraMode:Z
    :cond_1
    sget-object v2, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[I

    aget v1, v2, v1

    goto :goto_1
.end method


# virtual methods
.method public OnRotateAxisFinished()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    iget v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public OnRotatePointFinished()V
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mIsChangeImage:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/camera/ui/CameraPickerButton;->updateImageResource()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mIsChangeImage:Z

    .line 81
    :cond_0
    return-void
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 6
    .parameter "group"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    const-string v2, "pref_camera_id_key"

    invoke-virtual {p1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 97
    .local v1, pref:Lcom/android/camera/ListPreference;
    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mPreference:Lcom/android/camera/ListPreference;

    .line 102
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    .line 103
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 104
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, cameraId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    iput v4, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    goto :goto_0

    .line 114
    :cond_2
    iput v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    goto :goto_0
.end method

.method public initializeForPanorama(Lcom/android/camera/PreferenceGroup;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "group"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 121
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iput v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    .line 126
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 132
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 135
    .local v0, newCameraIndex:I
    :goto_1
    iput v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    .line 136
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateImageView;->overturn()V

    goto :goto_0

    .line 132
    .end local v0           #newCameraIndex:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 58
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RotateImageView;->setOnRotateFinishedListener(Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;)V

    .line 60
    invoke-direct {p0}, Lcom/android/camera/ui/CameraPickerButton;->updateImageResource()V

    .line 61
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 92
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 66
    return-void
.end method
