.class Lcom/inventec/iMobile12/StepTwoActivity$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inventec/iMobile12/StepTwoActivity$a;-><init>(Lcom/inventec/iMobile12/StepTwoActivity;Lcom/inventec/iMobile12/z1/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/inventec/iMobile12/StepTwoActivity$a;


# direct methods
.method constructor <init>(Lcom/inventec/iMobile12/StepTwoActivity$a;Lcom/inventec/iMobile12/StepTwoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inventec/iMobile12/StepTwoActivity$a$a;->b:Lcom/inventec/iMobile12/StepTwoActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/inventec/iMobile12/StepTwoActivity$a$a;->b:Lcom/inventec/iMobile12/StepTwoActivity$a;

    iget-object p1, p1, Lcom/inventec/iMobile12/StepTwoActivity$a;->g:Lcom/inventec/iMobile12/StepTwoActivity;

    invoke-virtual {p1}, Lcom/inventec/iMobile12/StepTwoActivity;->onBackPressed()V
    :try_end_0
    .catch Lcom/inventec/iMobile12/u1; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
