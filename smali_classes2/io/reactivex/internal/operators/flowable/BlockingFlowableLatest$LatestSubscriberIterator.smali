.class final Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "BlockingFlowableLatest.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestSubscriberIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DisposableSubscriber",
        "<",
        "Lio/reactivex/Notification",
        "<TT;>;>;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field iteratorNotification:Lio/reactivex/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Notification",
            "<TT;>;"
        }
    .end annotation
.end field

.field final notify:Ljava/util/concurrent/Semaphore;

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/Notification",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->notify:Ljava/util/concurrent/Semaphore;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->value:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    invoke-virtual {v0}, Lio/reactivex/Notification;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    if-nez v0, :cond_2

    .line 82
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->notify:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->value:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Notification;

    .line 91
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    .line 92
    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v0}, Lio/reactivex/Notification;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->dispose()V

    .line 86
    invoke-static {v0}, Lio/reactivex/Notification;->createOnError(Ljava/lang/Throwable;)Lio/reactivex/Notification;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    .line 87
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 97
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    invoke-virtual {v0}, Lio/reactivex/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->iteratorNotification:Lio/reactivex/Notification;

    .line 106
    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public onComplete()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public onNext(Lio/reactivex/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Notification",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 59
    :goto_0
    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->notify:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 62
    :cond_0
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lio/reactivex/Notification;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator;->onNext(Lio/reactivex/Notification;)V

    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method