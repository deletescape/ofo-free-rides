.class public final Lio/reactivex/internal/operators/completable/CompletableConcat;
.super Lio/reactivex/Completable;
.source "CompletableConcat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;
    }
.end annotation


# instance fields
.field final prefetch:I

.field final sources:Lorg/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/b",
            "<+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/a/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/b",
            "<+",
            "Lio/reactivex/CompletableSource;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat;->sources:Lorg/a/b;

    .line 35
    iput p2, p0, Lio/reactivex/internal/operators/completable/CompletableConcat;->prefetch:I

    .line 36
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat;->sources:Lorg/a/b;

    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/completable/CompletableConcat;->prefetch:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;-><init>(Lio/reactivex/CompletableObserver;I)V

    invoke-interface {v0, v1}, Lorg/a/b;->subscribe(Lorg/a/c;)V

    .line 41
    return-void
.end method
