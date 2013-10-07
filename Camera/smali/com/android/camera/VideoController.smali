.class public Lcom/android/camera/VideoController;
.super Lcom/android/camera/PieController;
.source "VideoController.java"

# interfaces
.implements Lcom/android/camera/ui/ListPrefSettingPopup$Listener;
.implements Lcom/android/camera/ui/MoreSettingPopup$Listener;
.implements Lcom/android/camera/ui/TimeIntervalPopup$Listener;


# static fields
.field private static FLOAT_PI_DIVIDED_BY_TWO:F

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mModule:Lcom/android/camera/VideoModule;

.field private mOtherKeys:[Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private mPopupStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "CAM_videocontrol"

    sput-object v0, Lcom/android/camera/VideoController;->TAG:Ljava/lang/String;

    .line 37
    const v0, 0x3fc90fdb

    sput v0, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoModule;Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .parameter "activity"
    .parameter "module"
    .parameter "pie"

    .prologue
    .line 49
    invoke-direct {p0, p1, p3}, Lcom/android/camera/PieController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ui/PieRenderer;)V

    .line 50
    iput-object p2, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoController;)Lcom/android/camera/ui/AbstractSettingPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/VideoController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/VideoController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/VideoController;)Lcom/android/camera/VideoModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 6
    .parameter "group"

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x4040

    .line 54
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 55
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 56
    iput v4, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    .line 57
    sget v2, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    const/high16 v3, 0x4000

    div-float v1, v2, v3

    .line 59
    .local v1, sweep:F
    const-string v2, "pref_camera_video_flashmode_key"

    sget v3, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    sub-float/2addr v3, v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/VideoController;->addItem(Ljava/lang/String;FF)V

    .line 60
    const-string v2, "pref_camera_whitebalance_key"

    sget v3, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/VideoController;->addItem(Ljava/lang/String;FF)V

    .line 61
    const v2, 0x7f0200d3

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 62
    .local v0, item:Lcom/android/camera/ui/PieItem;
    sget v2, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    add-float/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 63
    new-instance v2, Lcom/android/camera/VideoController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoController$1;-><init>(Lcom/android/camera/VideoController;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/android/camera/VideoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 79
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pref_video_effect_key"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "pref_video_time_lapse_frame_interval_key"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "pref_video_quality_key"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "pref_camera_recordlocation_key"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/camera/VideoController;->mOtherKeys:[Ljava/lang/String;

    .line 85
    const v2, 0x7f0200c4

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 86
    sget v2, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v2, v5

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 87
    new-instance v2, Lcom/android/camera/VideoController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoController$2;-><init>(Lcom/android/camera/VideoController;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 97
    iget-object v2, p0, Lcom/android/camera/VideoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 98
    return-void
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 138
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04001e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/MoreSettingPopup;

    .line 140
    .local v1, popup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/MoreSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/MoreSettingPopup$Listener;)V

    .line 141
    iget-object v2, p0, Lcom/android/camera/VideoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/VideoController;->mOtherKeys:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/MoreSettingPopup;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 142
    iput-object v1, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 143
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 127
    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 132
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 158
    iget v3, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    if-eq v3, v5, :cond_0

    .line 180
    .end local p1
    :goto_0
    return-void

    .line 160
    .restart local p1
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 163
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v3, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    const v3, 0x7f040044

    invoke-virtual {v1, v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/TimeIntervalPopup;

    .line 166
    .local v2, timeInterval:Lcom/android/camera/ui/TimeIntervalPopup;
    check-cast p1, Lcom/android/camera/IconListPreference;

    .end local p1
    invoke-virtual {v2, p1}, Lcom/android/camera/ui/TimeIntervalPopup;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 167
    invoke-virtual {v2, p0}, Lcom/android/camera/ui/TimeIntervalPopup;->setSettingChangedListener(Lcom/android/camera/ui/TimeIntervalPopup$Listener;)V

    .line 168
    iget-object v3, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 169
    iput-object v2, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 178
    .end local v2           #timeInterval:Lcom/android/camera/ui/TimeIntervalPopup;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    iget-object v4, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v3, v4}, Lcom/android/camera/VideoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 179
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    goto :goto_0

    .line 171
    .restart local p1
    :cond_1
    const v3, 0x7f040019

    invoke-virtual {v1, v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListPrefSettingPopup;

    .line 173
    .local v0, basic:Lcom/android/camera/ui/ListPrefSettingPopup;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListPrefSettingPopup;->initialize(Lcom/android/camera/ListPreference;)V

    .line 174
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/ListPrefSettingPopup$Listener;)V

    .line 175
    iget-object v3, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 176
    iput-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    goto :goto_1
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 2
    .parameter "keyvalues"

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->overrideSettings([Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    if-eq v0, v1, :cond_1

    .line 117
    :cond_0
    iput v1, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/VideoController;->initializePopup()V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    check-cast v0, Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MoreSettingPopup;->overrideSettings([Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public popupDismissed(Z)V
    .locals 2
    .parameter "topPopupOnly"

    .prologue
    .line 147
    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/VideoController;->initializePopup()V

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    .line 150
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    iget-object v1, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 152
    :cond_0
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/camera/PieController;->reloadPreferences()V

    .line 108
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractSettingPopup;->reloadPreference()V

    .line 111
    :cond_0
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/camera/VideoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 102
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

    .line 103
    return-void
.end method
