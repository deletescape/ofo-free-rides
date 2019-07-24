.class Lcom/growingio/android/sdk/snappy/BufferRecycler;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# static fields
.field private static final MIN_ENCODING_BUFFER:I = 0xfa0

.field private static final MIN_OUTPUT_BUFFER:I = 0x1f40

.field protected static final recyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/growingio/android/sdk/snappy/BufferRecycler;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private decodingBuffer:[B

.field private encodingBuffer:[B

.field private encodingHash:[S

.field private inputBuffer:[B

.field private outputBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->recyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/growingio/android/sdk/snappy/BufferRecycler;
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 58
    if-nez v0, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 65
    :goto_0
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/growingio/android/sdk/snappy/BufferRecycler;

    invoke-direct {v0}, Lcom/growingio/android/sdk/snappy/BufferRecycler;-><init>()V

    .line 67
    sget-object v1, Lcom/growingio/android/sdk/snappy/BufferRecycler;->recyclerRef:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-object v0

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/growingio/android/sdk/snappy/BufferRecycler;

    goto :goto_0
.end method


# virtual methods
.method public allocDecodeBuffer(I)[B
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->decodingBuffer:[B

    .line 168
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 169
    :cond_0
    new-array v0, p1, [B

    .line 174
    :goto_0
    return-object v0

    .line 172
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->decodingBuffer:[B

    goto :goto_0
.end method

.method public allocEncodingBuffer(I)[B
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingBuffer:[B

    .line 88
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 89
    :cond_0
    const/16 v0, 0xfa0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 94
    :goto_0
    return-object v0

    .line 92
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingBuffer:[B

    goto :goto_0
.end method

.method public allocEncodingHash(I)[S
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingHash:[S

    .line 126
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 127
    :cond_0
    new-array v0, p1, [S

    .line 132
    :goto_0
    return-object v0

    .line 130
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingHash:[S

    goto :goto_0
.end method

.method public allocInputBuffer(I)[B
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->inputBuffer:[B

    .line 149
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 150
    :cond_0
    const/16 v0, 0x1f40

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 155
    :goto_0
    return-object v0

    .line 153
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->inputBuffer:[B

    goto :goto_0
.end method

.method public allocOutputBuffer(I)[B
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->outputBuffer:[B

    .line 107
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 108
    :cond_0
    const/16 v0, 0x1f40

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 113
    :goto_0
    return-object v0

    .line 111
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->outputBuffer:[B

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->inputBuffer:[B

    .line 75
    iput-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->outputBuffer:[B

    .line 76
    iput-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->decodingBuffer:[B

    .line 77
    iput-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingBuffer:[B

    .line 78
    iput-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingHash:[S

    .line 79
    return-void
.end method

.method public releaseDecodeBuffer([B)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->decodingBuffer:[B

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    array-length v0, p1

    iget-object v1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->decodingBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->decodingBuffer:[B

    .line 182
    :cond_1
    return-void
.end method

.method public releaseEncodeBuffer([B)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingBuffer:[B

    if-eqz v0, :cond_0

    array-length v0, p1

    iget-object v1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingBuffer:[B

    .line 102
    :cond_1
    return-void
.end method

.method public releaseEncodingHash([S)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingHash:[S

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    array-length v0, p1

    iget-object v1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingHash:[S

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->encodingHash:[S

    .line 140
    :cond_1
    return-void
.end method

.method public releaseInputBuffer([B)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->inputBuffer:[B

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    array-length v0, p1

    iget-object v1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->inputBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->inputBuffer:[B

    .line 163
    :cond_1
    return-void
.end method

.method public releaseOutputBuffer([B)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->outputBuffer:[B

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    array-length v0, p1

    iget-object v1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->outputBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/growingio/android/sdk/snappy/BufferRecycler;->outputBuffer:[B

    .line 121
    :cond_1
    return-void
.end method
