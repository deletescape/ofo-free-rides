.class public final Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;
.super Lio/reactivex/Flowable;
.source "FlowableConcatMapEagerPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final errorMode:Lio/reactivex/internal/util/ErrorMode;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/a/b",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final prefetch:I

.field final source:Lorg/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/a/b;Lio/reactivex/functions/Function;IILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/b",
            "<TT;>;",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/a/b",
            "<+TR;>;>;II",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;->source:Lorg/a/b;

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;->mapper:Lio/reactivex/functions/Function;

    .line 48
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;->maxConcurrency:I

    .line 49
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;->prefetch:I

    .line 50
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    .line 51
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/a/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/c",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;->source:Lorg/a/b;

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;->mapper:Lio/reactivex/functions/Function;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;->maxConcurrency:I

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;->prefetch:I

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;-><init>(Lorg/a/c;Lio/reactivex/functions/Function;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-interface {v6, v0}, Lorg/a/b;->subscribe(Lorg/a/c;)V

    .line 57
    return-void
.end method
