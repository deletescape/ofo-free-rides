.class Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c$5;
.super Ljava/lang/Object;
.source "ChargeInfoPresenter.java"

# interfaces
.implements Lso/ofo/abroad/f/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;


# direct methods
.method constructor <init>(Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c$5;->a:Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;I)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c$5;->a:Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;

    invoke-static {v0}, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;->a(Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;)Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/a$b;

    move-result-object v0

    invoke-interface {v0}, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/a$b;->v()V

    .line 196
    return-void
.end method

.method public a(Lso/ofo/abroad/bean/BaseBean;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c$5;->a:Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;

    invoke-static {v0}, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;->a(Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;)Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/a$b;

    move-result-object v0

    invoke-interface {v0}, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/a$b;->v()V

    .line 183
    check-cast p1, Lso/ofo/abroad/bean/Bean;

    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1}, Lso/ofo/abroad/bean/Bean;->getErrorCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c$5;->a:Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;

    invoke-static {v0}, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;->a(Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;)Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/a$b;

    move-result-object v0

    invoke-virtual {p1}, Lso/ofo/abroad/bean/Bean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/a$b;->a(Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c$5;->a:Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;

    invoke-static {v0}, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;->a(Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/c;)Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/a$b;

    move-result-object v0

    invoke-virtual {p1}, Lso/ofo/abroad/bean/Bean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lso/ofo/abroad/ui/crowdsourcecharge/chargeinfo/a$b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
