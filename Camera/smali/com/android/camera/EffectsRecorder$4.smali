.class Lcom/android/camera/EffectsRecorder$4;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunnerDone(I)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x3

    .line 795
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    monitor-enter v3

    .line 796
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    const-string v2, "effectsrecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Graph runner done ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/android/camera/EffectsRecorder;->access$600(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOldRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 804
    const-string v2, "effectsrecorder"

    const-string v4, "Error running filter graph!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$600(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 807
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$600(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 811
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #calls: Lcom/android/camera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V
    invoke-static {v2, v0}, Lcom/android/camera/EffectsRecorder;->access$800(Lcom/android/camera/EffectsRecorder;Ljava/lang/Exception;)V

    .line 813
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 815
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "effectsrecorder"

    const-string v4, "Tearing down old graph."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_3
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$900(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 817
    .local v1, glEnv:Landroid/filterfw/core/GLEnvironment;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 818
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 820
    :cond_4
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v4}, Lcom/android/camera/EffectsRecorder;->access$900(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 821
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 822
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 824
    :cond_5
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2, v4}, Lcom/android/camera/EffectsRecorder;->access$702(Lcom/android/camera/EffectsRecorder;Landroid/filterfw/core/GraphRunner;)Landroid/filterfw/core/GraphRunner;

    .line 826
    .end local v1           #glEnv:Landroid/filterfw/core/GLEnvironment;
    :cond_6
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v2

    if-eq v2, v6, :cond_7

    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    .line 829
    :cond_7
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "effectsrecorder"

    const-string v4, "Previous effect halted, starting new effect."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_8
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 831
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$600(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->run()V

    .line 840
    :cond_9
    :goto_1
    monitor-exit v3

    .line 841
    return-void

    .line 808
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_a
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v0

    goto/16 :goto_0

    .line 832
    .end local v0           #e:Ljava/lang/Exception;
    :cond_b
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_9

    .line 834
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "effectsrecorder"

    const-string v4, "Runner halted, restoring direct preview"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_c
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 836
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v4, 0x0

    const/4 v5, 0x3

    #calls: Lcom/android/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v2, v4, v5}, Lcom/android/camera/EffectsRecorder;->access$500(Lcom/android/camera/EffectsRecorder;II)V

    goto :goto_1

    .line 840
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
