.class final Lcom/leanplum/Leanplum$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leanplum/Leanplum;->a()V
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 964
    :try_start_0
    invoke-static {}, Lcom/leanplum/Leanplum;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :goto_0
    return-void

    .line 965
    :catch_0
    move-exception v0

    .line 966
    invoke-static {v0}, Lcom/leanplum/a/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method