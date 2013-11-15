.class public Lcom/android/camera/ui/FlashButton;
.super Landroid/widget/RelativeLayout;
.source "FlashButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FlashButton$Callback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/camera/ui/FlashButton$Callback;

.field private mCanEnabled:Z

.field public mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

.field private mHDRStatus:Z

.field private mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mOverrideValue:Ljava/lang/String;

.field private mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "FlashButton.java"

    sput-object v0, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    .line 39
    return-void
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, value:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    if-eqz v1, :cond_0

    .line 158
    const-string v0, "off"

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getPrefrenceSize()I
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 187
    .local v0, entries:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private grayClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 114
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    const-string v0, "off"

    goto :goto_0
.end method

.method public initialize(ILjava/util/List;)V
    .locals 2
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/camera/PreferenceInflater;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, inflater:Lcom/android/camera/PreferenceInflater;
    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    .line 53
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/FlashButton;->setIconListPreference(Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    invoke-interface {v0}, Lcom/android/camera/ui/FlashButton$Callback;->dismissSettingView()V

    .line 60
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    invoke-interface {v0}, Lcom/android/camera/ui/FlashButton$Callback;->exitHDR()V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->toggle()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 44
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    .line 45
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 47
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 48
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/camera/ui/UIHelper;->measureWidthByBackground(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lcom/android/camera/ui/UIHelper;->measureHeightByBackground(Landroid/view/View;)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 71
    return-void
.end method

.method public refreshValue()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v0

    .line 151
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->reloadValue()V

    .line 144
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 146
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/camera/ui/FlashButton$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    .line 212
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    if-nez v0, :cond_1

    .line 194
    :cond_0
    const/4 p1, 0x0

    .line 199
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 201
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    :cond_2
    return-void
.end method

.method public setHDRStatus(Z)V
    .locals 0
    .parameter "hdr"

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 208
    return-void
.end method

.method public setIconListPreference(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->grayClosed()V

    .line 139
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 122
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->grayClosed()V

    .line 124
    iput-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 125
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    goto :goto_0

    .line 130
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 133
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 107
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 76
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 179
    return-void
.end method

.method public toggle()V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 93
    .local v0, index:I
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getPrefrenceSize()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 94
    const/4 v0, 0x0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 99
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch flash mode to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    goto :goto_0
.end method
