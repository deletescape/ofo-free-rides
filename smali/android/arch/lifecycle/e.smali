.class public Landroid/arch/lifecycle/e;
.super Landroid/arch/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/arch/core/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/b/a",
            "<",
            "Landroid/arch/lifecycle/c;",
            "Landroid/arch/lifecycle/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/arch/lifecycle/Lifecycle$State;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/arch/lifecycle/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/arch/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/d;)V
    .locals 2
    .param p1    # Landroid/arch/lifecycle/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Landroid/arch/lifecycle/Lifecycle;-><init>()V

    .line 59
    new-instance v0, Landroid/arch/core/b/a;

    invoke-direct {v0}, Landroid/arch/core/b/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    .line 74
    iput v1, p0, Landroid/arch/lifecycle/e;->d:I

    .line 76
    iput-boolean v1, p0, Landroid/arch/lifecycle/e;->e:Z

    .line 77
    iput-boolean v1, p0, Landroid/arch/lifecycle/e;->f:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/e;->g:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/e;->c:Ljava/lang/ref/WeakReference;

    .line 99
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    .line 100
    return-void
.end method

.method static a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1
    .param p0    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 339
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method private a(Landroid/arch/lifecycle/d;)V
    .locals 5

    .prologue
    .line 284
    iget-object v0, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    .line 285
    invoke-virtual {v0}, Landroid/arch/core/b/a;->c()Landroid/arch/core/b/b$d;

    move-result-object v2

    .line 286
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/arch/lifecycle/e;->f:Z

    if-nez v0, :cond_1

    .line 287
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/e$a;

    .line 289
    :goto_0
    iget-object v3, v1, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/e;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    .line 290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/core/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, v1, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/e;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 292
    iget-object v3, v1, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroid/arch/lifecycle/e;->e(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/arch/lifecycle/e$a;->a(Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 293
    invoke-direct {p0}, Landroid/arch/lifecycle/e;->c()V

    goto :goto_0

    .line 296
    :cond_1
    return-void
.end method

.method static b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 3

    .prologue
    .line 235
    sget-object v0, Landroid/arch/lifecycle/e$1;->a:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_0
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    .line 245
    :goto_0
    return-object v0

    .line 241
    :pswitch_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_0

    .line 243
    :pswitch_2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->RESUMED:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_0

    .line 245
    :pswitch_3
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v0, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    .line 131
    iget-boolean v0, p0, Landroid/arch/lifecycle/e;->e:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/arch/lifecycle/e;->d:I

    if-eqz v0, :cond_2

    .line 132
    :cond_1
    iput-boolean v1, p0, Landroid/arch/lifecycle/e;->f:Z

    goto :goto_0

    .line 136
    :cond_2
    iput-boolean v1, p0, Landroid/arch/lifecycle/e;->e:Z

    .line 137
    invoke-direct {p0}, Landroid/arch/lifecycle/e;->d()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/e;->e:Z

    goto :goto_0
.end method

.method private b(Landroid/arch/lifecycle/d;)V
    .locals 5

    .prologue
    .line 299
    iget-object v0, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    .line 300
    invoke-virtual {v0}, Landroid/arch/core/b/a;->b()Ljava/util/Iterator;

    move-result-object v2

    .line 301
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/arch/lifecycle/e;->f:Z

    if-nez v0, :cond_1

    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/e$a;

    .line 304
    :goto_0
    iget-object v3, v1, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/e;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/core/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, v1, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroid/arch/lifecycle/e;->d(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    .line 307
    invoke-static {v3}, Landroid/arch/lifecycle/e;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/e;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 308
    invoke-virtual {v1, p1, v3}, Landroid/arch/lifecycle/e$a;->a(Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 309
    invoke-direct {p0}, Landroid/arch/lifecycle/e;->c()V

    goto :goto_0

    .line 312
    :cond_1
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 142
    iget-object v0, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    invoke-virtual {v0}, Landroid/arch/core/b/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return v1

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    invoke-virtual {v0}, Landroid/arch/core/b/a;->d()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e$a;

    iget-object v2, v0, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 146
    iget-object v0, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    invoke-virtual {v0}, Landroid/arch/core/b/a;->e()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e$a;

    iget-object v0, v0, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 147
    if-ne v2, v0, :cond_1

    iget-object v2, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v2, v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Landroid/arch/lifecycle/c;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    invoke-virtual {v0, p1}, Landroid/arch/core/b/a;->d(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e$a;

    iget-object v0, v0, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    move-object v1, v0

    .line 154
    :goto_0
    iget-object v0, p0, Landroid/arch/lifecycle/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/arch/lifecycle/e;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/arch/lifecycle/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle$State;

    .line 156
    :goto_1
    iget-object v2, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v2, v1}, Landroid/arch/lifecycle/e;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/arch/lifecycle/e;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, v2

    .line 153
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 154
    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Landroid/arch/lifecycle/e;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/arch/lifecycle/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method private c(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/arch/lifecycle/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method private static d(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 3

    .prologue
    .line 253
    sget-object v0, Landroid/arch/lifecycle/e$1;->b:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 257
    :pswitch_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 261
    :goto_0
    return-object v0

    .line 259
    :pswitch_2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_0

    .line 261
    :pswitch_3
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_0

    .line 263
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    iget-object v0, p0, Landroid/arch/lifecycle/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/d;

    .line 318
    if-nez v0, :cond_0

    .line 319
    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    return-void

    .line 323
    :cond_0
    :goto_1
    invoke-direct {p0}, Landroid/arch/lifecycle/e;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 324
    iput-boolean v3, p0, Landroid/arch/lifecycle/e;->f:Z

    .line 326
    iget-object v2, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v1, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    invoke-virtual {v1}, Landroid/arch/core/b/a;->d()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/e$a;

    iget-object v1, v1, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 327
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/e;->b(Landroid/arch/lifecycle/d;)V

    .line 329
    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    invoke-virtual {v1}, Landroid/arch/core/b/a;->e()Ljava/util/Map$Entry;

    move-result-object v1

    .line 330
    iget-boolean v2, p0, Landroid/arch/lifecycle/e;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/e$a;

    iget-object v1, v1, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 332
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/e;->a(Landroid/arch/lifecycle/d;)V

    goto :goto_1

    .line 335
    :cond_2
    iput-boolean v3, p0, Landroid/arch/lifecycle/e;->f:Z

    goto :goto_0
.end method

.method private static e(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 3

    .prologue
    .line 269
    sget-object v0, Landroid/arch/lifecycle/e$1;->b:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_0
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 276
    :goto_0
    return-object v0

    .line 274
    :pswitch_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_0

    .line 276
    :pswitch_2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_0

    .line 278
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public a(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroid/arch/lifecycle/Lifecycle$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    invoke-static {p1}, Landroid/arch/lifecycle/e;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/e;->b(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 124
    return-void
.end method

.method public a(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 0
    .param p1    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/e;->b(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 111
    return-void
.end method

.method public a(Landroid/arch/lifecycle/c;)V
    .locals 5
    .param p1    # Landroid/arch/lifecycle/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 161
    iget-object v0, p0, Landroid/arch/lifecycle/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    .line 162
    :goto_0
    new-instance v3, Landroid/arch/lifecycle/e$a;

    invoke-direct {v3, p1, v0}, Landroid/arch/lifecycle/e$a;-><init>(Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 163
    iget-object v0, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    invoke-virtual {v0, p1, v3}, Landroid/arch/core/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e$a;

    .line 165
    if-eqz v0, :cond_2

    .line 191
    :cond_0
    :goto_1
    return-void

    .line 161
    :cond_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Landroid/arch/lifecycle/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/d;

    .line 169
    if-eqz v0, :cond_0

    .line 174
    iget v1, p0, Landroid/arch/lifecycle/e;->d:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/arch/lifecycle/e;->e:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 175
    :goto_2
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/e;->c(Landroid/arch/lifecycle/c;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v2

    .line 176
    iget v4, p0, Landroid/arch/lifecycle/e;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/arch/lifecycle/e;->d:I

    .line 177
    :goto_3
    iget-object v4, v3, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v2}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_5

    iget-object v2, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    .line 178
    invoke-virtual {v2, p1}, Landroid/arch/core/b/a;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 179
    iget-object v2, v3, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v2}, Landroid/arch/lifecycle/e;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 180
    iget-object v2, v3, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v2}, Landroid/arch/lifecycle/e;->e(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/arch/lifecycle/e$a;->a(Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 181
    invoke-direct {p0}, Landroid/arch/lifecycle/e;->c()V

    .line 183
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/e;->c(Landroid/arch/lifecycle/c;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v2

    goto :goto_3

    .line 174
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 186
    :cond_5
    if-nez v1, :cond_6

    .line 188
    invoke-direct {p0}, Landroid/arch/lifecycle/e;->d()V

    .line 190
    :cond_6
    iget v0, p0, Landroid/arch/lifecycle/e;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/e;->d:I

    goto :goto_1
.end method

.method public b(Landroid/arch/lifecycle/c;)V
    .locals 1
    .param p1    # Landroid/arch/lifecycle/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 215
    iget-object v0, p0, Landroid/arch/lifecycle/e;->a:Landroid/arch/core/b/a;

    invoke-virtual {v0, p1}, Landroid/arch/core/b/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method
