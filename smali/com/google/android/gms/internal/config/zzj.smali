.class public final Lcom/google/android/gms/internal/config/zzj;
.super Ljava/lang/Object;


# instance fields
.field private zzg:J

.field private zzh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/32 v0, 0xa8c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzg:J

    .line 3
    iput v2, p0, Lcom/google/android/gms/internal/config/zzj;->zzj:I

    .line 4
    iput v2, p0, Lcom/google/android/gms/internal/config/zzj;->zzk:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/config/zzj;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzg:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/config/zzj;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzh:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/config/zzj;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzi:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/config/zzj;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzj:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/config/zzj;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzk:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/config/zzj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/config/zzj;
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x283c

    iput v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzi:I

    .line 12
    return-object p0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/config/zzj;
    .locals 1

    .prologue
    .line 5
    iput-wide p1, p0, Lcom/google/android/gms/internal/config/zzj;->zzg:J

    .line 6
    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/config/zzj;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/config/zzj;->zzl:Ljava/lang/String;

    .line 14
    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/config/zzj;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzh:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzh:Ljava/util/Map;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/config/zzj;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/config/zzj;
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/config/zzj;->zzj:I

    .line 16
    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/config/zzj;
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/config/zzj;->zzk:I

    .line 18
    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/config/zzi;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/config/zzi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/config/zzi;-><init>(Lcom/google/android/gms/internal/config/zzj;Lcom/google/android/gms/internal/config/zzh;)V

    return-object v0
.end method
