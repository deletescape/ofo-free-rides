.class final Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;
.super Ljava/lang/Object;
.source "FlowableRefCount.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRefCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DisposeConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer",
        "<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field private final subscriber:Lorg/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/c",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/flowable/FlowableRefCount;

.field private final writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableRefCount;Lorg/a/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/c",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->this$0:Lio/reactivex/internal/operators/flowable/FlowableRefCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->subscriber:Lorg/a/c;

    .line 185
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->this$0:Lio/reactivex/internal/operators/flowable/FlowableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->baseDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->this$0:Lio/reactivex/internal/operators/flowable/FlowableRefCount;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->subscriber:Lorg/a/c;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->this$0:Lio/reactivex/internal/operators/flowable/FlowableRefCount;

    iget-object v2, v2, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->baseDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->doSubscribe(Lorg/a/c;Lio/reactivex/disposables/CompositeDisposable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->this$0:Lio/reactivex/internal/operators/flowable/FlowableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    return-void

    .line 196
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->this$0:Lio/reactivex/internal/operators/flowable/FlowableRefCount;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 197
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableRefCount$DisposeConsumer;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
