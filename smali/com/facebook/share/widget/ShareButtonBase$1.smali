.class Lcom/facebook/share/widget/ShareButtonBase$1;
.super Ljava/lang/Object;
.source "ShareButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/networkbench/agent/impl/instrumentation/NBSInstrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/ShareButtonBase;->getShareOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/widget/ShareButtonBase;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/ShareButtonBase;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/share/widget/ShareButtonBase$1;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/growingio/android/sdk/instrumentation/Instrumented;
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lcom/growingio/android/sdk/agent/VdsAgent;->onClick(Ljava/lang/Object;Landroid/view/View;)V

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSEventTraceEngine;->onClickEventEnter(Landroid/view/View;Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/share/widget/ShareButtonBase$1;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-static {v0, p1}, Lcom/facebook/share/widget/ShareButtonBase;->a(Lcom/facebook/share/widget/ShareButtonBase;Landroid/view/View;)V

    .line 168
    iget-object v0, p0, Lcom/facebook/share/widget/ShareButtonBase$1;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-virtual {v0}, Lcom/facebook/share/widget/ShareButtonBase;->getDialog()Lcom/facebook/internal/g;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/widget/ShareButtonBase$1;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-virtual {v1}, Lcom/facebook/share/widget/ShareButtonBase;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/internal/g;->b(Ljava/lang/Object;)V

    .line 169
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSEventTraceEngine;->onClickEventExit()V

    return-void
.end method
