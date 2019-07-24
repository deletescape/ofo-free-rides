.class final Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableRetryPredicate.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RepeatSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x628271a96862fff0L


# instance fields
.field final actual:Lorg/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/c",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate",
            "<-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field remaining:J

.field final sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

.field final source:Lorg/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/b",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/a/c;JLio/reactivex/functions/Predicate;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;Lorg/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/c",
            "<-TT;>;J",
            "Lio/reactivex/functions/Predicate",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
            "Lorg/a/b",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->actual:Lorg/a/c;

    .line 58
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    .line 59
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->source:Lorg/a/b;

    .line 60
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    .line 61
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->remaining:J

    .line 62
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->actual:Lorg/a/c;

    invoke-interface {v0}, Lorg/a/c;->onComplete()V

    .line 102
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 76
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->remaining:J

    .line 77
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 78
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->remaining:J

    .line 80
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->actual:Lorg/a/c;

    invoke-interface {v0, p1}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    .line 97
    :goto_0
    return-void

    .line 85
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->actual:Lorg/a/c;

    invoke-interface {v0, p1}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 88
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->actual:Lorg/a/c;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->subscribeNext()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->actual:Lorg/a/c;

    invoke-interface {v0, p1}, Lorg/a/c;->onNext(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->produced(J)V

    .line 73
    return-void
.end method

.method public onSubscribe(Lorg/a/d;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lorg/a/d;)V

    .line 67
    return-void
.end method

.method subscribeNext()V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x1

    .line 111
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->source:Lorg/a/b;

    invoke-interface {v1, p0}, Lorg/a/b;->subscribe(Lorg/a/c;)V

    .line 116
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RepeatSubscriber;->addAndGet(I)I

    move-result v0

    .line 117
    if-nez v0, :cond_0

    goto :goto_0
.end method
