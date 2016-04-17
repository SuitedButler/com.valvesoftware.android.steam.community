.class public Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
.super Ljava/lang/Object;
.source "SteamWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/views/SteamWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SteamguardJavascriptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;


# direct methods
.method public constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$500(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultStatus()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnStatus:Ljava/lang/String;
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultValue()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 258
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultBusy()V

    .line 260
    return-object v0
.end method

.method public setJavascriptResultBusy()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const-string v1, ""

    # setter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$402(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const-string v1, "busy"

    # setter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$302(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setJavascriptResultError(Ljava/lang/String;I)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const-string p1, ""

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # setter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnValue:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$402(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const-string v1, "error"

    # setter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$302(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$502(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setJavascriptResultOkay(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string p1, ""

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # setter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnValue:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$402(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const-string v1, "ok"

    # setter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$302(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    return-void
.end method
