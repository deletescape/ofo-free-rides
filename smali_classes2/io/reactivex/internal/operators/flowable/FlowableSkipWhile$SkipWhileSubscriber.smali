.class final Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;
.super Ljava/lang/Object;
.source "FlowableSkipWhile.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSkipWhile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipWhileSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;",
        "Lorg/a/d;"
    }
.end annotation


# instance fields
.field final actual:Lorg/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/c",
            "<-TT;>;"
        }
    .end annotation
.end field

.field notSkipping:Z

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate",
            "<-TT;>;"
        }
    .end annotation
.end field

.field s:Lorg/a/d;


# direct methods
.method constructor <init>(Lorg/a/c;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/c",
            "<-TT;>;",
            "Lio/reactivex/functions/Predicate",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/a/c;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    .line 43
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/a/d;

    invoke-interface {v0}, Lorg/a/d;->cancel()V

    .line 94
    return-void
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/a/c;

    invoke-interface {v0}, Lorg/a/c;->onComplete()V

    .line 84
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/a/c;

    invoke-interface {v0, p1}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->notSkipping:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/a/c;

    invoke-interface {v0, p1}, Lorg/a/c;->onNext(Ljava/lang/Object;)V

    .line 74
    :goto_0
    return-void

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/a/d;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, Lorg/a/d;->request(J)V

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 63
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/a/d;

    invoke-interface {v1}, Lorg/a/d;->cancel()V

    .line 64
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/a/c;

    invoke-interface {v1, v0}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->notSkipping:Z

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/a/c;

    invoke-interface {v0, p1}, Lorg/a/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSubscribe(Lorg/a/d;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/a/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/a/d;Lorg/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/a/d;

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/a/c;

    invoke-interface {v0, p0}, Lorg/a/c;->onSubscribe(Lorg/a/d;)V

    .line 51
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/a/d;

    invoke-interface {v0, p1, p2}, Lorg/a/d;->request(J)V

    .line 89
    return-void
.end method
