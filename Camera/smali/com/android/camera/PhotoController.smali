.class public Lcom/android/camera/PhotoController;
.super Lcom/android/camera/PieController;
.source "PhotoController.java"

# interfaces
.implements Lcom/android/camera/ui/ListPrefSettingPopup$Listener;
.implements Lcom/android/camera/ui/MoreSettingPopup$Listener;


# static fields
.field private static FLOAT_PI_DIVIDED_BY_TWO:F

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mModule:Lcom/android/camera/PhotoModule;

.field private mOtherKeys:[Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/MoreSettingPopup;

.field private mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private final mSettingOff:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "CAM_photocontrol"

    sput-object v0, Lcom/android/camera/PhotoController;->TAG:Ljava/lang/String;

    .line 34
    const v0, 0x3fc90fdb

    sput v0, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoModule;Lcom/android/camera/ui/PieRenderer;)V
    .locals 1
    .parameter "activity"
    .parameter "module"
    .parameter "pie"

    .prologue
    .line 45
    invoke-direct {p0, p1, p3}, Lcom/android/camera/PieController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ui/PieRenderer;)V

    .line 46
    iput-object p2, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    .line 47
    const v0, 0x7f0d0014

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoController;->mSettingOff:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoController;)Lcom/android/camera/ui/MoreSettingPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoController;)Lcom/android/camera/PhotoModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    return-object v0
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pref"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/camera/PhotoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 173
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/PhotoController;->reloadPreferences()V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 7
    .parameter "group"

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x4040

    .line 51
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 52
    iput-object v3, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    .line 53
    iput-object v3, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 54
    sget v3, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    const/high16 v4, 0x4000

    div-float v2, v3, v4

    .line 55
    .local v2, sweep:F
    const-string v3, "pref_camera_flashmode_key"

    sget v4, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    sub-float/2addr v4, v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/PhotoController;->addItem(Ljava/lang/String;FF)V

    .line 56
    const-string v3, "pref_camera_exposure_key"

    sget v4, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v4, v6

    sub-float/2addr v4, v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/PhotoController;->addItem(Ljava/lang/String;FF)V

    .line 57
    const-string v3, "pref_camera_whitebalance_key"

    sget v4, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v4, v6

    add-float/2addr v4, v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/PhotoController;->addItem(Ljava/lang/String;FF)V

    .line 58
    const-string v3, "pref_camera_id_key"

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 59
    const v3, 0x7f0200cd

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 60
    .local v1, item:Lcom/android/camera/ui/PieItem;
    sget v3, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    add-float/2addr v3, v2

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 61
    new-instance v3, Lcom/android/camera/PhotoController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoController$1;-><init>(Lcom/android/camera/PhotoController;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 77
    iget-object v3, p0, Lcom/android/camera/PhotoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 79
    .end local v1           #item:Lcom/android/camera/ui/PieItem;
    :cond_0
    const-string v3, "pref_camera_hdr_key"

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 80
    const v3, 0x7f020085

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 81
    .local v0, hdr:Lcom/android/camera/ui/PieItem;
    sget v3, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 82
    new-instance v3, Lcom/android/camera/PhotoController$2;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoController$2;-><init>(Lcom/android/camera/PhotoController;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 96
    iget-object v3, p0, Lcom/android/camera/PhotoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 98
    .end local v0           #hdr:Lcom/android/camera/ui/PieItem;
    :cond_1
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pref_camera_scenemode_key"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "pref_camera_recordlocation_key"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "pref_camera_picturesize_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "pref_camera_focusmode_key"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/camera/PhotoController;->mOtherKeys:[Ljava/lang/String;

    .line 103
    const v3, 0x7f0200c4

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 104
    .restart local v1       #item:Lcom/android/camera/ui/PieItem;
    sget v3, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v3, v6

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 105
    new-instance v3, Lcom/android/camera/PhotoController$3;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoController$3;-><init>(Lcom/android/camera/PhotoController;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 114
    iget-object v3, p0, Lcom/android/camera/PhotoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 115
    return-void
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 151
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04001e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/MoreSettingPopup;

    .line 153
    .local v1, popup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/MoreSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/MoreSettingPopup$Listener;)V

    .line 154
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/PhotoController;->mOtherKeys:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/MoreSettingPopup;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 155
    iput-object v1, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    .line 156
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoModule;->dismissPopup(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/MoreSettingPopup;->reloadPreference()V

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 138
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 5
    .parameter "pref"

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v2, :cond_0

    .line 206
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 199
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040019

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListPrefSettingPopup;

    .line 201
    .local v0, basic:Lcom/android/camera/ui/ListPrefSettingPopup;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListPrefSettingPopup;->initialize(Lcom/android/camera/ListPreference;)V

    .line 202
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/ListPrefSettingPopup$Listener;)V

    .line 203
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoModule;->dismissPopup(Z)V

    .line 204
    iput-object v0, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 205
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    iget-object v3, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    goto :goto_0
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 183
    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoController;->mSettingOff:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoController;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoController;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 189
    return-void

    .line 185
    :cond_1
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoController;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoController;->mSettingOff:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoController;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->overrideSettings([Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoController;->initializePopup()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MoreSettingPopup;->overrideSettings([Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public popupDismissed(Z)V
    .locals 2
    .parameter "topPopupOnly"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 162
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 164
    :cond_0
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/camera/PieController;->reloadPreferences()V

    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/MoreSettingPopup;->reloadPreference()V

    .line 128
    :cond_0
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/camera/PhotoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 119
    .local v0, pref:Lcom/android/camera/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 120
    return-void
.end method
