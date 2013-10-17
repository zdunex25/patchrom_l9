.class Lcom/android/camera/ComboPreferences$MyEditor;
.super Ljava/lang/Object;
.source "ComboPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ComboPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEditor"
.end annotation


# instance fields
.field private mEditorGlobal:Landroid/content/SharedPreferences$Editor;

.field private mEditorLocal:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/android/camera/ComboPreferences;


# direct methods
.method constructor <init>(Lcom/android/camera/ComboPreferences;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/camera/ComboPreferences$MyEditor;->this$0:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    #getter for: Lcom/android/camera/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/camera/ComboPreferences;->access$000(Lcom/android/camera/ComboPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    .line 141
    #getter for: Lcom/android/camera/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/camera/ComboPreferences;->access$100(Lcom/android/camera/ComboPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    .line 142
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 159
    return-object p0
.end method

.method public commit()Z
    .locals 3

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 146
    .local v0, result1:Z
    iget-object v2, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 147
    .local v1, result2:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 205
    #calls: Lcom/android/camera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    :goto_0
    return-object p0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 196
    #calls: Lcom/android/camera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 201
    :goto_0
    return-object p0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 178
    #calls: Lcom/android/camera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    :goto_0
    return-object p0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 187
    #calls: Lcom/android/camera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    :goto_0
    return-object p0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 169
    #calls: Lcom/android/camera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    :goto_0
    return-object p0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 215
    .local p2, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    iget-object v0, p0, Lcom/android/camera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    return-object p0
.end method
