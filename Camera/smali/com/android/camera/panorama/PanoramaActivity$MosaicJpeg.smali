.class Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/panorama/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field final synthetic this$0:Lcom/android/camera/panorama/PanoramaActivity;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/panorama/PanoramaActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 193
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    .line 195
    iput v1, p0, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->width:I

    .line 196
    iput v1, p0, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->height:I

    .line 197
    iput-boolean v1, p0, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->isValid:Z

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/panorama/PanoramaActivity;[BII)V
    .locals 1
    .parameter
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    .line 188
    iput p3, p0, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->width:I

    .line 189
    iput p4, p0, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->height:I

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/panorama/PanoramaActivity$MosaicJpeg;->isValid:Z

    .line 191
    return-void
.end method
