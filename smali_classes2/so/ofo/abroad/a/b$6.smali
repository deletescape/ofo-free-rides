.class Lso/ofo/abroad/a/b$6;
.super Ljava/lang/Object;
.source "BleQuickUnlockUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/networkbench/agent/impl/instrumentation/NBSInstrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lso/ofo/abroad/a/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lso/ofo/abroad/a/b;


# direct methods
.method constructor <init>(Lso/ofo/abroad/a/b;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lso/ofo/abroad/a/b$6;->a:Lso/ofo/abroad/a/b;

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

    .line 279
    iget-object v0, p0, Lso/ofo/abroad/a/b$6;->a:Lso/ofo/abroad/a/b;

    invoke-static {v0}, Lso/ofo/abroad/a/b;->g(Lso/ofo/abroad/a/b;)V

    .line 280
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSEventTraceEngine;->onClickEventExit()V

    return-void
.end method
