.class Lcom/inventec/iMobile12/BxCarSetSubItem$d$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inventec/iMobile12/BxCarSetSubItem$d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/inventec/iMobile12/BxCarSetSubItem$d;


# direct methods
.method constructor <init>(Lcom/inventec/iMobile12/BxCarSetSubItem$d;)V
    .locals 0

    iput-object p1, p0, Lcom/inventec/iMobile12/BxCarSetSubItem$d$f;->b:Lcom/inventec/iMobile12/BxCarSetSubItem$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/inventec/iMobile12/BxCarSetSubItem$d$f;->b:Lcom/inventec/iMobile12/BxCarSetSubItem$d;

    invoke-virtual {v0}, Lcom/inventec/iMobile12/BxCarSetSubItem$d;->g()V
    :try_end_0
    .catch Lcom/inventec/iMobile12/e; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
