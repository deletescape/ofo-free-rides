.class final Lcom/facebook/appevents/c$3;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/c;->a(Lcom/facebook/appevents/FlushReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/FlushReason;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/FlushReason;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/appevents/c$3;->a:Lcom/facebook/appevents/FlushReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/appevents/c$3;->a:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/c;->b(Lcom/facebook/appevents/FlushReason;)V

    .line 89
    return-void
.end method
