.class Lcom/golgorz/hoveringcontrols/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MainActivity;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/t;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/t;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MainActivity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method
