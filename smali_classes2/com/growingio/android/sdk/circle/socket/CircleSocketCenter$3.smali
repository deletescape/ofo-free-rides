.class Lcom/growingio/android/sdk/circle/socket/CircleSocketCenter$3;
.super Ljava/lang/Object;
.source "CircleSocketCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growingio/android/sdk/circle/socket/CircleSocketCenter;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growingio/android/sdk/circle/socket/CircleSocketCenter;


# direct methods
.method constructor <init>(Lcom/growingio/android/sdk/circle/socket/CircleSocketCenter;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/growingio/android/sdk/circle/socket/CircleSocketCenter$3;->this$0:Lcom/growingio/android/sdk/circle/socket/CircleSocketCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/growingio/android/sdk/circle/socket/CircleSocketCenter$3;->this$0:Lcom/growingio/android/sdk/circle/socket/CircleSocketCenter;

    invoke-virtual {v0}, Lcom/growingio/android/sdk/circle/socket/CircleSocketCenter;->onSocketErrorCallback()V

    .line 323
    return-void
.end method
