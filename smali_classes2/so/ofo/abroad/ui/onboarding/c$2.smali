.class Lso/ofo/abroad/ui/onboarding/c$2;
.super Ljava/lang/Object;
.source "OnboardingPresenter.java"

# interfaces
.implements Lso/ofo/abroad/f/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lso/ofo/abroad/ui/onboarding/c;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lso/ofo/abroad/ui/onboarding/c;


# direct methods
.method constructor <init>(Lso/ofo/abroad/ui/onboarding/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lso/ofo/abroad/ui/onboarding/c$2;->b:Lso/ofo/abroad/ui/onboarding/c;

    iput-object p2, p0, Lso/ofo/abroad/ui/onboarding/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;I)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lso/ofo/abroad/ui/onboarding/c$2;->b:Lso/ofo/abroad/ui/onboarding/c;

    invoke-static {v0}, Lso/ofo/abroad/ui/onboarding/c;->a(Lso/ofo/abroad/ui/onboarding/c;)Lso/ofo/abroad/ui/onboarding/a$b;

    move-result-object v0

    invoke-interface {v0}, Lso/ofo/abroad/ui/onboarding/a$b;->u()V

    .line 136
    iget-object v0, p0, Lso/ofo/abroad/ui/onboarding/c$2;->b:Lso/ofo/abroad/ui/onboarding/c;

    invoke-static {v0}, Lso/ofo/abroad/ui/onboarding/c;->a(Lso/ofo/abroad/ui/onboarding/c;)Lso/ofo/abroad/ui/onboarding/a$b;

    move-result-object v0

    invoke-interface {v0}, Lso/ofo/abroad/ui/onboarding/a$b;->s()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lso/ofo/abroad/network/a;->a(Landroid/app/Activity;Ljava/lang/Throwable;I)V

    .line 137
    return-void
.end method

.method public a(Lso/ofo/abroad/bean/BaseBean;)V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lso/ofo/abroad/ui/onboarding/c$2;->b:Lso/ofo/abroad/ui/onboarding/c;

    invoke-static {v0}, Lso/ofo/abroad/ui/onboarding/c;->a(Lso/ofo/abroad/ui/onboarding/c;)Lso/ofo/abroad/ui/onboarding/a$b;

    move-result-object v0

    invoke-interface {v0}, Lso/ofo/abroad/ui/onboarding/a$b;->u()V

    .line 113
    check-cast p1, Lso/ofo/abroad/bean/Bean;

    .line 114
    invoke-virtual {p1}, Lso/ofo/abroad/bean/Bean;->getErrorCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 115
    invoke-virtual {p1}, Lso/ofo/abroad/bean/Bean;->getValues()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lso/ofo/abroad/bean/PaymentInfo;

    .line 116
    iget-object v1, p0, Lso/ofo/abroad/ui/onboarding/c$2;->b:Lso/ofo/abroad/ui/onboarding/c;

    invoke-virtual {v0}, Lso/ofo/abroad/bean/PaymentInfo;->getOrderNo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lso/ofo/abroad/ui/onboarding/c;->a(Lso/ofo/abroad/ui/onboarding/c;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-virtual {v0}, Lso/ofo/abroad/bean/PaymentInfo;->is3dCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lso/ofo/abroad/ui/onboarding/c$2;->b:Lso/ofo/abroad/ui/onboarding/c;

    const-string v2, ""

    invoke-virtual {v0}, Lso/ofo/abroad/bean/PaymentInfo;->getIssuerUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lso/ofo/abroad/ui/onboarding/c;->a(Lso/ofo/abroad/ui/onboarding/c;Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v1, Lso/ofo/abroad/ui/payment/PayAccountEnum;->TRUE_MONEY:Lso/ofo/abroad/ui/payment/PayAccountEnum;

    invoke-virtual {v1}, Lso/ofo/abroad/ui/payment/PayAccountEnum;->getPayAccountId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lso/ofo/abroad/ui/onboarding/c$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lso/ofo/abroad/ui/payment/PayAccountEnum;->PAY_TM:Lso/ofo/abroad/ui/payment/PayAccountEnum;

    .line 120
    invoke-virtual {v1}, Lso/ofo/abroad/ui/payment/PayAccountEnum;->getPayAccountId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lso/ofo/abroad/ui/onboarding/c$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    :cond_1
    invoke-static {}, Lcom/ofo/ofopay/CallbackManager;->getInstance()Lcom/ofo/ofopay/CallbackManager;

    move-result-object v1

    iget-object v2, p0, Lso/ofo/abroad/ui/onboarding/c$2;->b:Lso/ofo/abroad/ui/onboarding/c;

    invoke-static {v2}, Lso/ofo/abroad/ui/onboarding/c;->b(Lso/ofo/abroad/ui/onboarding/c;)Lso/ofo/abroad/ui/wallet/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ofo/ofopay/CallbackManager;->registerPayCallback(Lcom/ofo/ofopay/callbacks/IPayCallback;)V

    .line 122
    invoke-static {}, Lcom/ofo/ofopay/OfoPayManager;->getInstance()Lcom/ofo/ofopay/OfoPayManager;

    move-result-object v1

    invoke-virtual {v0}, Lso/ofo/abroad/bean/PaymentInfo;->getGatewayReq()Lso/ofo/abroad/bean/PayRequestInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ofo/ofopay/OfoPayManager;->pay(Lcom/ofo/ofopay/bean/request/PayRequest;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Lso/ofo/abroad/ui/onboarding/c$2;->b:Lso/ofo/abroad/ui/onboarding/c;

    invoke-static {v1}, Lso/ofo/abroad/ui/onboarding/c;->a(Lso/ofo/abroad/ui/onboarding/c;)Lso/ofo/abroad/ui/onboarding/a$b;

    move-result-object v1

    invoke-virtual {v0}, Lso/ofo/abroad/bean/PaymentInfo;->getDays()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lso/ofo/abroad/ui/onboarding/a$b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p1}, Lso/ofo/abroad/bean/Bean;->getErrorCode()I

    move-result v0

    const v1, 0x9c52

    if-ne v0, v1, :cond_4

    .line 127
    iget-object v0, p0, Lso/ofo/abroad/ui/onboarding/c$2;->b:Lso/ofo/abroad/ui/onboarding/c;

    invoke-static {v0}, Lso/ofo/abroad/ui/onboarding/c;->a(Lso/ofo/abroad/ui/onboarding/c;)Lso/ofo/abroad/ui/onboarding/a$b;

    move-result-object v0

    invoke-virtual {p1}, Lso/ofo/abroad/bean/Bean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lso/ofo/abroad/ui/onboarding/a$b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lso/ofo/abroad/ui/onboarding/c$2;->b:Lso/ofo/abroad/ui/onboarding/c;

    invoke-static {v0}, Lso/ofo/abroad/ui/onboarding/c;->a(Lso/ofo/abroad/ui/onboarding/c;)Lso/ofo/abroad/ui/onboarding/a$b;

    move-result-object v0

    invoke-virtual {p1}, Lso/ofo/abroad/bean/Bean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lso/ofo/abroad/ui/onboarding/a$b;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
