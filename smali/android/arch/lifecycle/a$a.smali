.class Landroid/arch/lifecycle/a$a;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/util/List",
            "<",
            "Landroid/arch/lifecycle/a$b;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/arch/lifecycle/a$b;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/arch/lifecycle/a$b;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/arch/lifecycle/a$a;->b:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/a$a;->a:Ljava/util/Map;

    .line 171
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/Lifecycle$Event;

    .line 173
    iget-object v2, p0, Landroid/arch/lifecycle/a$a;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 174
    if-nez v2, :cond_0

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v4, p0, Landroid/arch/lifecycle/a$a;->a:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/arch/lifecycle/a$b;",
            ">;",
            "Landroid/arch/lifecycle/d;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    if-eqz p0, :cond_0

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 193
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/a$b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/arch/lifecycle/a$b;->a(Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 192
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/arch/lifecycle/a$a;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/arch/lifecycle/a$a;->a(Ljava/util/List;Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Landroid/arch/lifecycle/a$a;->a:Ljava/util/Map;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/arch/lifecycle/a$a;->a(Ljava/util/List;Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 187
    return-void
.end method
