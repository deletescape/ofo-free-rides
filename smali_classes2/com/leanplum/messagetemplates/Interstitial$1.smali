.class final Lcom/leanplum/messagetemplates/Interstitial$1;
.super Lcom/leanplum/callbacks/ActionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leanplum/messagetemplates/Interstitial;->register(Landroid/content/Context;)V
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/leanplum/callbacks/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/leanplum/ActionContext;)Z
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/leanplum/messagetemplates/Interstitial$1$1;

    invoke-direct {v0, p0, p1}, Lcom/leanplum/messagetemplates/Interstitial$1$1;-><init>(Lcom/leanplum/messagetemplates/Interstitial$1;Lcom/leanplum/ActionContext;)V

    invoke-static {v0}, Lcom/leanplum/Leanplum;->addOnceVariablesChangedAndNoDownloadsPendingHandler(Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method
