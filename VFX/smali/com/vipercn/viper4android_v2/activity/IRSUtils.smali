.class public Lcom/vipercn/viper4android_v2/activity/IRSUtils;
.super Ljava/lang/Object;
.source "IRSUtils.java"


# static fields
.field private static final WAV_DATA_CHUNK_ID:I = 0x64617461

.field private static final WAV_FORMAT:I = 0x57415645

.field private static final WAV_FORMAT_CHUNK_ID:I = 0x666d7420

.field private static final WAV_HEADER_CHUNK_ID:I = 0x52494646


# instance fields
.field private mBytesCount:J

.field private mChannels:I

.field private mInputStream:Ljava/io/BufferedInputStream;

.field private mIrsStream:Ljava/io/FileInputStream;

.field private mSampleBits:I

.field private mSampleType:I

.field private mSamplesCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    .line 63
    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    .line 64
    return-void
.end method

.method private byteToShortLE(BB)S
    .locals 2
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 364
    and-int/lit16 v0, p1, 0xff

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private convert_S16LE_F32([B)[B
    .locals 11
    .parameter "baS16LEData"

    .prologue
    .line 307
    array-length v9, p1

    div-int/lit8 v7, v9, 0x2

    .line 308
    .local v7, nSamplesCount:I
    mul-int/lit8 v9, v7, 0x4

    new-array v0, v9, [B

    .line 309
    .local v0, baF32Data:[B
    const-wide/high16 v5, 0x3f00

    .line 311
    .local v5, invscale:D
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 312
    .local v2, bbS16Buffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 313
    .local v1, bbF32Buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 314
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 315
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v7, :cond_0

    .line 320
    return-object v0

    .line 316
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 317
    .local v8, s16:S
    int-to-double v9, v8

    mul-double/2addr v9, v5

    double-to-float v3, v9

    .line 318
    .local v3, f32:F
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private convert_S24LE_F32([B)[B
    .locals 14
    .parameter "baS24LEData"

    .prologue
    .line 324
    array-length v12, p1

    div-int/lit8 v7, v12, 0x3

    .line 325
    .local v7, mSamplesCount:I
    mul-int/lit8 v12, v7, 0x4

    new-array v0, v12, [B

    .line 326
    .local v0, baF32Data:[B
    const-wide/high16 v5, 0x3e80

    .line 328
    .local v5, invscale:D
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 329
    .local v1, bbF32Buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 330
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v4, 0x0

    .local v4, idx:I
    :goto_0
    if-lt v3, v7, :cond_0

    .line 343
    return-object v0

    .line 331
    :cond_0
    aget-byte v9, p1, v4

    .line 332
    .local v9, s24_b1:B
    add-int/lit8 v12, v4, 0x1

    aget-byte v10, p1, v12

    .line 333
    .local v10, s24_b2:B
    add-int/lit8 v12, v4, 0x2

    aget-byte v11, p1, v12

    .line 334
    .local v11, s24_b3:B
    and-int/lit16 v12, v9, 0xff

    and-int/lit16 v13, v10, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    and-int/lit16 v13, v11, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int v8, v12, v13

    .line 335
    .local v8, s24:I
    const v12, 0x7fffff

    if-le v8, v12, :cond_1

    .line 336
    const v12, 0x7fffff

    and-int/2addr v8, v12

    .line 337
    const v12, 0x7fffff

    sub-int v8, v12, v8

    .line 338
    neg-int v8, v8

    .line 340
    :cond_1
    int-to-double v12, v8

    mul-double/2addr v12, v5

    double-to-float v2, v12

    .line 341
    .local v2, f32:F
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 330
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x3

    goto :goto_0
.end method

.method private convert_S32LE_F32([B)[B
    .locals 11
    .parameter "baS32LEData"

    .prologue
    .line 347
    array-length v9, p1

    div-int/lit8 v7, v9, 0x4

    .line 348
    .local v7, mSamplesCount:I
    mul-int/lit8 v9, v7, 0x4

    new-array v0, v9, [B

    .line 349
    .local v0, baF32Data:[B
    const-wide/high16 v5, 0x3e00

    .line 351
    .local v5, invscale:D
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 352
    .local v2, bbS32Buffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 353
    .local v1, bbF32Buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 354
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 355
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v7, :cond_0

    .line 360
    return-object v0

    .line 356
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 357
    .local v8, s32:I
    int-to-double v9, v8

    mul-double/2addr v9, v5

    double-to-float v3, v9

    .line 358
    .local v3, f32:F
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static hashIRS([BI)J
    .locals 14
    .parameter "mArray"
    .parameter "mLength"

    .prologue
    .line 16
    if-eqz p0, :cond_0

    array-length v10, p0

    if-lt v10, p1, :cond_0

    if-gtz p1, :cond_1

    .line 17
    :cond_0
    const-wide/16 v10, 0x0

    .line 43
    :goto_0
    return-wide v10

    .line 21
    :cond_1
    const/16 v10, 0x100

    new-array v2, v10, [J

    .line 22
    .local v2, crcTable:[J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    const/16 v10, 0x100

    if-lt v5, v10, :cond_2

    .line 35
    const-wide/16 v0, -0x1

    .line 36
    .local v0, crcResult:J
    const/4 v5, 0x0

    :goto_2
    if-lt v5, p1, :cond_5

    .line 41
    const/4 v2, 0x0

    check-cast v2, [J

    .line 43
    const-wide/16 v10, -0x1

    xor-long/2addr v10, v0

    goto :goto_0

    .line 23
    .end local v0           #crcResult:J
    :cond_2
    int-to-long v3, v5

    .line 24
    .local v3, crcTblVal:J
    const/16 v6, 0x8

    .local v6, j:I
    :goto_3
    if-gtz v6, :cond_3

    .line 31
    aput-wide v3, v2, v5

    .line 22
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 25
    :cond_3
    const-wide/16 v10, 0x1

    and-long/2addr v10, v3

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    .line 26
    const/4 v10, 0x1

    shr-long v10, v3, v10

    const-wide v12, 0xedb88320L

    xor-long v3, v10, v12

    .line 24
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 28
    :cond_4
    const/4 v10, 0x1

    shr-long/2addr v3, v10

    goto :goto_4

    .line 37
    .end local v3           #crcTblVal:J
    .end local v6           #j:I
    .restart local v0       #crcResult:J
    :cond_5
    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    int-to-long v7, v10

    .line 38
    .local v7, mData:J
    xor-long v10, v0, v7

    long-to-int v10, v10

    and-int/lit16 v9, v10, 0xff

    .line 39
    .local v9, tableIndex:I
    const/16 v10, 0x8

    shr-long v10, v0, v10

    const-wide/32 v12, 0xffffff

    and-long/2addr v10, v12

    aget-wide v12, v2, v9

    xor-long v0, v10, v12

    .line 36
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private readUnsignedInt(Ljava/io/BufferedInputStream;)I
    .locals 6
    .parameter "bisInput"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 368
    const/4 v5, 0x4

    new-array v2, v5, [B

    .line 371
    .local v2, mBuffer:[B
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 375
    .local v0, dwReturn:I
    if-ne v0, v3, :cond_0

    .end local v0           #dwReturn:I
    :goto_0
    return v3

    .line 372
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move v3, v4

    .line 373
    goto :goto_0

    .line 375
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #dwReturn:I
    :cond_0
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 376
    const/4 v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 377
    const/4 v4, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 378
    const/4 v4, 0x3

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_0
.end method

.method private readUnsignedIntLE(Ljava/io/BufferedInputStream;)I
    .locals 6
    .parameter "bisInput"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 382
    const/4 v5, 0x4

    new-array v2, v5, [B

    .line 385
    .local v2, mBuffer:[B
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 389
    .local v0, dwReturn:I
    if-ne v0, v3, :cond_0

    .end local v0           #dwReturn:I
    :goto_0
    return v3

    .line 386
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move v3, v4

    .line 387
    goto :goto_0

    .line 389
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #dwReturn:I
    :cond_0
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    .line 390
    const/4 v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 391
    const/4 v4, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 392
    const/4 v4, 0x3

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    goto :goto_0
.end method

.method private readUnsignedShortLE(Ljava/io/BufferedInputStream;)S
    .locals 7
    .parameter "bisInput"

    .prologue
    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 396
    new-array v2, v5, [B

    .line 399
    .local v2, mBuffer:[B
    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_0
    invoke-virtual {p1, v2, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 403
    .local v0, dwReturn:I
    if-ne v0, v3, :cond_0

    .end local v0           #dwReturn:I
    :goto_0
    return v3

    .line 400
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move v3, v4

    .line 401
    goto :goto_0

    .line 403
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #dwReturn:I
    :cond_0
    aget-byte v3, v2, v4

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    invoke-direct {p0, v3, v4}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->byteToShortLE(BB)S

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public LoadIrs(Ljava/lang/String;)Z
    .locals 19
    .parameter "mIrsPathName"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 95
    :cond_0
    const/4 v15, 0x0

    .line 224
    :goto_0
    return v15

    .line 97
    :cond_1
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 98
    const/4 v15, 0x0

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 104
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 113
    .local v4, fileLength:J
    const-wide/16 v15, 0x10

    cmp-long v15, v4, v15

    if-gtz v15, :cond_3

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 115
    const/4 v15, 0x0

    goto :goto_0

    .line 105
    .end local v4           #fileLength:J
    :catch_0
    move-exception v3

    .line 106
    .local v3, e:Ljava/io/FileNotFoundException;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    .line 107
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    .line 108
    const-string v15, "ViPER4Android"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "LoadIrs, FileNotFoundException, msg = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 109
    const-string v17, "mIrsPathName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 108
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v15, 0x0

    goto :goto_0

    .line 119
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v4       #fileLength:J
    :cond_3
    new-instance v15, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    move-object/from16 v16, v0

    const/16 v17, 0x1000

    invoke-direct/range {v15 .. v17}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v13

    .line 121
    .local v13, mHeaderId:I
    const v15, 0x52494646

    if-eq v13, v15, :cond_4

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 123
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 125
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v15

    int-to-long v4, v15

    .line 126
    const-wide/16 v15, 0x10

    cmp-long v15, v4, v15

    if-gtz v15, :cond_5

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 128
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 130
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v10

    .line 131
    .local v10, mFormat:I
    const v15, 0x57415645

    if-eq v10, v15, :cond_6

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 133
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 137
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v11

    .line 138
    .local v11, mFormatId:I
    const v15, 0x666d7420

    if-eq v11, v15, :cond_7

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 140
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 142
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v12

    .line 143
    .local v12, mFormatSize:I
    const/16 v15, 0x10

    if-ge v12, v15, :cond_8

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 145
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 147
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v2

    .line 148
    .local v2, audioFormat:I
    const/4 v15, 0x1

    if-eq v2, v15, :cond_9

    const/4 v15, 0x3

    if-eq v2, v15, :cond_9

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 151
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 153
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mChannels:I

    .line 154
    move-object/from16 v0, p0

    iget v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mChannels:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mChannels:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_b

    .line 156
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 157
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 159
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v14

    .line 160
    .local v14, mSampleRate:I
    const/16 v15, 0x1f40

    if-lt v14, v15, :cond_c

    const v15, 0x2ee00

    if-le v14, v15, :cond_d

    .line 162
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 163
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 165
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v7

    .line 166
    .local v7, mByteRate:I
    const-string v15, "ViPER4Android"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "IRS byterate = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v6

    .line 168
    .local v6, mBlockAlign:I
    const-string v15, "ViPER4Android"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "IRS blockalign = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleBits:I

    .line 171
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleType:I

    .line 172
    const/4 v15, 0x1

    if-ne v2, v15, :cond_11

    .line 173
    move-object/from16 v0, p0

    iget v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleBits:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 174
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleType:I

    .line 195
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v8

    .line 196
    .local v8, mDataId:I
    const v15, 0x64617461

    if-eq v8, v15, :cond_13

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 198
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 175
    .end local v8           #mDataId:I
    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleBits:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 176
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleType:I

    goto :goto_1

    .line 177
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleBits:I

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 178
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleType:I

    goto :goto_1

    .line 181
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 182
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 185
    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleBits:I

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 186
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleType:I

    goto :goto_1

    .line 189
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 190
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 200
    .restart local v8       #mDataId:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->readUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v9

    .line 201
    .local v9, mDataSize:I
    if-lez v9, :cond_14

    const/high16 v15, 0x40

    if-le v9, v15, :cond_15

    .line 203
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 204
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 208
    :cond_15
    int-to-long v15, v9

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    .line 209
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mChannels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    div-long v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleBits:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    div-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSamplesCount:J

    .line 210
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSamplesCount:J

    const-wide/16 v17, 0x10

    cmp-long v15, v15, v17

    if-gez v15, :cond_16

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 213
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 215
    :cond_16
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mChannels:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleBits:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    rem-long v15, v15, v17

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_17

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 217
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 220
    :cond_17
    const-string v15, "ViPER4Android"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "IRS ["

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] opened"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v15, "ViPER4Android"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "IRS attr = ["

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleType:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mChannels:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 222
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSamplesCount:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 221
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public Release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iput-object v4, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    iput-object v4, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    .line 91
    :cond_1
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Release, msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 87
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Release, msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 72
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    throw v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mChannels:I

    return v0
.end method

.method public getSampleCount()I
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSamplesCount:J

    long-to-int v0, v0

    return v0
.end method

.method public readEntireData()[B
    .locals 14

    .prologue
    const/16 v9, 0x1000

    const/4 v13, 0x0

    const/4 v6, 0x0

    .line 228
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    if-nez v7, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-object v6

    .line 231
    :cond_1
    iget v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleType:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleType:I

    const/4 v8, 0x4

    if-gt v7, v8, :cond_0

    .line 236
    new-array v2, v9, [B

    .line 237
    .local v2, mData:[B
    const/4 v4, 0x0

    .line 240
    .local v4, mReadLength:I
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    const/16 v8, 0x1000

    invoke-virtual {v7, v2, v4, v8}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 241
    .local v3, mRead:I
    if-gez v3, :cond_2

    .line 257
    .end local v3           #mRead:I
    :goto_2
    new-array v5, v4, [B

    .line 258
    .local v5, newData:[B
    invoke-static {v2, v13, v5, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    move-object v2, v5

    move-object v5, v6

    .line 260
    check-cast v5, [B

    .line 263
    iget-wide v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    array-length v9, v2

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 265
    array-length v7, v2

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    .line 266
    iget-wide v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    iget v9, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mChannels:I

    int-to-long v9, v9

    div-long/2addr v7, v9

    iget v9, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleBits:I

    div-int/lit8 v9, v9, 0x8

    int-to-long v9, v9

    div-long/2addr v7, v9

    iput-wide v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSamplesCount:J

    .line 267
    iget-wide v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    iget v9, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mChannels:I

    iget v10, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleBits:I

    mul-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x8

    int-to-long v9, v9

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    move-object v2, v6

    .line 268
    check-cast v2, [B

    .line 269
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    goto :goto_0

    .line 244
    .end local v5           #newData:[B
    .restart local v3       #mRead:I
    :cond_2
    add-int/2addr v4, v3

    .line 246
    add-int/lit16 v7, v4, 0x1000

    :try_start_1
    new-array v5, v7, [B

    .line 247
    .restart local v5       #newData:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    move-object v2, v5

    .line 249
    const/4 v5, 0x0

    check-cast v5, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 250
    .end local v3           #mRead:I
    .end local v5           #newData:[B
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Ljava/io/IOException;
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "readEntireData, msg = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 272
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #newData:[B
    :cond_3
    iget-wide v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    array-length v9, v2

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    .line 275
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IRSUtils: We got some garbage data, header = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 276
    const-string v9, ", read = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 275
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IRSUtils: So lets discard some data, length = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    array-length v9, v2

    int-to-long v9, v9

    iget-wide v11, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 277
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-wide v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 280
    .local v0, baActualData:[B
    iget-wide v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mBytesCount:J

    long-to-int v7, v7

    invoke-static {v2, v13, v0, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    move-object v2, v0

    .line 282
    check-cast v6, [B

    .line 286
    .end local v0           #baActualData:[B
    :cond_4
    iget v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->mSampleType:I

    packed-switch v6, :pswitch_data_0

    move-object v6, v2

    .line 295
    goto/16 :goto_0

    .line 288
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->convert_S16LE_F32([B)[B

    move-result-object v6

    goto/16 :goto_0

    .line 290
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->convert_S24LE_F32([B)[B

    move-result-object v6

    goto/16 :goto_0

    .line 292
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->convert_S32LE_F32([B)[B

    move-result-object v6

    goto/16 :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
