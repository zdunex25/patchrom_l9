.class public Lcom/android/zxing/ui/QRCodeFragmentLayout;
.super Landroid/widget/RelativeLayout;
.source "QRCodeFragmentLayout.java"


# instance fields
.field private mDispatchTouchEvent:Z

.field private mFadeHide:Landroid/view/animation/Animation;

.field private mFadeShow:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mDispatchTouchEvent:Z

    .line 37
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 42
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mDispatchTouchEvent:Z

    if-eqz v1, :cond_0

    .line 46
    .end local v0           #result:Z
    :goto_0
    return v0

    .restart local v0       #result:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 61
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeHide:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 68
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeShow:Landroid/view/animation/Animation;

    .line 69
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f050004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeHide:Landroid/view/animation/Animation;

    .line 70
    return-void
.end method

.method public setDispatchTouchEvent(Z)V
    .locals 0
    .parameter "toOther"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mDispatchTouchEvent:Z

    .line 51
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 55
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeShow:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-void
.end method
