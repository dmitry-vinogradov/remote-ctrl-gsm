.class Lcom/kostal/car2017/frmEVACSetTop_16MY$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kostal/car2017/frmEVACSetTop_16MY$a;-><init>(Lcom/kostal/car2017/frmEVACSetTop_16MY;Lcom/inventec/iMobile12/z1/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kostal/car2017/frmEVACSetTop_16MY$a;


# direct methods
.method constructor <init>(Lcom/kostal/car2017/frmEVACSetTop_16MY$a;Lcom/kostal/car2017/frmEVACSetTop_16MY;)V
    .locals 0

    iput-object p1, p0, Lcom/kostal/car2017/frmEVACSetTop_16MY$a$b;->b:Lcom/kostal/car2017/frmEVACSetTop_16MY$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 p1, 0xa

    move-object v3, v0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/kostal/car2017/frmEVACSetTop_16MY$a$b;->b:Lcom/kostal/car2017/frmEVACSetTop_16MY$a;

    invoke-static {v1}, Lcom/kostal/car2017/frmEVACSetTop_16MY$a;->f(Lcom/kostal/car2017/frmEVACSetTop_16MY$a;)Lcom/inventec/iMobile12/z1/e;

    move-result-object v1

    const-class v3, Lcom/inventec/iMobile12/NewHelpAvtivity;

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0xe

    const-string v3, "28"

    move-object v1, p1

    const/16 p1, 0xe

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kostal/car2017/frmEVACSetTop_16MY$a$b;->b:Lcom/kostal/car2017/frmEVACSetTop_16MY$a;

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0xc

    move-object v0, v3

    move v3, p1

    move-object p1, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v3, v3, 0xc

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/kostal/car2017/frmEVACSetTop_16MY$a;->g(Lcom/kostal/car2017/frmEVACSetTop_16MY$a;)Lcom/inventec/iMobile12/z1/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    add-int/lit8 v3, v3, 0x9

    :goto_2
    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/kostal/car2017/frmEVACSetTop_16MY$a$b;->b:Lcom/kostal/car2017/frmEVACSetTop_16MY$a;

    invoke-static {p1}, Lcom/kostal/car2017/frmEVACSetTop_16MY$a;->b(Lcom/kostal/car2017/frmEVACSetTop_16MY$a;)Lcom/inventec/iMobile12/z1/e;

    move-result-object v2

    :cond_3
    const p1, 0x7f01001c

    const v0, 0x7f01000c

    invoke-virtual {v2, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
