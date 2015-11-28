.class Lcom/valvesoftware/android/steam/community/SteamguardState$3;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/SteamguardState;->finalizeAddTwoFactorHelper(Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

.field final synthetic val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

.field final synthetic val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 6
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iget v0, v0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->retriesRemaining:I

    if-gtz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iget v0, v0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->nSentAuthCodeCount:I

    if-lez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->broadcastSteamguardStateAdded(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->success()V

    .line 684
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->failure(ILjava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iget-wide v2, v0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->timeOffset:J

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->timeOffset:J

    .line 680
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iget v1, v0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->retriesRemaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->retriesRemaining:I

    .line 682
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    # invokes: Lcom/valvesoftware/android/steam/community/SteamguardState;->finalizeAddTwoFactorHelper(Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    invoke-static {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$200(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    goto :goto_0
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 622
    const-string v1, "success"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 623
    const-string v1, "want_more"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iget v1, v1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->retriesRemaining:I

    if-gtz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    # invokes: Lcom/valvesoftware/android/steam/community/SteamguardState;->finalizeHelperErrorCleanup(Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;)V
    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$100(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;)V

    .line 628
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->failure(ILjava/lang/String;)V

    .line 661
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iget-boolean v1, v1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->bSentActivationCode:Z

    if-nez v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->bSentActivationCode:Z

    .line 639
    :goto_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    # invokes: Lcom/valvesoftware/android/steam/community/SteamguardState;->finalizeAddTwoFactorHelper(Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    invoke-static {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$200(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    goto :goto_0

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iget-wide v2, v1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->timeOffset:J

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->timeOffset:J

    .line 635
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    iget v2, v1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->retriesRemaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->retriesRemaining:I

    goto :goto_1

    .line 644
    :cond_2
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->broadcastSteamguardStateAdded(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->success()V

    goto :goto_0

    .line 650
    :cond_3
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$finalizeTwoFactorState:Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    # invokes: Lcom/valvesoftware/android/steam/community/SteamguardState;->finalizeHelperErrorCleanup(Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;)V
    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$100(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;)V

    .line 653
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x59

    if-ne v1, v2, :cond_4

    .line 655
    # getter for: Lcom/valvesoftware/android/steam/community/SteamguardState;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "badActivationCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->failure(ILjava/lang/String;)V

    goto :goto_0

    .line 658
    .end local v0    # "badActivationCode":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$3;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->failure(ILjava/lang/String;)V

    goto :goto_0
.end method
