.class Lcom/android/camera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FocusManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/FocusManager;Lcom/android/camera/FocusManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #calls: Lcom/android/camera/FocusManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/android/camera/FocusManager;->access$000(Lcom/android/camera/FocusManager;)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    iget-object v0, v0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->startFaceDetection()V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
