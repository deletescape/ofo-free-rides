.class public final enum Lcom/facebook/share/widget/LikeView$Style;
.super Ljava/lang/Enum;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/widget/LikeView$Style;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$Style;

.field public static final enum BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

.field public static final enum BUTTON:Lcom/facebook/share/widget/LikeView$Style;

.field public static final enum STANDARD:Lcom/facebook/share/widget/LikeView$Style;

.field static a:Lcom/facebook/share/widget/LikeView$Style;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    new-instance v0, Lcom/facebook/share/widget/LikeView$Style;

    const-string v1, "STANDARD"

    const-string v2, "standard"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/share/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    .line 130
    new-instance v0, Lcom/facebook/share/widget/LikeView$Style;

    const-string v1, "BUTTON"

    const-string v2, "button"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/share/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->BUTTON:Lcom/facebook/share/widget/LikeView$Style;

    .line 136
    new-instance v0, Lcom/facebook/share/widget/LikeView$Style;

    const-string v1, "BOX_COUNT"

    const-string v2, "box_count"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/share/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/share/widget/LikeView$Style;

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->BUTTON:Lcom/facebook/share/widget/LikeView$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->$VALUES:[Lcom/facebook/share/widget/LikeView$Style;

    .line 138
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->a:Lcom/facebook/share/widget/LikeView$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$Style;->stringValue:Ljava/lang/String;

    .line 154
    iput p4, p0, Lcom/facebook/share/widget/LikeView$Style;->intValue:I

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/widget/LikeView$Style;)I
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView$Style;->getValue()I

    move-result v0

    return v0
.end method

.method static a(I)Lcom/facebook/share/widget/LikeView$Style;
    .locals 5

    .prologue
    .line 141
    invoke-static {}, Lcom/facebook/share/widget/LikeView$Style;->values()[Lcom/facebook/share/widget/LikeView$Style;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 142
    invoke-direct {v0}, Lcom/facebook/share/widget/LikeView$Style;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 147
    :goto_1
    return-object v0

    .line 141
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/facebook/share/widget/LikeView$Style;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$Style;
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/facebook/share/widget/LikeView$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/widget/LikeView$Style;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$Style;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->$VALUES:[Lcom/facebook/share/widget/LikeView$Style;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$Style;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$Style;->stringValue:Ljava/lang/String;

    return-object v0
.end method
