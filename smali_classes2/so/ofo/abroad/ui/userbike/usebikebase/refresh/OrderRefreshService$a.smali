.class Lso/ofo/abroad/ui/userbike/usebikebase/refresh/OrderRefreshService$a;
.super Lso/ofo/abroad/widget/c;
.source "OrderRefreshService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lso/ofo/abroad/ui/userbike/usebikebase/refresh/OrderRefreshService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lso/ofo/abroad/widget/c",
        "<",
        "Lso/ofo/abroad/ui/userbike/usebikebase/refresh/OrderRefreshService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lso/ofo/abroad/ui/userbike/usebikebase/refresh/OrderRefreshService;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lso/ofo/abroad/widget/c;-><init>(Ljava/lang/Object;)V

    .line 250
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    invoke-virtual {p0}, Lso/ofo/abroad/ui/userbike/usebikebase/refresh/OrderRefreshService$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lso/ofo/abroad/ui/userbike/usebikebase/refresh/OrderRefreshService;

    .line 257
    if-eqz v0, :cond_0

    .line 258
    invoke-static {v0}, Lso/ofo/abroad/ui/userbike/usebikebase/refresh/OrderRefreshService;->d(Lso/ofo/abroad/ui/userbike/usebikebase/refresh/OrderRefreshService;)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
