.class public abstract Lio/reactivex/processors/FlowableProcessor;
.super Lio/reactivex/Flowable;
.source "FlowableProcessor.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable",
        "<TT;>;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;",
        "Lorg/a/a",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getThrowable()Ljava/lang/Throwable;
.end method

.method public abstract hasComplete()Z
.end method

.method public abstract hasSubscribers()Z
.end method

.method public abstract hasThrowable()Z
.end method

.method public final toSerialized()Lio/reactivex/processors/FlowableProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/processors/FlowableProcessor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    instance-of v0, p0, Lio/reactivex/processors/SerializedProcessor;

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lio/reactivex/processors/SerializedProcessor;

    invoke-direct {v0, p0}, Lio/reactivex/processors/SerializedProcessor;-><init>(Lio/reactivex/processors/FlowableProcessor;)V

    move-object p0, v0

    goto :goto_0
.end method
