.class Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$2;
.super Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;
.source "SteamWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$2;->this$1:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "optDescription"    # Ljava/lang/String;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$2;->this$1:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    .line 498
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$2;->this$1:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    .line 494
    return-void
.end method
