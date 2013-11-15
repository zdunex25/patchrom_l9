.class Lcom/android/zxing/QRCodeManager$MyHander;
.super Landroid/os/Handler;
.source "QRCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/QRCodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/QRCodeManager;


# direct methods
.method public constructor <init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    .line 120
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const v5, 0x7f0c0007

    const v4, 0x7f0c0005

    .line 124
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$300(Lcom/android/zxing/QRCodeManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->requestAutoFocus()V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/zxing/QRCodeManager;->access$502(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$300(Lcom/android/zxing/QRCodeManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$500(Lcom/android/zxing/QRCodeManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 136
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 138
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$500(Lcom/android/zxing/QRCodeManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/zxing/QRCodeMatcher;->match(Ljava/lang/String;)Lcom/android/zxing/QRCodeType;

    move-result-object v2

    #setter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1, v2}, Lcom/android/zxing/QRCodeManager;->access$802(Lcom/android/zxing/QRCodeManager;Lcom/android/zxing/QRCodeType;)Lcom/android/zxing/QRCodeType;

    .line 140
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->VCARD:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_3

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_1
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->findQRCode()V

    .line 159
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1000(Lcom/android/zxing/QRCodeManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1000(Lcom/android/zxing/QRCodeManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_4

    .line 144
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_5

    .line 146
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->WEB_URL_APK:Lcom/android/zxing/QRCodeType;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->WEB_URL:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_7

    .line 149
    :cond_6
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 150
    :cond_7
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->WEB_URL_QQ:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_8

    .line 151
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 152
    :cond_8
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->WIFI:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_9

    .line 153
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 155
    :cond_9
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01e8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 166
    :pswitch_2
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 171
    :pswitch_3
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mInitialized:Z
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1100(Lcom/android/zxing/QRCodeManager;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$200(Lcom/android/zxing/QRCodeManager;)I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1200(Lcom/android/zxing/QRCodeManager;)I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1300(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 173
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->scanQRCodeEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    .line 175
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1300(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$1400(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 176
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1500(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/ui/ViewFinderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/ui/ViewFinderView;->drawViewFinder()V

    .line 179
    :cond_a
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1000(Lcom/android/zxing/QRCodeManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1000(Lcom/android/zxing/QRCodeManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x7f0c0005
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
