.class final Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;
.super Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;
.source "FlowableMapNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableMapNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapNotificationSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber",
        "<TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2643427fa3e3e9fcL


# instance fields
.field final onCompleteSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final onErrorMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final onNextMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/a/c;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/c",
            "<-TR;>;",
            "Lio/reactivex/functions/Function",
            "<-TT;+TR;>;",
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Ljava/util/concurrent/Callable",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;-><init>(Lorg/a/c;)V

    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->onNextMapper:Lio/reactivex/functions/Function;

    .line 62
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->onErrorMapper:Lio/reactivex/functions/Function;

    .line 63
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->onCompleteSupplier:Ljava/util/concurrent/Callable;

    .line 64
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->onCompleteSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onComplete publisher returned is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->complete(Ljava/lang/Object;)V

    .line 110
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 105
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->actual:Lorg/a/c;

    invoke-interface {v1, v0}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->onErrorMapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onError publisher returned is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->complete(Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 90
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->actual:Lorg/a/c;

    invoke-interface {v1, v0}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->onNextMapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onNext publisher returned is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->produced:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->produced:J

    .line 79
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->actual:Lorg/a/c;

    invoke-interface {v1, v0}, Lorg/a/c;->onNext(Ljava/lang/Object;)V

    .line 80
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 74
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;->actual:Lorg/a/c;

    invoke-interface {v1, v0}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
