.class public Lcom/android/camera/ui/EffectSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "EffectSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/EffectSettingPopup$Listener;
    }
.end annotation


# instance fields
.field private mBackgroundGrid:Landroid/widget/GridView;

.field mBackgroundItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClearEffects:Landroid/view/View;

.field private mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

.field private mNoEffect:Ljava/lang/String;

.field private mPreference:Lcom/android/camera/IconListPreference;

.field private mSillyFacesGrid:Landroid/widget/GridView;

.field mSillyFacesItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    .line 62
    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 18
    .parameter "preference"

    .prologue
    .line 75
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/EffectSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 77
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 78
    .local v10, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 79
    .local v11, entryValues:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v15

    .line 80
    .local v15, iconIds:[I
    if-nez v15, :cond_0

    .line 81
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v15

    .line 85
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    array-length v5, v10

    if-ge v14, v5, :cond_5

    .line 88
    aget-object v5, v11, v14

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 89
    .local v17, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 90
    :cond_2
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v16, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v5, "text"

    aget-object v6, v10, v14

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    if-eqz v15, :cond_3

    const-string v5, "image"

    aget v6, v15, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_3
    const-string v5, "goofy_face"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 95
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_4
    const-string v5, "backdropper"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    .end local v16           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17           #value:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    const/4 v13, 0x1

    .line 102
    .local v13, hasSillyFaces:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    const/4 v12, 0x1

    .line 105
    .local v12, hasBackground:Z
    :goto_3
    if-eqz v13, :cond_6

    .line 106
    const v5, 0x7f0d000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const v5, 0x7f0d000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setVisibility(I)V

    .line 109
    new-instance v2, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    const v5, 0x7f040004

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "text"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "image"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 113
    .local v2, sillyFacesItemAdapter:Landroid/widget/SimpleAdapter;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    invoke-virtual {v5, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    .end local v2           #sillyFacesItemAdapter:Landroid/widget/SimpleAdapter;
    :cond_6
    if-eqz v13, :cond_7

    if-eqz v12, :cond_7

    .line 118
    const v5, 0x7f0d0011

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_7
    if-eqz v12, :cond_8

    .line 123
    const v5, 0x7f0d0012

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const v5, 0x7f0d0013

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setVisibility(I)V

    .line 126
    new-instance v4, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    const v7, 0x7f040004

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "text"

    aput-object v9, v8, v5

    const/4 v5, 0x1

    const-string v9, "image"

    aput-object v9, v8, v5

    const/4 v5, 0x2

    new-array v9, v5, [I

    fill-array-data v9, :array_1

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 130
    .local v4, backgroundItemAdapter:Landroid/widget/SimpleAdapter;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    invoke-virtual {v5, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    .end local v4           #backgroundItemAdapter:Landroid/widget/SimpleAdapter;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/EffectSettingPopup;->reloadPreference()V

    .line 135
    return-void

    .line 101
    .end local v12           #hasBackground:Z
    .end local v13           #hasSillyFaces:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 102
    .restart local v13       #hasSillyFaces:Z
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 109
    :array_0
    .array-data 0x4
        0xct 0x0t 0xdt 0x7ft
        0xbt 0x0t 0xdt 0x7ft
    .end array-data

    .line 126
    :array_1
    .array-data 0x4
        0xct 0x0t 0xdt 0x7ft
        0xbt 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSettingPopup;->reloadPreference()V

    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/EffectSettingPopup$Listener;->onSettingChanged()V

    .line 210
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/camera/ui/AbstractSettingPopup;->onFinishInflate()V

    .line 68
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mClearEffects:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mClearEffects:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    .line 71
    const v0, 0x7f0d0014

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    .line 72
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    if-ne p1, v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, value:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 200
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSettingPopup;->reloadPreference()V

    .line 201
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

    invoke-interface {v1}, Lcom/android/camera/ui/EffectSettingPopup$Listener;->onSettingChanged()V

    .line 202
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    if-ne p1, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reloadPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 155
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 157
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_0

    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 168
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_0

    .line 167
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    :cond_4
    const-string v2, "EffectSettingPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid preference value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/EffectSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

    .line 180
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 139
    if-nez p1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    .local v0, noEffect:Z
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mClearEffects:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .end local v0           #noEffect:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSettingPopup;->reloadPreference()V

    .line 148
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 149
    return-void

    .line 144
    .restart local v0       #noEffect:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
