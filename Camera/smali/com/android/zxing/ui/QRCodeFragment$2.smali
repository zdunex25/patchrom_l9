.class Lcom/android/zxing/ui/QRCodeFragment$2;
.super Ljava/lang/Object;
.source "QRCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/ui/QRCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/ui/QRCodeFragment;


# direct methods
.method constructor <init>(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->TEXT:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->copyToClipboard()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$200(Lcom/android/zxing/ui/QRCodeFragment;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIBrowser()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$100(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_4

    .line 264
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$300(Lcom/android/zxing/ui/QRCodeFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->launchWeChat()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$400(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto :goto_0

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    invoke-static {}, Lcom/android/zxing/ui/QRCodeFragment;->access$500()Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->downloadFromUri(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->access$600(Lcom/android/zxing/ui/QRCodeFragment;Landroid/net/Uri;)V

    goto :goto_0

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_5

    .line 270
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIMartket()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$700(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto :goto_0

    .line 271
    :cond_5
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->VCARD:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_7

    .line 273
    :cond_6
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->insertContact()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$800(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto :goto_0

    .line 274
    :cond_7
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->WIFI:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_8

    .line 275
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->connectToWifi()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$900(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto :goto_0

    .line 276
    :cond_8
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL_QQ:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$1000(Lcom/android/zxing/ui/QRCodeFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 278
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIBrowser()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$100(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto/16 :goto_0

    .line 280
    :cond_9
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    invoke-static {}, Lcom/android/zxing/ui/QRCodeFragment;->access$1100()Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->downloadFromUri(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->access$600(Lcom/android/zxing/ui/QRCodeFragment;Landroid/net/Uri;)V

    goto/16 :goto_0
.end method
