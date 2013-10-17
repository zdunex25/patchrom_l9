.class Lcom/android/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 282
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 284
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeFirstTime()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;I)V

    goto :goto_0

    .line 305
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setDisplayOrientation()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)V

    .line 308
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 315
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showTapToFocusToast()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1200(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 320
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->updateThumbnail()V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
