.class public final Lcom/google/android/gms/internal/config/zzan;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzak:Lcom/google/android/gms/internal/config/zzar;

.field private final zzau:Lcom/google/android/gms/internal/config/zzao;

.field private final zzav:Lcom/google/android/gms/internal/config/zzao;

.field private final zzaw:Lcom/google/android/gms/internal/config/zzao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/config/zzao;Lcom/google/android/gms/internal/config/zzao;Lcom/google/android/gms/internal/config/zzao;Lcom/google/android/gms/internal/config/zzar;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/config/zzan;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/config/zzan;->zzau:Lcom/google/android/gms/internal/config/zzao;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/config/zzan;->zzav:Lcom/google/android/gms/internal/config/zzao;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/config/zzan;->zzaw:Lcom/google/android/gms/internal/config/zzao;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/config/zzan;->zzak:Lcom/google/android/gms/internal/config/zzar;

    .line 7
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/config/zzao;)Lcom/google/android/gms/internal/config/zzas;
    .locals 10

    .prologue
    .line 8
    new-instance v3, Lcom/google/android/gms/internal/config/zzas;

    invoke-direct {v3}, Lcom/google/android/gms/internal/config/zzas;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/config/zzao;->zzq()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/config/zzao;->zzq()Ljava/util/Map;

    move-result-object v4

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    if-eqz v4, :cond_1

    .line 13
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 16
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    new-instance v9, Lcom/google/android/gms/internal/config/zzat;

    invoke-direct {v9}, Lcom/google/android/gms/internal/config/zzat;-><init>()V

    .line 19
    iput-object v2, v9, Lcom/google/android/gms/internal/config/zzat;->zzbj:Ljava/lang/String;

    .line 20
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v9, Lcom/google/android/gms/internal/config/zzat;->zzbk:[B

    .line 21
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/config/zzav;

    invoke-direct {v1}, Lcom/google/android/gms/internal/config/zzav;-><init>()V

    .line 24
    iput-object v0, v1, Lcom/google/android/gms/internal/config/zzav;->zzbp:Ljava/lang/String;

    .line 26
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/config/zzat;

    .line 27
    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/config/zzat;

    iput-object v0, v1, Lcom/google/android/gms/internal/config/zzav;->zzbq:[Lcom/google/android/gms/internal/config/zzat;

    .line 28
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/config/zzav;

    .line 32
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/config/zzav;

    iput-object v0, v3, Lcom/google/android/gms/internal/config/zzas;->zzbg:[Lcom/google/android/gms/internal/config/zzav;

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/config/zzao;->zzh()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/config/zzao;->zzh()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, v3, Lcom/google/android/gms/internal/config/zzas;->zzbh:[[B

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/config/zzao;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/google/android/gms/internal/config/zzas;->timestamp:J

    .line 38
    return-object v3
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 39
    new-instance v2, Lcom/google/android/gms/internal/config/zzaw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/config/zzaw;-><init>()V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzan;->zzau:Lcom/google/android/gms/internal/config/zzao;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzan;->zzau:Lcom/google/android/gms/internal/config/zzao;

    invoke-static {v0}, Lcom/google/android/gms/internal/config/zzan;->zza(Lcom/google/android/gms/internal/config/zzao;)Lcom/google/android/gms/internal/config/zzas;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/config/zzaw;->zzbr:Lcom/google/android/gms/internal/config/zzas;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzan;->zzav:Lcom/google/android/gms/internal/config/zzao;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzan;->zzav:Lcom/google/android/gms/internal/config/zzao;

    invoke-static {v0}, Lcom/google/android/gms/internal/config/zzan;->zza(Lcom/google/android/gms/internal/config/zzao;)Lcom/google/android/gms/internal/config/zzas;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/config/zzaw;->zzbs:Lcom/google/android/gms/internal/config/zzas;

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzan;->zzaw:Lcom/google/android/gms/internal/config/zzao;

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzan;->zzaw:Lcom/google/android/gms/internal/config/zzao;

    invoke-static {v0}, Lcom/google/android/gms/internal/config/zzan;->zza(Lcom/google/android/gms/internal/config/zzao;)Lcom/google/android/gms/internal/config/zzas;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/config/zzaw;->zzbt:Lcom/google/android/gms/internal/config/zzas;

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzan;->zzak:Lcom/google/android/gms/internal/config/zzar;

    if-eqz v0, :cond_3

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/config/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/config/zzau;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/config/zzan;->zzak:Lcom/google/android/gms/internal/config/zzar;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/config/zzar;->getLastFetchStatus()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/config/zzau;->zzbl:I

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/config/zzan;->zzak:Lcom/google/android/gms/internal/config/zzar;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/config/zzar;->isDeveloperModeEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/config/zzau;->zzbm:Z

    .line 50
    iput-object v0, v2, Lcom/google/android/gms/internal/config/zzaw;->zzbu:Lcom/google/android/gms/internal/config/zzau;

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzan;->zzak:Lcom/google/android/gms/internal/config/zzar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzan;->zzak:Lcom/google/android/gms/internal/config/zzar;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/config/zzar;->zzs()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzan;->zzak:Lcom/google/android/gms/internal/config/zzar;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/config/zzar;->zzs()Ljava/util/Map;

    move-result-object v4

    .line 54
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 56
    new-instance v6, Lcom/google/android/gms/internal/config/zzax;

    invoke-direct {v6}, Lcom/google/android/gms/internal/config/zzax;-><init>()V

    .line 57
    iput-object v0, v6, Lcom/google/android/gms/internal/config/zzax;->zzbp:Ljava/lang/String;

    .line 58
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/config/zzal;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/config/zzal;->zzp()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/gms/internal/config/zzax;->zzbx:J

    .line 59
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/config/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/config/zzal;->getResourceId()I

    move-result v0

    iput v0, v6, Lcom/google/android/gms/internal/config/zzax;->resourceId:I

    .line 60
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/config/zzax;

    .line 64
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/config/zzax;

    iput-object v0, v2, Lcom/google/android/gms/internal/config/zzaw;->zzbv:[Lcom/google/android/gms/internal/config/zzax;

    .line 66
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/config/zzbh;->zzai()I

    move-result v0

    new-array v0, v0, [B

    .line 67
    array-length v1, v0

    .line 68
    const/4 v3, 0x0

    .line 69
    :try_start_0
    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/config/zzaz;->zzb([BII)Lcom/google/android/gms/internal/config/zzaz;

    move-result-object v1

    .line 70
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/config/zzbh;->zza(Lcom/google/android/gms/internal/config/zzaz;)V

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/config/zzaz;->zzad()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/config/zzan;->mContext:Landroid/content/Context;

    const-string v2, "persisted_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 79
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    const-string v1, "AsyncPersisterTask"

    const-string v2, "Could not persist config."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
