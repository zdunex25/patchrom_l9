.class Lcom/android/internal/telephony/U2RIL$CallPathHandler;
.super Landroid/os/Handler;
.source "U2RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/U2RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallPathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/U2RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/U2RIL;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->this$0:Lcom/android/internal/telephony/U2RIL;

    .line 251
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/U2RIL$CallPathHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->checkSpeakerphoneState()V

    return-void
.end method

.method private checkSpeakerphoneState()V
    .locals 5

    .prologue
    .line 255
    iget-object v3, p0, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->this$0:Lcom/android/internal/telephony/U2RIL;

    iget v3, v3, Lcom/android/internal/telephony/U2RIL;->mCallState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 256
    const/4 v0, -0x1

    .line 257
    .local v0, callPath:I
    iget-object v3, p0, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->this$0:Lcom/android/internal/telephony/U2RIL;

    #getter for: Lcom/android/internal/telephony/U2RIL;->audioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/internal/telephony/U2RIL;->access$100(Lcom/android/internal/telephony/U2RIL;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    const/4 v0, 0x3

    .line 263
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->this$0:Lcom/android/internal/telephony/U2RIL;

    #getter for: Lcom/android/internal/telephony/U2RIL;->mCallPath:I
    invoke-static {v3}, Lcom/android/internal/telephony/U2RIL;->access$200(Lcom/android/internal/telephony/U2RIL;)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->this$0:Lcom/android/internal/telephony/U2RIL;

    #setter for: Lcom/android/internal/telephony/U2RIL;->mCallPath:I
    invoke-static {v3, v0}, Lcom/android/internal/telephony/U2RIL;->access$202(Lcom/android/internal/telephony/U2RIL;I)I

    .line 265
    iget-object v3, p0, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->this$0:Lcom/android/internal/telephony/U2RIL;

    #getter for: Lcom/android/internal/telephony/U2RIL;->RIL_REQUEST_LGE_CPATH:I
    invoke-static {v3}, Lcom/android/internal/telephony/U2RIL;->access$300(Lcom/android/internal/telephony/U2RIL;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 267
    .local v2, rrLSL:Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v3, p0, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->this$0:Lcom/android/internal/telephony/U2RIL;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/U2RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 272
    .end local v2           #rrLSL:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 273
    .local v1, msg:Landroid/os/Message;
    const v3, 0xc0ffee

    iput v3, v1, Landroid/os/Message;->what:I

    .line 274
    const-wide/16 v3, 0x9c4

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 276
    .end local v0           #callPath:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void

    .line 260
    .restart local v0       #callPath:I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 280
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xc0ffee

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->this$0:Lcom/android/internal/telephony/U2RIL;

    iget v0, v0, Lcom/android/internal/telephony/U2RIL;->mCallState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->checkSpeakerphoneState()V

    .line 285
    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method
