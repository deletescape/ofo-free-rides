.class final Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "MaybeZipArray.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeZipArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4d1e29153b0426a9L


# instance fields
.field final actual:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver",
            "<TT;>;"
        }
    .end annotation
.end field

.field final values:[Ljava/lang/Object;

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;ILio/reactivex/functions/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver",
            "<-TR;>;I",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->actual:Lio/reactivex/MaybeObserver;

    .line 84
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    .line 85
    new-array v1, p2, [Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    .line 86
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 87
    new-instance v2, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    invoke-direct {v2, p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;-><init>(Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;I)V

    aput-object v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    .line 90
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 101
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 102
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->dispose()V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method disposeExcept(I)V
    .locals 4

    .prologue
    .line 125
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    .line 126
    array-length v2, v1

    .line 127
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 128
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->dispose()V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    add-int/lit8 v0, p1, 0x1

    :goto_1
    if-ge v0, v2, :cond_1

    .line 131
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->dispose()V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_1
    return-void
.end method

.method innerComplete(I)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->disposeExcept(I)V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 149
    :cond_0
    return-void
.end method

.method innerError(Ljava/lang/Throwable;I)V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->disposeExcept(I)V

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method innerSuccess(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 109
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The zipper returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 116
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->get()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
