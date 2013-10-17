.class public Lcom/android/camera/ui/SecondLevelIndicatorControlBar;
.super Lcom/android/camera/ui/IndicatorControl;
.source "SecondLevelIndicatorControlBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;


# static fields
.field private static ICON_SPACING:I


# instance fields
.field private mCloseIcon:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field mNonIndicatorButtonCount:I

.field mOrientation:I

.field private mPopupedIndicator:Landroid/view/View;

.field mSelectedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOrientation:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    .line 50
    return-void
.end method

.method private dispatchRelativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 94
    return-void
.end method

.method private getTouchViewIndex(II)I
    .locals 8
    .parameter "x"
    .parameter "width"

    .prologue
    const/4 v5, -0x1

    .line 76
    iget-object v6, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le p1, v6, :cond_1

    iget-object v5, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 87
    :cond_0
    :goto_0
    return v5

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildCount()I

    move-result v2

    .line 80
    .local v2, count:I
    iget v6, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    if-eq v2, v6, :cond_0

    .line 82
    iget v6, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 83
    .local v3, firstIndicatorButton:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    sget v7, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 84
    .local v0, baselineX:I
    if-gt p1, v0, :cond_0

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 86
    .local v4, iconWidth:I
    sget v5, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    add-int v1, v4, v5

    .line 87
    .local v1, buttonRange:I
    iget v5, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    sub-int v6, v0, p1

    div-int/2addr v6, v1

    add-int/2addr v5, v6

    goto :goto_0
.end method


# virtual methods
.method public addIndicator(Landroid/content/Context;Lcom/android/camera/IconListPreference;)Lcom/android/camera/ui/IndicatorButton;
    .locals 2
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;->addIndicator(Landroid/content/Context;Lcom/android/camera/IconListPreference;)Lcom/android/camera/ui/IndicatorButton;

    move-result-object v0

    .line 141
    .local v0, b:Lcom/android/camera/ui/IndicatorButton;
    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorButton;->setBackgroundResource(I)V

    .line 142
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/IndicatorButton;->setIndicatorChangeListener(Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;)V

    .line 143
    return-object v0
.end method

.method public addOtherSettingIndicator(Landroid/content/Context;I[Ljava/lang/String;)Lcom/android/camera/ui/OtherSettingIndicatorButton;
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "keys"

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/IndicatorControl;->addOtherSettingIndicator(Landroid/content/Context;I[Ljava/lang/String;)Lcom/android/camera/ui/OtherSettingIndicatorButton;

    move-result-object v0

    .line 151
    .local v0, b:Lcom/android/camera/ui/OtherSettingIndicatorButton;
    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->setBackgroundResource(I)V

    .line 152
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->setIndicatorChangeListener(Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;)V

    .line 153
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v9

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 101
    .local v0, action:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-double v7, v11

    .line 104
    .local v7, x:D
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getWidth()I

    move-result v6

    .line 105
    .local v6, width:I
    if-eqz v6, :cond_0

    .line 106
    int-to-double v11, v6

    cmpl-double v11, v7, v11

    if-lez v11, :cond_2

    int-to-double v7, v6

    .line 108
    :cond_2
    double-to-int v11, v7

    invoke-direct {p0, v11, v6}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getTouchViewIndex(II)I

    move-result v2

    .line 111
    .local v2, index:I
    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    if-eq v2, v11, :cond_3

    .line 112
    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    invoke-virtual {p0, v11}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 114
    .local v4, p:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 115
    .local v3, oldAction:I
    const/4 v11, 0x3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 116
    invoke-direct {p0, v4, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dispatchRelativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 117
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 119
    instance-of v11, v4, Lcom/android/camera/ui/AbstractIndicatorButton;

    if-eqz v11, :cond_3

    move-object v1, v4

    .line 120
    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 121
    .local v1, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    .line 126
    .end local v1           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    .end local v3           #oldAction:I
    .end local v4           #p:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 127
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_4

    move v9, v10

    goto :goto_0

    .line 130
    :cond_4
    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    if-eq v11, v2, :cond_5

    const/4 v11, 0x2

    if-ne v0, v11, :cond_5

    .line 131
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 133
    :cond_5
    invoke-direct {p0, v5, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dispatchRelativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 134
    iput v2, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    move v9, v10

    .line 135
    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "group"
    .parameter "keys"
    .parameter "otherSettingKeys"

    .prologue
    .line 62
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    .line 64
    invoke-virtual {p0, p3, p4}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->addControls([Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setOrientation(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dismissSettingPopup()Z

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/OnIndicatorEventListener;->onIndicatorEvent(I)V

    .line 72
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    .line 55
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildCount()I

    move-result v0

    .line 175
    .local v0, count:I
    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 176
    :cond_0
    sub-int v7, p4, p2

    .line 177
    .local v7, width:I
    sub-int v1, p5, p3

    .line 178
    .local v1, height:I
    iget-object v8, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 179
    .local v3, iconWidth:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getPaddingLeft()I

    move-result v6

    .line 182
    .local v6, padding:I
    move v5, v6

    .line 183
    .local v5, offsetX:I
    sget v8, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    add-int v4, v3, v8

    .line 184
    .local v4, increment:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_1
    iget v8, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    if-lt v2, v8, :cond_1

    .line 185
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    add-int v10, v5, v3

    invoke-virtual {v8, v5, v9, v10, v1}, Landroid/view/View;->layout(IIII)V

    .line 186
    add-int/2addr v5, v4

    .line 184
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 190
    :cond_1
    sub-int v8, v7, v3

    mul-int/lit8 v9, v6, 0x2

    sub-int v5, v8, v9

    .line 191
    iget-object v8, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    iget-object v9, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v5

    sub-int v10, v1, v6

    invoke-virtual {v8, v5, v6, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 194
    sub-int v8, v7, v3

    sub-int v5, v8, v6

    .line 196
    iget-object v8, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    const/4 v9, 0x0

    add-int v10, v5, v3

    invoke-virtual {v8, v5, v9, v10, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public onShowIndicator(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "showed"

    .prologue
    .line 159
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mPopupedIndicator:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 163
    .end local p1
    :goto_0
    return-void

    .line 160
    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    .end local p1
    :goto_1
    iput-object p1, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mPopupedIndicator:Landroid/view/View;

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->requestLayout()V

    goto :goto_0

    .line 160
    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/android/camera/ui/IndicatorControl;->setEnabled(Z)V

    .line 202
    iget v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 206
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 167
    iput p1, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOrientation:I

    .line 168
    invoke-super {p0, p1}, Lcom/android/camera/ui/IndicatorControl;->setOrientation(I)V

    .line 169
    return-void
.end method
