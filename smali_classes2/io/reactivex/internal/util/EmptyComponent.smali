.class public final enum Lio/reactivex/internal/util/EmptyComponent;
.super Ljava/lang/Enum;
.source "EmptyComponent.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;
.implements Lorg/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/reactivex/internal/util/EmptyComponent;",
        ">;",
        "Lio/reactivex/CompletableObserver;",
        "Lio/reactivex/FlowableSubscriber",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/MaybeObserver",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/Observer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/SingleObserver",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;",
        "Lorg/a/d;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/util/EmptyComponent;

.field public static final enum INSTANCE:Lio/reactivex/internal/util/EmptyComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lio/reactivex/internal/util/EmptyComponent;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/EmptyComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/util/EmptyComponent;

    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/util/EmptyComponent;->$VALUES:[Lio/reactivex/internal/util/EmptyComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static asObserver()Lio/reactivex/Observer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    return-object v0
.end method

.method public static asSubscriber()Lorg/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/EmptyComponent;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lio/reactivex/internal/util/EmptyComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/util/EmptyComponent;

    return-object v0
.end method

.method public static values()[Lio/reactivex/internal/util/EmptyComponent;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->$VALUES:[Lio/reactivex/internal/util/EmptyComponent;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/EmptyComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/EmptyComponent;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onComplete()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 76
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .prologue
    .line 61
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 62
    return-void
.end method

.method public onSubscribe(Lorg/a/d;)V
    .locals 0

    .prologue
    .line 66
    invoke-interface {p1}, Lorg/a/d;->cancel()V

    .line 67
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public request(J)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
