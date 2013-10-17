.class public Lcom/android/camera/ModePicker;
.super Landroid/widget/RelativeLayout;
.source "ModePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ModePicker$OnModeChangeListener;
    }
.end annotation


# instance fields
.field private final CURRENT_MODE_BACKGROUND:I

.field private final DISABLED_COLOR:I

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentMode:I

.field private mCurrentModeBar:Landroid/view/View;

.field private mCurrentModeFrame:Landroid/view/View;

.field private mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

.field private mModeSelectionFrame:Landroid/view/View;

.field private mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

.field private mSelectionEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    .line 123
    new-instance v0, Lcom/android/camera/ModePicker$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ModePicker$1;-><init>(Lcom/android/camera/ModePicker;)V

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ModePicker;->DISABLED_COLOR:I

    .line 73
    const v0, 0x7f020014

    iput v0, p0, Lcom/android/camera/ModePicker;->CURRENT_MODE_BACKGROUND:I

    .line 74
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mFadeIn:Landroid/view/animation/Animation;

    .line 76
    const v0, 0x7f050003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    .line 78
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/ModePicker;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 79
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ModePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->changeToSelectedMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ModePicker;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ModePicker;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    return-object v0
.end method

.method private changeToSelectedMode()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

    iget v1, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    invoke-interface {v0, v1}, Lcom/android/camera/ModePicker$OnModeChangeListener;->onModeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "ModePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed:onModeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-void
.end method

.method private enableModeSelection(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iput-boolean p1, p0, Lcom/android/camera/ModePicker;->mSelectionEnabled:Z

    .line 141
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ModePicker;->mFadeIn:Landroid/view/animation/Animation;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->updateModeState()V

    .line 148
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private highlightView(Landroid/widget/ImageView;Z)V
    .locals 2
    .parameter "view"
    .parameter "enabled"

    .prologue
    .line 218
    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget v0, p0, Lcom/android/camera/ModePicker;->DISABLED_COLOR:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private registerOnClickListener()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method private updateModeState()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x1

    .line 227
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 229
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v4, v0

    iget v4, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    if-ne v0, v4, :cond_0

    move v4, v5

    :goto_1
    invoke-direct {p0, v6, v4}, Lcom/android/camera/ModePicker;->highlightView(Landroid/widget/ImageView;Z)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 235
    .end local v0           #i:I
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 236
    const/4 v0, 0x0

    .restart local v0       #i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 238
    if-ne v0, v5, :cond_2

    .line 240
    iget v3, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    .line 246
    .local v3, target:I
    :goto_3
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v4, v4, v0

    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 243
    .end local v3           #target:I
    :cond_2
    iget v4, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    if-ne v1, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 244
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .local v2, j:I
    move v3, v1

    .restart local v3       #target:I
    move v1, v2

    .end local v2           #j:I
    .restart local v1       #j:I
    goto :goto_3

    .line 250
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #target:I
    :cond_4
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/ModePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 161
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ModePicker;->enableModeSelection(Z)V

    .line 176
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    if-eq v1, v0, :cond_2

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    if-nez v1, :cond_3

    .line 171
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/ModePicker;->enableModeSelection(Z)V

    goto :goto_0

    .line 164
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->changeToSelectedMode()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 85
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    .line 86
    new-array v0, v5, [Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    .line 87
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v4

    .line 89
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v2

    .line 91
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v3

    .line 95
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 97
    new-array v0, v5, [Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    .line 98
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v3

    .line 99
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v2

    .line 100
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v4

    .line 106
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->registerOnClickListener()V

    .line 107
    return-void

    .line 103
    :cond_0
    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    .line 104
    invoke-direct {p0, v2}, Lcom/android/camera/ModePicker;->enableModeSelection(Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 255
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 257
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/camera/ui/RotateImageView;->getWidth()I

    move-result v3

    .line 259
    .local v3, viewWidth:I
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 261
    .local v0, iconWidth:I
    sub-int v4, v3, v0

    div-int/lit8 v2, v4, 0x2

    .line 262
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    mul-int/2addr v5, v3

    add-int v1, v4, v5

    .line 263
    .local v1, l:I
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    add-int v5, v1, v2

    sub-int v6, p5, p3

    iget-object v7, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, v1, v2

    add-int/2addr v7, v0

    sub-int v8, p5, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 268
    .end local v0           #iconWidth:I
    .end local v1           #l:I
    .end local v2           #padding:I
    .end local v3           #viewWidth:I
    :cond_0
    return-void
.end method

.method public onOtherPopupShowed()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/ModePicker;->mSelectionEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ModePicker;->enableModeSelection(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 183
    iput p1, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    .line 184
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->updateModeState()V

    .line 185
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 206
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 212
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 210
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ModePicker;->updateModeState()V

    .line 215
    :cond_3
    return-void
.end method

.method public setOnModeChangeListener(Lcom/android/camera/ModePicker$OnModeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/camera/ModePicker;->mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

    .line 180
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(I)V

    .line 195
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(I)V

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    return-void
.end method
