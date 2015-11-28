.class Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SteamWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/views/SteamWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SteamWebViewClient"
.end annotation


# instance fields
.field private m_backgroundHandler:Landroid/os/Handler;

.field private m_loginContext:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

.field private m_urlWebView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;


# direct methods
.method private constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 1

    .prologue
    .line 269
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->m_backgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;
    .param p2, "x1"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    return-void
.end method

.method private HandleGetConfirmationTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 649
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v0

    .line 650
    .local v0, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-nez v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-object v1

    .line 653
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTaggedConfirmationUrlParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private launchPayPalAuth(Ljava/lang/String;)V
    .locals 5
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v0

    .line 277
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentOrActivityIsActive(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;
    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;
    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->setInMiddleOfProcessing(Z)V

    .line 282
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching PayPal auth intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->readyForPaypalComplete(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    .line 285
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 289
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 291
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->m_backgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$4;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$4;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 731
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->hideProgressIndicator()V

    .line 732
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 712
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setBlackBackground()V

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mobileconf/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 717
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 719
    .end local v0    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0, p4, p3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setViewContentsShowFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v4, 0x0

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedSslError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Dev:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v1, :cond_0

    .line 679
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 707
    :goto_0
    return-void

    .line 681
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v0

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingSslUntrustedPrompt:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 682
    .local v3, "settingInfo":Lcom/valvesoftware/android/steam/community/SettingInfo;
    iget-object v0, v3, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->NONE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    if-eq v0, v1, :cond_2

    .line 684
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 685
    .local v6, "ctxApp":Landroid/content/Context;
    invoke-virtual {v3, v6}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getRadioSelectorItemValue(Landroid/content/Context;)Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    move-result-object v0

    iget v0, v0, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 686
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_0

    .line 688
    :cond_1
    move-object v5, p2

    .line 689
    .local v5, "hdlrDelayed":Landroid/webkit/SslErrorHandler;
    new-instance v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;Landroid/app/Activity;Lcom/valvesoftware/android/steam/community/SettingInfo;Landroid/widget/TextView;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v4}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 704
    .end local v5    # "hdlrDelayed":Landroid/webkit/SslErrorHandler;
    .end local v6    # "ctxApp":Landroid/content/Context;
    :cond_2
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 28
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v24, "steammobile://"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v24

    if-nez v24, :cond_0

    .line 296
    const/16 v24, 0x1

    .line 645
    :goto_0
    return v24

    .line 298
    :cond_0
    const-string v24, "otpauth://"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 307
    const/16 v24, 0x0

    goto :goto_0

    .line 311
    :cond_1
    const-string v24, "steammobile://"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 312
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 314
    .local v22, "uri":Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Lcom/valvesoftware/android/steam/community/SteamUriHandler;->HandleSteamURI(Landroid/net/Uri;)Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

    move-result-object v10

    .line 315
    .local v10, "result":Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    iget-boolean v0, v10, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->handled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 318
    sget-object v24, Lcom/valvesoftware/android/steam/community/views/SteamWebView$2;->$SwitchMap$com$valvesoftware$android$steam$community$SteamUriHandler$Command:[I

    iget-object v0, v10, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    .line 612
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v24, 0x1

    goto :goto_0

    .line 323
    :pswitch_1
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v17

    .line 324
    .local v17, "targetUriStr":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "decodedTargetUriStr":Ljava/lang/String;
    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isStoreLaunchAuthPage(Ljava/lang/String;)Z
    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$800(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 326
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->launchPayPalAuth(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewWebPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 335
    .end local v4    # "decodedTargetUriStr":Ljava/lang/String;
    .end local v17    # "targetUriStr":Ljava/lang/String;
    :pswitch_2
    :try_start_0
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v17

    .line 336
    .restart local v17    # "targetUriStr":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v24, "android.intent.action.VIEW"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 337
    .local v8, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 344
    .end local v8    # "i":Landroid/content/Intent;
    .end local v17    # "targetUriStr":Ljava/lang/String;
    :catch_0
    move-exception v24

    goto :goto_1

    .line 347
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->OnMobileLoginSucceeded(Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;)V

    goto/16 :goto_1

    .line 354
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->reload()V

    goto/16 :goto_1

    .line 358
    :pswitch_5
    new-instance v24, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->m_urlWebView:Ljava/lang/ref/WeakReference;

    .line 359
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->m_loginContext:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->loginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 362
    .restart local v8    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 366
    .end local v8    # "i":Landroid/content/Intent;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 367
    .local v11, "resultIntent":Landroid/content/Intent;
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->toString()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v24, "com.valvesoftware.android.steam.community.intent.action.WEBVIEW_RESULT"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 375
    .end local v11    # "resultIntent":Landroid/content/Intent;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "steammobile://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->reloadpage:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    invoke-virtual/range {v26 .. v26}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v26

    const v27, 0x7f070081

    invoke-virtual/range {v26 .. v27}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setViewContentsShowFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 380
    :pswitch_8
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->title:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v18

    .line 382
    .local v18, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/support/v4/app/Fragment;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/support/v4/app/Fragment;

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 383
    :cond_4
    if-eqz v18, :cond_2

    .line 385
    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 386
    .local v19, "titleDecoded":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 391
    .end local v19    # "titleDecoded":Ljava/lang/String;
    :catch_1
    move-exception v24

    goto/16 :goto_1

    .line 397
    .end local v18    # "title":Ljava/lang/String;
    :pswitch_9
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->steamid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v16

    .line 399
    .local v16, "steamid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 400
    .local v3, "chatIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 407
    .end local v3    # "chatIntent":Landroid/content/Intent;
    .end local v16    # "steamid":Ljava/lang/String;
    :pswitch_a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Page wants two-factor code for GID "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->gid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isLoginPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 409
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->gid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "gid":Ljava/lang/String;
    invoke-static {v6}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForGID(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 411
    .local v14, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v14, :cond_6

    .line 412
    invoke-virtual {v14}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    move-result-object v21

    .line 413
    .local v21, "twoFactorToken":Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    if-eqz v21, :cond_5

    .line 414
    invoke-virtual/range {v21 .. v21}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->generateSteamGuardCode()Ljava/lang/String;

    move-result-object v20

    .line 415
    .local v20, "twoFactorCode":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Returning two-factor code "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    .end local v20    # "twoFactorCode":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 422
    .end local v21    # "twoFactorToken":Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 431
    .end local v6    # "gid":Ljava/lang/String;
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isSteamguardPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1100(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 432
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->scheme:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v13

    .line 433
    .local v13, "schemeString":Ljava/lang/String;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 434
    .restart local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamguardState;->stringToScheme(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v12

    .line 435
    .local v12, "scheme":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->ph:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v15

    .line 437
    .local v15, "smsPhoneId":Ljava/lang/String;
    if-nez v12, :cond_7

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, "Internal error, bad Steamguard token type"

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 441
    :cond_7
    new-instance v24, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$1;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v12, v15, v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->startSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    goto/16 :goto_1

    .line 459
    .end local v12    # "scheme":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    .end local v13    # "schemeString":Ljava/lang/String;
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v15    # "smsPhoneId":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isSteamguardPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1100(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 460
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->code:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v23

    .line 461
    .local v23, "validationCode":Ljava/lang/String;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 463
    .restart local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    new-instance v24, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$2;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->finalizeAddTwoFactor(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    goto/16 :goto_1

    .line 480
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v23    # "validationCode":Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isSteamguardPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1100(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 481
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 482
    .restart local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    invoke-virtual {v14}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendActivationCodeEmail()V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 495
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isSteamguardPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1100(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isLoginPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 496
    :cond_8
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 497
    .restart local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v14, :cond_9

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    invoke-virtual {v14}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 500
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 509
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isSteamguardPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1100(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-nez v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isLoginPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 511
    :cond_a
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->gid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v6

    .line 513
    .restart local v6    # "gid":Ljava/lang/String;
    const-string v24, "hide"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    const-string v24, "show"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 514
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    const-string v25, "show"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->setTwoFactorVisible(Z)V

    .line 524
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 532
    .end local v6    # "gid":Ljava/lang/String;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isSteamguardPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1100(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 533
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 534
    .restart local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    invoke-virtual {v14}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getRevocationCode()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 539
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isCommunityPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 546
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isCommunityPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, "0"

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 553
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isCommunityPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, "0"

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 561
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isCommunityPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 568
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isCommunityPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v25

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->hasLiveSteamguardStates()Z

    move-result v24

    if-eqz v24, :cond_d

    const-string v24, "1"

    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v24, "0"

    goto :goto_2

    .line 575
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isLoginPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-nez v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isCommunityPage()Z
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 577
    :cond_e
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->op:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v9

    .line 579
    .local v9, "op":Ljava/lang/String;
    if-eqz v9, :cond_11

    const-string v24, "setsecret"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_11

    .line 580
    const/4 v5, -0x1

    .line 581
    .local v5, "errorCode":I
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->arg1:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "base64String":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 583
    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->installSecret(Ljava/lang/String;)I

    move-result v5

    .line 586
    :cond_f
    if-nez v5, :cond_10

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 589
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 592
    .end local v2    # "base64String":Ljava/lang/String;
    .end local v5    # "errorCode":I
    :cond_11
    if-eqz v9, :cond_13

    const-string v24, "conftag"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isMobileConfirmationPage()Z

    move-result v24

    if-eqz v24, :cond_13

    .line 593
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->arg1:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->HandleGetConfirmationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, "hash":Ljava/lang/String;
    if-eqz v7, :cond_12

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 598
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, ""

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 601
    .end local v7    # "hash":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # getter for: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, ""

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 607
    .end local v9    # "op":Ljava/lang/String;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->reacquireWGTokenFromServer(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    goto/16 :goto_1

    .line 613
    .end local v10    # "result":Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    .end local v22    # "uri":Landroid/net/Uri;
    :cond_14
    sget-object v24, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_15

    sget-object v24, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_15

    sget-object v24, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_15

    sget-object v24, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 617
    :cond_15
    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isStoreLaunchAuthPage(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$800(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 618
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Launching PayPal auth "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->launchPayPalAuth(Ljava/lang/String;)V

    .line 627
    :goto_3
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 623
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->requestFocusWrapper()V
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    .line 624
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->showProgressIndicator()V

    goto :goto_3

    .line 633
    :cond_17
    :try_start_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Opening URL "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " in external browser."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    new-instance v8, Landroid/content/Intent;

    const-string v24, "android.intent.action.VIEW"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 635
    .restart local v8    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    # invokes: Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 645
    .end local v8    # "i":Landroid/content/Intent;
    :goto_4
    const/16 v24, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v24

    goto :goto_4

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
