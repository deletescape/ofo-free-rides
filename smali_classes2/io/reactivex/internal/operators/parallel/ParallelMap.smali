.class public final Lio/reactivex/internal/operators/parallel/ParallelMap;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;",
            "Lio/reactivex/functions/Function",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    .line 41
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->mapper:Lio/reactivex/functions/Function;

    .line 42
    return-void
.end method


# virtual methods
.method public parallelism()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/a/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/a/c",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelMap;->validate([Lorg/a/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 50
    :cond_0
    array-length v2, p1

    .line 52
    new-array v3, v2, [Lorg/a/c;

    .line 54
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 55
    aget-object v0, p1, v1

    .line 56
    instance-of v4, v0, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v4, :cond_1

    .line 57
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;

    check-cast v0, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->mapper:Lio/reactivex/functions/Function;

    invoke-direct {v4, v0, v5}, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;)V

    aput-object v4, v3, v1

    .line 54
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 59
    :cond_1
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->mapper:Lio/reactivex/functions/Function;

    invoke-direct {v4, v0, v5}, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;-><init>(Lorg/a/c;Lio/reactivex/functions/Function;)V

    aput-object v4, v3, v1

    goto :goto_2

    .line 63
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0, v3}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/a/c;)V

    goto :goto_0
.end method
