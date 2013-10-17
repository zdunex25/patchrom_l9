.class public Lcom/android/camera/ui/SharePopup;
.super Landroid/widget/PopupWindow;
.source "SharePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SharePopup$MySimpleAdapter;
    }
.end annotation


# instance fields
.field private mActivityOrientation:I

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mComponent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGotoGalleryRotate:Lcom/android/camera/ui/RotateLayout;

.field private mImageViewFrame:Landroid/view/View;

.field private mMimeType:Ljava/lang/String;

.field private mOrientation:I

.field private mPreviewFrame:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mShareList:Landroid/widget/GridView;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mThumbnailRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mUri:Landroid/net/Uri;

.field private final mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/graphics/Bitmap;ILandroid/view/View;)V
    .locals 8
    .parameter "activity"
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"
    .parameter "previewFrame"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/SharePopup;->mComponent:Ljava/util/ArrayList;

    .line 90
    new-instance v4, Lcom/android/camera/ui/SharePopup$1;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/SharePopup$1;-><init>(Lcom/android/camera/ui/SharePopup;)V

    iput-object v4, p0, Lcom/android/camera/ui/SharePopup;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/SharePopup;->mActivityOrientation:I

    .line 110
    iput-object p1, p0, Lcom/android/camera/ui/SharePopup;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/camera/ui/SharePopup;->mUri:Landroid/net/Uri;

    .line 112
    iget-object v4, p0, Lcom/android/camera/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/SharePopup;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/SharePopup;->mMimeType:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lcom/android/camera/ui/SharePopup;->mPreviewFrame:Landroid/view/View;

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04001a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 117
    .local v3, sharePopup:Landroid/view/ViewGroup;
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    const v4, 0x7f0d0069

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/android/camera/ui/SharePopup;->mThumbnailRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 120
    const v4, 0x7f0d0070

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/android/camera/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    .line 121
    const v4, 0x7f0d0059

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    .line 122
    iget-object v4, p0, Lcom/android/camera/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    const v4, 0x7f0d006a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/SharePopup;->mImageViewFrame:Landroid/view/View;

    .line 125
    iget-object v4, p0, Lcom/android/camera/ui/SharePopup;->mImageViewFrame:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v4, 0x7f0d006c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/android/camera/ui/SharePopup;->mGotoGalleryRotate:Lcom/android/camera/ui/RotateLayout;

    .line 130
    const v4, 0x7f0d006d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/SharePopup;->mBitmapWidth:I

    .line 133
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/SharePopup;->mBitmapHeight:I

    .line 136
    iget-object v4, p0, Lcom/android/camera/ui/SharePopup;->mMimeType:Ljava/lang/String;

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    const v4, 0x7f0d006b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/SharePopup;->mBitmapWidth:I

    .line 140
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/SharePopup;->mBitmapHeight:I

    .line 142
    iget-object v4, p0, Lcom/android/camera/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 145
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f0d0068

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/SharePopup;->mRootView:Landroid/view/View;

    .line 146
    iget-object v4, p0, Lcom/android/camera/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 147
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    iget-object v4, p0, Lcom/android/camera/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/SharePopup;->setWidth(I)V

    .line 153
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/SharePopup;->setHeight(I)V

    .line 154
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/SharePopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SharePopup;->setContentView(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0, p4}, Lcom/android/camera/ui/SharePopup;->setOrientation(I)V

    .line 157
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/SharePopup;->setFocusable(Z)V

    .line 158
    const v4, 0x7f0c0016

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/SharePopup;->setAnimationStyle(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/ui/SharePopup;->createShareMenu()V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SharePopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/ui/SharePopup;->mOrientation:I

    return v0
.end method


# virtual methods
.method public createShareMenu()V
    .locals 15

    .prologue
    const/4 v6, 0x1

    const/4 v14, 0x0

    .line 238
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 239
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/ui/SharePopup;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v12, v1, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 242
    .local v10, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 244
    .local v9, info:Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v7, component:Landroid/content/ComponentName;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    invoke-virtual {v9, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    .end local v7           #component:Landroid/content/ComponentName;
    .end local v9           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/SharePopup;->mActivityOrientation:I

    if-ne v1, v6, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 256
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 257
    .local v13, width:I
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v1, v13}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 260
    .end local v13           #width:I
    :cond_1
    new-instance v0, Lcom/android/camera/ui/SharePopup$MySimpleAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/SharePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f040019

    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v5, v14

    new-array v6, v6, [I

    const v1, 0x7f0d0067

    aput v1, v6, v14

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/SharePopup$MySimpleAdapter;-><init>(Lcom/android/camera/ui/SharePopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 265
    .local v0, listItemAdapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 266
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/SharePopup;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    :pswitch_0
    return-void

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/SharePopup;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->viewUri(Landroid/net/Uri;Landroid/content/Context;)V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x7f0d006a
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 276
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/camera/ui/SharePopup;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/android/camera/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 230
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/ui/SharePopup;->dismiss()V

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 14
    .parameter "orientation"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ui/SharePopup;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 209
    :goto_0
    return-void

    .line 164
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/SharePopup;->mOrientation:I

    .line 166
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    iget-object v13, p0, Lcom/android/camera/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    add-int v4, v12, v13

    .line 167
    .local v4, hPaddingRootView:I
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    iget-object v13, p0, Lcom/android/camera/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    add-int v11, v12, v13

    .line 171
    .local v11, vPaddingRootView:I
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v12, v4

    int-to-float v7, v12

    .line 172
    .local v7, maxWidth:F
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v12, v11

    int-to-float v6, v12

    .line 174
    .local v6, maxHeight:F
    const/16 v12, 0x5a

    if-eq p1, v12, :cond_1

    const/16 v12, 0x10e

    if-ne p1, v12, :cond_2

    .line 175
    :cond_1
    move v10, v7

    .line 176
    .local v10, temp:F
    move v7, v6

    .line 177
    move v6, v10

    .line 179
    .end local v10           #temp:F
    :cond_2
    div-float v0, v7, v6

    .line 180
    .local v0, actualAspect:F
    iget v12, p0, Lcom/android/camera/ui/SharePopup;->mBitmapWidth:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/camera/ui/SharePopup;->mBitmapHeight:I

    int-to-float v13, v13

    div-float v2, v12, v13

    .line 182
    .local v2, desiredAspect:F
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mMimeType:Ljava/lang/String;

    const-string v13, "video/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 183
    const v2, 0x3faaaaab

    .line 184
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    :goto_1
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 190
    .local v8, params:Landroid/view/ViewGroup$LayoutParams;
    cmpl-float v12, v0, v2

    if-lez v12, :cond_5

    .line 191
    mul-float v12, v6, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    :goto_2
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mThumbnailRotateLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mThumbnailRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v12, p1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(I)V

    .line 201
    :cond_3
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 202
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v1, :cond_6

    .line 203
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v12, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 204
    .local v3, f:Landroid/view/ViewGroup;
    const v12, 0x7f0d0066

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/RotateLayout;

    .line 205
    .local v9, r:Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v9, p1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(I)V

    .line 202
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 186
    .end local v1           #count:I
    .end local v3           #f:Landroid/view/ViewGroup;
    .end local v5           #i:I
    .end local v8           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v9           #r:Lcom/android/camera/ui/RotateLayout;
    :cond_4
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 194
    .restart local v8       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    div-float v12, v7, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 208
    .restart local v1       #count:I
    .restart local v5       #i:I
    :cond_6
    iget-object v12, p0, Lcom/android/camera/ui/SharePopup;->mGotoGalleryRotate:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v12, p1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(I)V

    goto/16 :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 216
    return-void
.end method
