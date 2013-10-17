.class public Lcom/android/camera/ui/CameraPicker;
.super Lcom/android/camera/ui/RotateImageView;
.source "CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mImageResource:I


# instance fields
.field private mCameras:[Ljava/lang/CharSequence;

.field private mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 39
    sget v0, Lcom/android/camera/ui/CameraPicker;->mImageResource:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setImageResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public static setImageResourceId(I)V
    .locals 0
    .parameter "imageResource"

    .prologue
    .line 45
    sput p0, Lcom/android/camera/ui/CameraPicker;->mImageResource:I

    .line 46
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    .line 54
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/CameraPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/camera/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v3, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, index:I
    iget-object v2, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 65
    .local v1, values:[Ljava/lang/CharSequence;
    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    rem-int v0, v2, v3

    .line 66
    iget-object v3, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/android/camera/ui/CameraPicker;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v2}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/ui/CameraPicker;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 50
    return-void
.end method
