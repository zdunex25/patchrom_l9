.class Lcom/android/internal/telephony/U2RIL$1;
.super Landroid/telephony/PhoneStateListener;
.source "U2RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/U2RIL;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/U2RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/U2RIL;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/U2RIL$1;->this$0:Lcom/android/internal/telephony/U2RIL;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/U2RIL$1;->this$0:Lcom/android/internal/telephony/U2RIL;

    iget v0, v0, Lcom/android/internal/telephony/U2RIL;->mCallState:I

    if-le p1, v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/U2RIL$1;->this$0:Lcom/android/internal/telephony/U2RIL;

    iput p1, v0, Lcom/android/internal/telephony/U2RIL;->mCallState:I

    .line 57
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/U2RIL$1;->this$0:Lcom/android/internal/telephony/U2RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/U2RIL;->mPathHandler:Lcom/android/internal/telephony/U2RIL$CallPathHandler;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/U2RIL$1;->this$0:Lcom/android/internal/telephony/U2RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/U2RIL;->mPathHandler:Lcom/android/internal/telephony/U2RIL$CallPathHandler;

    #calls: Lcom/android/internal/telephony/U2RIL$CallPathHandler;->checkSpeakerphoneState()V
    invoke-static {v0}, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->access$000(Lcom/android/internal/telephony/U2RIL$CallPathHandler;)V

    .line 62
    :cond_2
    return-void
.end method
