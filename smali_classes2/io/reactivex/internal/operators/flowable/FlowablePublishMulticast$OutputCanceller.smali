.class final Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;
.super Ljava/lang/Object;
.source "FlowablePublishMulticast.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OutputCanceller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber",
        "<TR;>;",
        "Lorg/a/d;"
    }
.end annotation


# instance fields
.field final actual:Lorg/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/c",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final processor:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor",
            "<*>;"
        }
    .end annotation
.end field

.field s:Lorg/a/d;


# direct methods
.method constructor <init>(Lorg/a/c;Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/c",
            "<-TR;>;",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->actual:Lorg/a/c;

    .line 86
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    .line 87
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->s:Lorg/a/d;

    invoke-interface {v0}, Lorg/a/d;->cancel()V

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    .line 124
    return-void
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->actual:Lorg/a/c;

    invoke-interface {v0}, Lorg/a/c;->onComplete()V

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    .line 113
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->actual:Lorg/a/c;

    invoke-interface {v0, p1}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    .line 107
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->actual:Lorg/a/c;

    invoke-interface {v0, p1}, Lorg/a/c;->onNext(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public onSubscribe(Lorg/a/d;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->s:Lorg/a/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/a/d;Lorg/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->s:Lorg/a/d;

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->actual:Lorg/a/c;

    invoke-interface {v0, p0}, Lorg/a/c;->onSubscribe(Lorg/a/d;)V

    .line 96
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->s:Lorg/a/d;

    invoke-interface {v0, p1, p2}, Lorg/a/d;->request(J)V

    .line 118
    return-void
.end method
