.class public Lcom/crashlytics/android/a;
.super Lio/fabric/sdk/android/h;
.source "Crashlytics.java"

# interfaces
.implements Lio/fabric/sdk/android/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/h",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/fabric/sdk/android/i;"
    }
.end annotation


# instance fields
.field public final a:Lcom/crashlytics/android/answers/b;

.field public final b:Lcom/crashlytics/android/beta/a;

.field public final c:Lcom/crashlytics/android/core/k;

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/crashlytics/android/answers/b;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/b;-><init>()V

    new-instance v1, Lcom/crashlytics/android/beta/a;

    invoke-direct {v1}, Lcom/crashlytics/android/beta/a;-><init>()V

    new-instance v2, Lcom/crashlytics/android/core/k;

    invoke-direct {v2}, Lcom/crashlytics/android/core/k;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/a;-><init>(Lcom/crashlytics/android/answers/b;Lcom/crashlytics/android/beta/a;Lcom/crashlytics/android/core/k;)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/answers/b;Lcom/crashlytics/android/beta/a;Lcom/crashlytics/android/core/k;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lio/fabric/sdk/android/h;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/crashlytics/android/a;->a:Lcom/crashlytics/android/answers/b;

    .line 34
    iput-object p2, p0, Lcom/crashlytics/android/a;->b:Lcom/crashlytics/android/beta/a;

    .line 35
    iput-object p3, p0, Lcom/crashlytics/android/a;->c:Lcom/crashlytics/android/core/k;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lio/fabric/sdk/android/h;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/a;->d:Ljava/util/Collection;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "2.9.5.27"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    const-string v0, "!SDK-VERSION-STRING!:com.crashlytics.sdk.android:crashlytics:2.9.5.27"

    .line 178
    iget-object v0, p0, Lcom/crashlytics/android/a;->d:Ljava/util/Collection;

    return-object v0
.end method

.method protected d()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/crashlytics/android/a;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
