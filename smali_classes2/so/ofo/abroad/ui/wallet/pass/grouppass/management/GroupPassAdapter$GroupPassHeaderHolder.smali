.class public Lso/ofo/abroad/ui/wallet/pass/grouppass/management/GroupPassAdapter$GroupPassHeaderHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GroupPassAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lso/ofo/abroad/ui/wallet/pass/grouppass/management/GroupPassAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupPassHeaderHolder"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lso/ofo/abroad/ui/wallet/pass/grouppass/management/GroupPassAdapter;


# direct methods
.method public constructor <init>(Lso/ofo/abroad/ui/wallet/pass/grouppass/management/GroupPassAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 329
    iput-object p1, p0, Lso/ofo/abroad/ui/wallet/pass/grouppass/management/GroupPassAdapter$GroupPassHeaderHolder;->d:Lso/ofo/abroad/ui/wallet/pass/grouppass/management/GroupPassAdapter;

    .line 330
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 331
    const v0, 0x7f0804c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lso/ofo/abroad/ui/wallet/pass/grouppass/management/GroupPassAdapter$GroupPassHeaderHolder;->a:Landroid/widget/TextView;

    .line 332
    const v0, 0x7f0804ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lso/ofo/abroad/ui/wallet/pass/grouppass/management/GroupPassAdapter$GroupPassHeaderHolder;->b:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f0804c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lso/ofo/abroad/ui/wallet/pass/grouppass/management/GroupPassAdapter$GroupPassHeaderHolder;->c:Landroid/widget/TextView;

    .line 334
    return-void
.end method
