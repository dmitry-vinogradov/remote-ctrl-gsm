.class Lcom/airbnb/lottie/k$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/k$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/k;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/airbnb/lottie/k;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/k$i;->b:Lcom/airbnb/lottie/k;

    iput p2, p0, Lcom/airbnb/lottie/k$i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/h;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/airbnb/lottie/k$i;->b:Lcom/airbnb/lottie/k;

    iget v0, p0, Lcom/airbnb/lottie/k$i;->a:I

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/k;->c(I)V
    :try_end_0
    .catch Lcom/airbnb/lottie/l; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
