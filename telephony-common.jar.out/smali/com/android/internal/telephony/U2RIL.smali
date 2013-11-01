.class public Lcom/android/internal/telephony/U2RIL;
.super Lcom/android/internal/telephony/RIL;
.source "U2RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/U2RIL$CallPathHandler;
    }
.end annotation


# static fields
.field static final RIL_UNSOL_LGE_BATTERY_LEVEL_UPDATE:I = 0x41a

.field static final RIL_UNSOL_LGE_SELECTED_SPEECH_CODEC:I = 0x432

.field static final RIL_UNSOL_LGE_SIM_STATE_CHANGED:I = 0x424

.field static final RIL_UNSOL_LGE_SIM_STATE_CHANGED_NEW:I = 0x425

.field static final RIL_UNSOL_LGE_XCALLSTAT:I = 0x41d


# instance fields
.field private RIL_REQUEST_HANG_UP_CALL:I

.field private RIL_REQUEST_LGE_CPATH:I

.field private audioManager:Landroid/media/AudioManager;

.field private mCallPath:I

.field protected mCallState:I

.field protected mPathHandler:Lcom/android/internal/telephony/U2RIL$CallPathHandler;

.field protected mPathThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/U2RIL;->mCallPath:I

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/U2RIL;->mCallState:I

    .line 82
    const/16 v1, 0xb7

    iput v1, p0, Lcom/android/internal/telephony/U2RIL;->RIL_REQUEST_HANG_UP_CALL:I

    .line 83
    const/16 v1, 0xfd

    iput v1, p0, Lcom/android/internal/telephony/U2RIL;->RIL_REQUEST_LGE_CPATH:I

    .line 47
    new-instance v0, Lcom/android/internal/telephony/U2RIL$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/U2RIL$1;-><init>(Lcom/android/internal/telephony/U2RIL;)V

    .line 66
    .local v0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 70
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/telephony/U2RIL;->audioManager:Landroid/media/AudioManager;

    .line 72
    iget-object v1, p0, Lcom/android/internal/telephony/U2RIL;->mPathHandler:Lcom/android/internal/telephony/U2RIL$CallPathHandler;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CallPathThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/U2RIL;->mPathThread:Landroid/os/HandlerThread;

    .line 74
    iget-object v1, p0, Lcom/android/internal/telephony/U2RIL;->mPathThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v1, Lcom/android/internal/telephony/U2RIL$CallPathHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/U2RIL;->mPathThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/U2RIL$CallPathHandler;-><init>(Lcom/android/internal/telephony/U2RIL;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/U2RIL;->mPathHandler:Lcom/android/internal/telephony/U2RIL$CallPathHandler;

    .line 76
    iget-object v1, p0, Lcom/android/internal/telephony/U2RIL;->mPathHandler:Lcom/android/internal/telephony/U2RIL$CallPathHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/U2RIL$CallPathHandler;->run()V

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/U2RIL;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/U2RIL;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/U2RIL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/internal/telephony/U2RIL;->mCallPath:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/U2RIL;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/internal/telephony/U2RIL;->mCallPath:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/U2RIL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/internal/telephony/U2RIL;->RIL_REQUEST_LGE_CPATH:I

    return v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 125
    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 126
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 127
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 126
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 130
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getIMEI(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 95
    const/16 v2, 0x113

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 97
    .local v1, rrLSC:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/U2RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 103
    const/16 v2, 0x26

    invoke-static {v2, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 105
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/U2RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/U2RIL;->riljLog(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/U2RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 108
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 113
    iget v1, p0, Lcom/android/internal/telephony/U2RIL;->mCallState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0xd

    :goto_0
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 118
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/U2RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/U2RIL;->riljLog(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/U2RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 121
    return-void

    .line 113
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/U2RIL;->RIL_REQUEST_HANG_UP_CALL:I

    goto :goto_0
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 14
    .parameter "p"

    .prologue
    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 144
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 146
    .local v4, response:I
    sparse-switch v4, :sswitch_data_0

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 160
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 147
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/U2RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .line 163
    .local v5, ret:Ljava/lang/Object;
    :goto_1
    sparse-switch v4, :sswitch_data_1

    goto :goto_0

    .line 199
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/U2RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    .line 200
    .local v2, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 201
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 202
    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v8, v2, :cond_0

    .line 203
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/U2RIL;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_0

    .line 148
    .end local v2           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/U2RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 149
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/U2RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 150
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/U2RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 151
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/U2RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 153
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/U2RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 165
    :sswitch_7
    check-cast v5, [I

    .end local v5           #ret:Ljava/lang/Object;
    move-object v1, v5

    check-cast v1, [I

    .line 166
    .local v1, intArray:[I
    aget v7, v1, v10

    .line 174
    .local v7, xcallState:I
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/telephony/U2RIL;->mCallPath:I

    .line 175
    sparse-switch v7, :sswitch_data_2

    .line 187
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LGE call state change > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/U2RIL;->riljLog(Ljava/lang/String;)V

    .line 188
    iget v8, p0, Lcom/android/internal/telephony/U2RIL;->mCallPath:I

    if-ltz v8, :cond_0

    .line 189
    iget v8, p0, Lcom/android/internal/telephony/U2RIL;->RIL_REQUEST_LGE_CPATH:I

    invoke-static {v8, v12}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v6

    .line 191
    .local v6, rrLSL:Lcom/android/internal/telephony/RILRequest;
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v9, p0, Lcom/android/internal/telephony/U2RIL;->mCallPath:I

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/U2RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 177
    .end local v6           #rrLSL:Lcom/android/internal/telephony/RILRequest;
    :sswitch_8
    iput v10, p0, Lcom/android/internal/telephony/U2RIL;->mCallPath:I

    goto :goto_2

    .line 182
    :sswitch_9
    iput v13, p0, Lcom/android/internal/telephony/U2RIL;->mCallPath:I

    goto :goto_2

    .end local v1           #intArray:[I
    .end local v7           #xcallState:I
    .restart local v5       #ret:Ljava/lang/Object;
    :sswitch_a
    move-object v8, v5

    .line 207
    check-cast v8, [Ljava/lang/String;

    move-object v3, v8

    check-cast v3, [Ljava/lang/String;

    .line 209
    .local v3, resp:[Ljava/lang/String;
    array-length v8, v3

    if-ge v8, v9, :cond_1

    .line 210
    new-array v3, v9, [Ljava/lang/String;

    .line 211
    check-cast v5, [Ljava/lang/String;

    .end local v5           #ret:Ljava/lang/Object;
    check-cast v5, [Ljava/lang/String;

    aget-object v8, v5, v13

    aput-object v8, v3, v13

    .line 212
    aput-object v12, v3, v10

    .line 214
    :cond_1
    aget-object v8, v3, v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2

    aget-object v8, v3, v10

    const-string v9, "[0-9A-F]+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 216
    const/4 v8, 0x1

    :try_start_0
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Lcom/android/internal/telephony/U2RIL;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    const-string v11, "UTF-16"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v9, v3, v8
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_2
    :goto_3
    aget-object v8, v3, v13

    invoke-virtual {p0, v4, v8}, Lcom/android/internal/telephony/U2RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 224
    iget-object v8, p0, Lcom/android/internal/telephony/U2RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v8, :cond_0

    .line 225
    iget-object v8, p0, Lcom/android/internal/telephony/U2RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    new-instance v9, Landroid/os/AsyncResult;

    invoke-direct {v9, v12, v3, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 231
    .end local v3           #resp:[Ljava/lang/String;
    .restart local v5       #ret:Ljava/lang/Object;
    :sswitch_b
    const/16 v8, 0xb7

    iput v8, p0, Lcom/android/internal/telephony/U2RIL;->RIL_REQUEST_HANG_UP_CALL:I

    goto/16 :goto_0

    .line 235
    :sswitch_c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/U2RIL;->unsljLog(I)V

    .line 237
    iget-object v8, p0, Lcom/android/internal/telephony/U2RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v8, :cond_0

    .line 238
    iget-object v8, p0, Lcom/android/internal/telephony/U2RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 243
    :sswitch_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sinking LGE request > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/U2RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v5           #ret:Ljava/lang/Object;
    .restart local v3       #resp:[Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_3

    .line 217
    :catch_1
    move-exception v8

    goto :goto_3

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3ee -> :sswitch_2
        0x41a -> :sswitch_5
        0x41d -> :sswitch_3
        0x424 -> :sswitch_6
        0x425 -> :sswitch_6
        0x432 -> :sswitch_4
    .end sparse-switch

    .line 163
    :sswitch_data_1
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3ee -> :sswitch_a
        0x41a -> :sswitch_d
        0x41d -> :sswitch_7
        0x424 -> :sswitch_c
        0x425 -> :sswitch_c
        0x432 -> :sswitch_d
        0x438 -> :sswitch_b
    .end sparse-switch

    .line 175
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_8
        0x6 -> :sswitch_9
    .end sparse-switch
.end method
