.class public Lso/ofo/abroad/ui/crowdsourcecharge/earnings/a;
.super Ljava/lang/Object;
.source "ChargerEarningsMode.java"

# interfaces
.implements Lso/ofo/abroad/ui/base/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lso/ofo/abroad/ui/base/a",
        "<",
        "Lso/ofo/abroad/bean/ChargerEarning;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILso/ofo/abroad/f/f;)V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lso/ofo/abroad/network/b;->b()Lso/ofo/abroad/network/RequestHashMap;

    move-result-object v0

    .line 23
    const-string v1, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lso/ofo/abroad/ui/crowdsourcecharge/earnings/a;->a:Lso/ofo/abroad/network/APIService;

    check-cast v0, Lso/ofo/abroad/network/RequestHashMap;

    invoke-virtual {v0}, Lso/ofo/abroad/network/RequestHashMap;->appendSign()Lso/ofo/abroad/network/RequestHashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lso/ofo/abroad/network/APIService;->getChargerEarnings(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object v0

    .line 25
    new-instance v1, Lso/ofo/abroad/ui/crowdsourcecharge/earnings/a$1;

    invoke-direct {v1, p0, p2}, Lso/ofo/abroad/ui/crowdsourcecharge/earnings/a$1;-><init>(Lso/ofo/abroad/ui/crowdsourcecharge/earnings/a;Lso/ofo/abroad/f/f;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 41
    return-void
.end method
