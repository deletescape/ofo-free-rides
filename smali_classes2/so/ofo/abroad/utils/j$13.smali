.class final Lso/ofo/abroad/utils/j$13;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/networkbench/agent/impl/instrumentation/NBSInstrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lso/ofo/abroad/utils/j;->a(Landroid/app/Activity;Lso/ofo/abroad/bean/UpdateVersionBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lso/ofo/abroad/widget/a;


# direct methods
.method constructor <init>(Lso/ofo/abroad/widget/a;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lso/ofo/abroad/utils/j$13;->a:Lso/ofo/abroad/widget/a;

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

    .line 341
    iget-object v0, p0, Lso/ofo/abroad/utils/j$13;->a:Lso/ofo/abroad/widget/a;

    invoke-virtual {v0}, Lso/ofo/abroad/widget/a;->dismiss()V

    .line 342
    invoke-static {}, Lso/ofo/abroad/AbroadApplication;->a()Lso/ofo/abroad/AbroadApplication;

    move-result-object v0

    invoke-static {v0}, Lso/ofo/abroad/pagejump/f;->a(Landroid/content/Context;)V

    .line 343
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSEventTraceEngine;->onClickEventExit()V

    return-void
.end method
