.class final Lso/ofo/abroad/utils/i$3;
.super Ljava/lang/Object;
.source "DialogFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/networkbench/agent/impl/instrumentation/NBSInstrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lso/ofo/abroad/utils/i;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;)Lso/ofo/abroad/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lso/ofo/abroad/widget/b;

.field final synthetic b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lso/ofo/abroad/widget/b;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lso/ofo/abroad/utils/i$3;->a:Lso/ofo/abroad/widget/b;

    iput-object p2, p0, Lso/ofo/abroad/utils/i$3;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lcom/growingio/android/sdk/instrumentation/Instrumented;
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lcom/growingio/android/sdk/agent/VdsAgent;->onClick(Ljava/lang/Object;Landroid/view/View;)V

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSEventTraceEngine;->onClickEventEnter(Landroid/view/View;Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lso/ofo/abroad/utils/i$3;->a:Lso/ofo/abroad/widget/b;

    invoke-virtual {v0}, Lso/ofo/abroad/widget/b;->c()V

    .line 310
    iget-object v0, p0, Lso/ofo/abroad/utils/i$3;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lso/ofo/abroad/utils/i$3;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 313
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSEventTraceEngine;->onClickEventExit()V

    return-void
.end method
