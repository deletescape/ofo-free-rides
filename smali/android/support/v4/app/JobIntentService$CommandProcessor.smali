.class final Landroid/support/v4/app/JobIntentService$CommandProcessor;
.super Landroid/os/AsyncTask;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CommandProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/JobIntentService;


# direct methods
.method constructor <init>(Landroid/support/v4/app/JobIntentService;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$CommandProcessor;->this$0:Landroid/support/v4/app/JobIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 382
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/JobIntentService$CommandProcessor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 389
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CommandProcessor;->this$0:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService;->dequeueWork()Landroid/support/v4/app/JobIntentService$GenericWorkItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$CommandProcessor;->this$0:Landroid/support/v4/app/JobIntentService;

    invoke-interface {v0}, Landroid/support/v4/app/JobIntentService$GenericWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/JobIntentService;->onHandleWork(Landroid/content/Intent;)V

    .line 393
    invoke-interface {v0}, Landroid/support/v4/app/JobIntentService$GenericWorkItem;->complete()V

    goto :goto_0

    .line 398
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 382
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/JobIntentService$CommandProcessor;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CommandProcessor;->this$0:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService;->processorFinished()V

    .line 404
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 382
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/JobIntentService$CommandProcessor;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CommandProcessor;->this$0:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService;->processorFinished()V

    .line 409
    return-void
.end method