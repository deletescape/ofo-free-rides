.class public final enum Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;
.super Ljava/lang/Enum;
.source "FileMMapExclusiveIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DATA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

.field public static final enum JsonArray_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

.field public static final enum JsonObject_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

.field public static final enum String_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

.field public static final enum boolean_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

.field public static final enum int_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

.field public static final enum long_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    const-string v1, "int_type"

    invoke-direct {v0, v1, v3}, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->int_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    .line 48
    new-instance v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    const-string v1, "boolean_type"

    invoke-direct {v0, v1, v4}, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->boolean_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    .line 49
    new-instance v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    const-string v1, "long_type"

    invoke-direct {v0, v1, v5}, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->long_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    .line 50
    new-instance v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    const-string v1, "String_type"

    invoke-direct {v0, v1, v6}, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->String_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    .line 51
    new-instance v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    const-string v1, "JsonObject_type"

    invoke-direct {v0, v1, v7}, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->JsonObject_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    .line 52
    new-instance v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    const-string v1, "JsonArray_type"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->JsonArray_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    sget-object v1, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->int_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->boolean_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->long_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->String_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->JsonObject_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->JsonArray_type:Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->$VALUES:[Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->$VALUES:[Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    invoke-virtual {v0}, [Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growingio/android/sdk/utils/FileMMapExclusiveIO$DATA_TYPE;

    return-object v0
.end method
