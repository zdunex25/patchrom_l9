.class public abstract Lcom/android/camera/ui/ZoomControl;
.super Landroid/widget/RelativeLayout;
.source "ZoomControl.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

.field protected mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

.field protected mOrientation:I

.field protected final mRunnable:Ljava/lang/Runnable;

.field private mSmoothZoomSupported:Z

.field private mState:I

.field private mStep:I

.field protected mZoomIn:Landroid/widget/ImageView;

.field protected mZoomIndex:I

.field protected mZoomMax:I

.field protected mZoomOut:Landroid/widget/ImageView;

.field protected mZoomSlider:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Lcom/android/camera/ui/ZoomControl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ZoomControl$1;-><init>(Lcom/android/camera/ui/ZoomControl;)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    .line 76
    const v0, 0x7f02008d

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f020093

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f020090

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ZoomControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ZoomControl;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ZoomControl;->performZoom(IZ)V

    return-void
.end method

.method private changeZoomIndex(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v2, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    if-eqz v2, :cond_2

    .line 194
    iget-boolean v2, p0, Lcom/android/camera/ui/ZoomControl;->mSmoothZoomSupported:Z

    if-eqz v2, :cond_4

    .line 195
    iget v2, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    if-ge p1, v2, :cond_3

    move v0, v1

    .line 196
    .local v0, zoomType:I
    :goto_0
    if-nez v0, :cond_0

    iget v2, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    iget v3, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    if-ne v2, v3, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    iget v2, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    if-eqz v2, :cond_2

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    invoke-interface {v2, v0}, Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;->onZoomStateChanged(I)V

    .line 207
    .end local v0           #zoomType:I
    :cond_2
    :goto_1
    return v1

    .line 195
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_4
    iget v2, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    if-le p1, v2, :cond_5

    iget p1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    .line 202
    :cond_5
    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 203
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    invoke-interface {v2, p1}, Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 204
    iput p1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    goto :goto_1
.end method

.method private performZoom(IZ)V
    .locals 4
    .parameter "state"
    .parameter "fromUser"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mState:I

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    :cond_2
    iput p1, p0, Lcom/android/camera/ui/ZoomControl;->mState:I

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomControl;->mSmoothZoomSupported:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 169
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomControl;->zoomIn()Z

    goto :goto_1

    .line 172
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomControl;->zoomOut()Z

    goto :goto_1

    .line 175
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomControl;->stopZooming()V

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopZooming()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomControl;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;->onZoomStateChanged(I)V

    .line 155
    :cond_0
    return-void
.end method

.method private zoomIn()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mStep:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ZoomControl;->changeZoomIndex(I)Z

    move-result v0

    goto :goto_0
.end method

.method private zoomOut()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mStep:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ZoomControl;->changeZoomIndex(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 3
    .parameter "context"
    .parameter "iconResourceId"

    .prologue
    .line 88
    new-instance v0, Lcom/android/camera/ui/RotateImageView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    const v1, 0x7f020093

    if-ne p2, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomControl;->addView(Landroid/view/View;)V

    .line 98
    return-object v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public closeZoomControl()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 103
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomControl;->stopZooming()V

    .line 104
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomControl;->mSmoothZoomSupported:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/camera/ui/OnIndicatorEventListener;->onIndicatorEvent(I)V

    .line 109
    :cond_1
    return-void
.end method

.method protected performZoom(D)V
    .locals 3
    .parameter "zoomPercentage"

    .prologue
    .line 187
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 188
    .local v0, index:I
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    if-ne v1, v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 226
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    .line 121
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 211
    iput p1, p0, Lcom/android/camera/ui/ZoomControl;->mOrientation:I

    .line 212
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControl;->getChildCount()I

    move-result v0

    .line 213
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ZoomControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 215
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/camera/ui/RotateImageView;

    if-eqz v3, :cond_0

    .line 216
    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(I)V

    .line 213
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method

.method public setSmoothZoomSupported(Z)V
    .locals 0
    .parameter "smoothZoomSupported"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/camera/ui/ZoomControl;->mSmoothZoomSupported:Z

    .line 137
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 128
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    .line 132
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControl;->invalidate()V

    .line 133
    return-void
.end method

.method public setZoomMax(I)V
    .locals 0
    .parameter "zoomMax"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControl;->requestLayout()V

    .line 117
    return-void
.end method
