.class Lcom/android/camera/ui/SharePopup$MySimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "SharePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SharePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySimpleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SharePopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SharePopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/android/camera/ui/SharePopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/SharePopup;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 78
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 79
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0d0066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    .line 85
    .local v0, r:Lcom/android/camera/ui/RotateLayout;
    iget-object v2, p0, Lcom/android/camera/ui/SharePopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/SharePopup;

    #getter for: Lcom/android/camera/ui/SharePopup;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/ui/SharePopup;->access$000(Lcom/android/camera/ui/SharePopup;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(I)V

    .line 86
    return-object v1
.end method
