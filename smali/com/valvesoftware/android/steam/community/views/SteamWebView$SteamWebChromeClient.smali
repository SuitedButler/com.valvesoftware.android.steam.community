.class Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SteamWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/views/SteamWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SteamWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;


# direct methods
.method private constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;
    .param p2, "x1"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 783
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 764
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    const/16 v0, 0x46

    if-le p2, v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->requestFocusWrapper()V
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    .line 773
    :cond_0
    const/16 v0, 0x63

    if-le p2, v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->hideProgressIndicator()V

    .line 776
    :cond_1
    return-void
.end method
