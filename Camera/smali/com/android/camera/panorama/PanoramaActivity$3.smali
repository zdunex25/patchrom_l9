.class Lcom/android/camera/panorama/PanoramaActivity$3;
.super Landroid/os/Handler;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1500(Lcom/android/camera/panorama/PanoramaActivity;)V

    .line 345
    return-void

    .line 303
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$400(Lcom/android/camera/panorama/PanoramaActivity;)V

    .line 304
    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$500(Lcom/android/camera/panorama/PanoramaActivity;Landroid/graphics/Bitmap;)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaActivity;->saveHighResMosaic()V

    goto :goto_0

    .line 308
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$400(Lcom/android/camera/panorama/PanoramaActivity;)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$600(Lcom/android/camera/panorama/PanoramaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->saveThumbnailToFile()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$700(Lcom/android/camera/panorama/PanoramaActivity;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->updateThumbnailButton()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$800(Lcom/android/camera/panorama/PanoramaActivity;)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #setter for: Lcom/android/camera/panorama/PanoramaActivity;->mSharePopup:Lcom/android/camera/ui/SharePopup;
    invoke-static {v0, v5}, Lcom/android/camera/panorama/PanoramaActivity;->access$902(Lcom/android/camera/panorama/PanoramaActivity;Lcom/android/camera/ui/SharePopup;)Lcom/android/camera/ui/SharePopup;

    .line 318
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1000(Lcom/android/camera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 321
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$400(Lcom/android/camera/panorama/PanoramaActivity;)V

    .line 322
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$600(Lcom/android/camera/panorama/PanoramaActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1000(Lcom/android/camera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1400(Lcom/android/camera/panorama/PanoramaActivity;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mDialogTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/panorama/PanoramaActivity;->access$1100(Lcom/android/camera/panorama/PanoramaActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/panorama/PanoramaActivity;->access$1200(Lcom/android/camera/panorama/PanoramaActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #getter for: Lcom/android/camera/panorama/PanoramaActivity;->mDialogOkString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/panorama/PanoramaActivity;->access$1300(Lcom/android/camera/panorama/PanoramaActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/camera/panorama/PanoramaActivity$3$1;

    invoke-direct {v4, p0}, Lcom/android/camera/panorama/PanoramaActivity$3$1;-><init>(Lcom/android/camera/panorama/PanoramaActivity$3;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 336
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$400(Lcom/android/camera/panorama/PanoramaActivity;)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    #calls: Lcom/android/camera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaActivity;->access$1000(Lcom/android/camera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 340
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaActivity$3;->this$0:Lcom/android/camera/panorama/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
