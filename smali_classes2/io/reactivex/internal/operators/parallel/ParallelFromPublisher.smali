.class public final Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelFromPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final parallelism:I

.field final prefetch:I

.field final source:Lorg/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/b",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/a/b;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/b",
            "<+TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    .line 42
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;->source:Lorg/a/b;

    .line 43
    iput p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;->parallelism:I

    .line 44
    iput p3, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;->prefetch:I

    .line 45
    return-void
.end method


# virtual methods
.method public parallelism()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;->parallelism:I

    return v0
.end method

.method public subscribe([Lorg/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/a/c",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;->validate([Lorg/a/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;->source:Lorg/a/b;

    new-instance v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;

    iget v2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;->prefetch:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;-><init>([Lorg/a/c;I)V

    invoke-interface {v0, v1}, Lorg/a/b;->subscribe(Lorg/a/c;)V

    goto :goto_0
.end method
