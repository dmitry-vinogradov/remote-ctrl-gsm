.class Lcom/inventec/iMobile12/BxCarSetSubItem$d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inventec/iMobile12/BxCarSetSubItem$d;-><init>(Lcom/inventec/iMobile12/BxCarSetSubItem;Lcom/inventec/iMobile12/z1/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/inventec/iMobile12/BxCarSetSubItem$d;


# direct methods
.method constructor <init>(Lcom/inventec/iMobile12/BxCarSetSubItem$d;Lcom/inventec/iMobile12/BxCarSetSubItem;)V
    .locals 0

    iput-object p1, p0, Lcom/inventec/iMobile12/BxCarSetSubItem$d$c;->b:Lcom/inventec/iMobile12/BxCarSetSubItem$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/inventec/iMobile12/BxCarSetSubItem$d$c;->b:Lcom/inventec/iMobile12/BxCarSetSubItem$d;

    iget-object p1, p1, Lcom/inventec/iMobile12/BxCarSetSubItem$d;->k:Lcom/inventec/iMobile12/BxCarSetSubItem;

    invoke-virtual {p1}, Lcom/inventec/iMobile12/z1/e;->w()V
    :try_end_0
    .catch Lcom/inventec/iMobile12/e; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
