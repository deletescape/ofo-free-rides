.class Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1350
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1351
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 1355
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1356
    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1357
    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_3

    .line 1358
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1359
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    const/4 v0, 0x0

    const-string v3, "android/support/v7/widget/ListPopupWindow"

    const-string v4, "show"

    const-string v5, "()V"

    const-string v6, "android/app/Dialog"

    invoke-static {v3, v4, v5, v6}, Lcom/growingio/android/sdk/agent/VdsAgent;->isRightClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Dialog;

    invoke-static {v0}, Lcom/growingio/android/sdk/agent/VdsAgent;->showDialog(Landroid/app/Dialog;)V

    move v0, v2

    :cond_0
    if-nez v0, :cond_1

    const-string v3, "android/support/v7/widget/ListPopupWindow"

    const-string v4, "show"

    const-string v5, "()V"

    const-string v6, "android/widget/Toast"

    invoke-static {v3, v4, v5, v6}, Lcom/growingio/android/sdk/agent/VdsAgent;->isRightClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/Toast;

    invoke-static {v0}, Lcom/growingio/android/sdk/agent/VdsAgent;->showToast(Landroid/widget/Toast;)V

    move v0, v2

    :cond_1
    if-nez v0, :cond_2

    const-string v3, "android/support/v7/widget/ListPopupWindow"

    const-string v4, "show"

    const-string v5, "()V"

    const-string v6, "android/app/TimePickerDialog"

    invoke-static {v3, v4, v5, v6}, Lcom/growingio/android/sdk/agent/VdsAgent;->isRightClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/app/TimePickerDialog;

    invoke-static {v0}, Lcom/growingio/android/sdk/agent/VdsAgent;->showDialog(Landroid/app/TimePickerDialog;)V

    move v0, v2

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "android/support/v7/widget/ListPopupWindow"

    const-string v2, "show"

    const-string v3, "()V"

    const-string v4, "android/widget/PopupMenu"

    invoke-static {v0, v2, v3, v4}, Lcom/growingio/android/sdk/agent/VdsAgent;->isRightClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast v1, Landroid/widget/PopupMenu;

    invoke-static {v1}, Lcom/growingio/android/sdk/agent/VdsAgent;->showPopupMenu(Landroid/widget/PopupMenu;)V

    .line 1361
    :cond_3
    return-void
.end method
