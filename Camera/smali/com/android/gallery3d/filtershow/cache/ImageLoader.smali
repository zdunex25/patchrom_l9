.class public Lcom/android/gallery3d/filtershow/cache/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static mZoomOrientation:I


# instance fields
.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

.field private mContext:Landroid/content/Context;

.field private mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

.field private final mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mOriginalBitmapLarge:Landroid/graphics/Bitmap;

.field private mOriginalBitmapSmall:Landroid/graphics/Bitmap;

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mUri:Landroid/net/Uri;

.field private mWarnListenersRunnable:Ljava/lang/Runnable;

.field private final mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomOrientation:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/content/Context;)V
    .locals 2
    .parameter "activity"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    .line 58
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 59
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 60
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 62
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    .line 63
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    .line 64
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/cache/ZoomCache;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    .line 67
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 69
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 80
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    .line 81
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    .line 83
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    .line 321
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$1;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mWarnListenersRunnable:Ljava/lang/Runnable;

    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 88
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    .line 90
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 225
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 122
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientationFromPath(Ljava/lang/String;)I

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 126
    :cond_0
    const/4 v6, 0x0

    .line 128
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "orientation"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 136
    .local v8, ori:I
    sparse-switch v8, :sswitch_data_0

    .line 150
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v10

    goto :goto_0

    :sswitch_0
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v9

    goto :goto_0

    .line 138
    :sswitch_1
    const/4 v0, 0x6

    .line 150
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 139
    :sswitch_2
    const/16 v0, 0x8

    .line 150
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 140
    :sswitch_3
    const/4 v0, 0x3

    .line 150
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v8           #ori:I
    :cond_1
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v10

    goto :goto_0

    .line 147
    :catch_0
    move-exception v7

    .line 150
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v11

    goto :goto_0

    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_3
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method static getOrientationFromPath(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 155
    const/4 v2, -0x1

    .line 157
    .local v2, orientation:I
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, EXIF:Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 163
    .end local v0           #EXIF:Landroid/media/ExifInterface;
    :goto_0
    return v2

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getZoomOrientation()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomOrientation:I

    return v0
.end method

.method private loadRegionBitmap(Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "uri"
    .parameter "bounds"

    .prologue
    const/4 v3, 0x0

    .line 233
    const/4 v2, 0x0

    .line 235
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 236
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 237
    .local v0, decoder:Landroid/graphics/BitmapRegionDecoder;
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 243
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    .line 245
    .end local v0           #decoder:Landroid/graphics/BitmapRegionDecoder;
    :goto_0
    return-object v3

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 240
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    throw v3
.end method

.method private loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "uri"
    .parameter "size"

    .prologue
    const/16 v11, 0x800

    const/4 v7, 0x0

    .line 250
    const/4 v2, 0x0

    .line 252
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 253
    const-string v8, "ImageLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loading uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 256
    .local v3, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 257
    const/4 v8, 0x0

    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 259
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 260
    .local v6, width_tmp:I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 262
    .local v1, height_tmp:I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    .line 264
    const/4 v5, 0x1

    .line 266
    .local v5, scale:I
    :goto_0
    if-gt v6, v11, :cond_1

    if-gt v1, v11, :cond_1

    .line 267
    div-int/lit8 v8, v6, 0x2

    if-lt v8, p2, :cond_0

    div-int/lit8 v8, v1, 0x2

    if-ge v8, p2, :cond_1

    .line 277
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 278
    .local v4, o2:Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 280
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    .line 281
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 282
    const/4 v8, 0x0

    invoke-static {v2, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 288
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    .line 290
    .end local v1           #height_tmp:I
    .end local v3           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #scale:I
    .end local v6           #width_tmp:I
    :goto_1
    return-object v7

    .line 271
    .restart local v1       #height_tmp:I
    .restart local v3       #o:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #scale:I
    .restart local v6       #width_tmp:I
    :cond_1
    :try_start_1
    div-int/lit8 v6, v6, 0x2

    .line 272
    div-int/lit8 v1, v1, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    mul-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 283
    .end local v1           #height_tmp:I
    .end local v3           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #scale:I
    .end local v6           #width_tmp:I
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v8, "ImageLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 285
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    throw v7
.end method

.method public static rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "ori"

    .prologue
    const/high16 v10, 0x4387

    const/high16 v6, 0x42b4

    const/high16 v4, 0x3f80

    const/high16 v2, -0x4080

    const/high16 v3, 0x4000

    .line 178
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 180
    .local v9, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 181
    .local v7, h:I
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 185
    :cond_0
    move v8, v9

    .line 186
    .local v8, tmp:I
    move v9, v7

    .line 187
    move v7, v8

    .line 189
    .end local v8           #tmp:I
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 218
    .end local p0
    :goto_0
    return-object p0

    .line 191
    .restart local p0
    :pswitch_0
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 218
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 194
    :pswitch_1
    const/high16 v0, 0x4334

    int-to-float v1, v9

    div-float/2addr v1, v3

    int-to-float v2, v7

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 197
    :pswitch_2
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v10, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 200
    :pswitch_3
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 203
    :pswitch_4
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 206
    :pswitch_5
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 207
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 210
    :pswitch_6
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v10, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 211
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private updateBitmaps()V
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 171
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    sput v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomOrientation:I

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/cache/Cache;->setOriginalBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/cache/Cache;->setOriginalBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->warnListeners()V

    .line 175
    return-void
.end method

.method private warnListeners()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mWarnListenersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1
    .parameter "imageShow"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/cache/Cache;->addObserver(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 315
    return-void
.end method

.method public getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public getImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "caller"
    .parameter "imagePreset"
    .parameter "hiRes"

    .prologue
    const/4 v0, 0x0

    .line 356
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-object v0

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 365
    .local v0, filteredImage:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 366
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/android/gallery3d/filtershow/cache/Cache;->get(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 371
    :goto_1
    if-nez v0, :cond_0

    .line 372
    if-eqz p3, :cond_3

    .line 373
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/android/gallery3d/filtershow/cache/Cache;->prepare(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 374
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/filtershow/cache/Cache;->addObserver(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/android/gallery3d/filtershow/cache/Cache;->get(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 376
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/android/gallery3d/filtershow/cache/Cache;->prepare(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 377
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/filtershow/cache/Cache;->addObserver(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    goto :goto_0
.end method

.method public getOriginalBitmapLarge()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScaleOneImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "caller"
    .parameter "imagePreset"
    .parameter "bounds"
    .parameter "force"

    .prologue
    .line 336
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    invoke-virtual {v3, p2, p3}, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->getImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    if-nez v0, :cond_1

    .line 338
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v3, p3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadRegionBitmap(Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_1

    .line 341
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 342
    .local v1, bmp2:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getScaleFactor()F

    move-result v2

    .line 343
    .local v2, scaleFactor:F
    const/high16 v3, 0x3f80

    invoke-virtual {p2, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 344
    invoke-virtual {p2, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    invoke-virtual {p2, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 346
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    invoke-virtual {v3, p2, p3, v1}, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->setImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 350
    .end local v1           #bmp2:Landroid/graphics/Bitmap;
    .end local v2           #scaleFactor:F
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getXmpObject()Lcom/adobe/xmp/XMPMeta;
    .locals 4

    .prologue
    .line 413
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 414
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 416
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadBitmap(Landroid/net/Uri;I)V
    .locals 1
    .parameter "uri"
    .parameter "size"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    .line 104
    const/16 v0, 0xa0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->cannotLoadImage()V

    .line 109
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 110
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->updateBitmaps()V

    .line 111
    return-void
.end method

.method public queryLightCycle360()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 427
    :try_start_0
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 428
    .local v5, is:Ljava/io/InputStream;
    invoke-static {v5}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v6

    .line 429
    .local v6, meta:Lcom/adobe/xmp/XMPMeta;
    if-nez v6, :cond_1

    .line 459
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #meta:Lcom/adobe/xmp/XMPMeta;
    :cond_0
    :goto_0
    return v9

    .line 432
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #meta:Lcom/adobe/xmp/XMPMeta;
    :cond_1
    invoke-interface {v6}, Lcom/adobe/xmp/XMPMeta;->getPacketHeader()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 434
    .local v7, name:Ljava/lang/String;
    :try_start_1
    const-string v8, "http://ns.google.com/photos/1.0/panorama/"

    .line 435
    .local v8, namespace:Ljava/lang/String;
    const-string v1, "GPano:CroppedAreaImageWidthPixels"

    .line 436
    .local v1, cropWidthName:Ljava/lang/String;
    const-string v4, "GPano:FullPanoWidthPixels"

    .line 438
    .local v4, fullWidthName:Ljava/lang/String;
    invoke-interface {v6, v8, v1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 441
    invoke-interface {v6, v8, v4}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 445
    invoke-interface {v6, v8, v1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 446
    .local v0, cropValue:Ljava/lang/Integer;
    invoke-interface {v6, v8, v4}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 450
    .local v3, fullValue:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 451
    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    goto :goto_0

    .line 455
    .end local v0           #cropValue:Ljava/lang/Integer;
    .end local v1           #cropWidthName:Ljava/lang/String;
    .end local v3           #fullValue:Ljava/lang/Integer;
    .end local v4           #fullWidthName:Ljava/lang/String;
    .end local v8           #namespace:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 456
    .local v2, e:Lcom/adobe/xmp/XMPException;
    goto :goto_0

    .line 458
    .end local v2           #e:Lcom/adobe/xmp/XMPException;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #meta:Lcom/adobe/xmp/XMPMeta;
    .end local v7           #name:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 459
    .local v2, e:Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method public resetImageForPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1
    .parameter "imagePreset"
    .parameter "caller"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/cache/Cache;->reset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 385
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/cache/Cache;->reset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 386
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->reset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 387
    return-void
.end method

.method public saveImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V
    .locals 5
    .parameter "preset"
    .parameter "filterShowActivity"
    .parameter "destination"

    .prologue
    const/4 v4, 0x1

    .line 391
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsHighQuality(Z)V

    .line 392
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 393
    new-instance v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    new-instance v3, Lcom/android/gallery3d/filtershow/cache/ImageLoader$2;

    invoke-direct {v3, p0, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$2;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-direct {v0, v1, v2, p3, v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;)V

    new-array v1, v4, [Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 401
    return-void
.end method

.method public setAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 405
    return-void
.end method
