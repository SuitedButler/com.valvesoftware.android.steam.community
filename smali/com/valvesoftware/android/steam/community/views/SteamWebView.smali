.class public Lcom/valvesoftware/android/steam/community/views/SteamWebView;
.super Landroid/webkit/WebView;
.source "SteamWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/views/SteamWebView$2;,
        Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;,
        Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;,
        Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    }
.end annotation


# instance fields
.field private mJavascriptAsyncReturnCode:Ljava/lang/String;

.field private mJavascriptAsyncReturnStatus:Ljava/lang/String;

.field private mJavascriptAsyncReturnValue:Ljava/lang/String;

.field private m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

.field private owner:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setupView()V

    .line 67
    return-void
.end method

.method static synthetic access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isManagePhonePage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isManageTwofactorPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isSteamguardPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isCommunityPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->requestFocusWrapper()V

    return-void
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isStoreLaunchAuthPage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isLoginPage()Z

    move-result v0

    return v0
.end method

.method public static extractUrlFromOpenUrlUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 853
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, "uriString":Ljava/lang/String;
    const-string v0, "openurl?url="

    .line 855
    .local v0, "keyPattern":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 856
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 860
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private isCommunityPage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isLoginPage()Z
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 84
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mobilelogin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isManagePhonePage()Z
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 111
    const/4 v1, 0x0

    .line 115
    :goto_0
    return v1

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "startsWith "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/phone/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/phone/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isManageTwofactorPage()Z
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 104
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/twofactor/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isSteamguardPage()Z
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/steamguard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isStoreLaunchAuthPage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "/paypal/launchauth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/paypal/launchauth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestFocusWrapper()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentOrActivityIsActive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->requestFocus()Z

    goto :goto_0
.end method


# virtual methods
.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideProgressIndicator()V
    .locals 1

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 871
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->hideProgressIndicator()V

    .line 873
    :cond_0
    return-void
.end method

.method public isMobileConfirmationPage()Z
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 140
    :goto_0
    return v1

    :cond_0
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

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 815
    if-nez p1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 819
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 820
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentOrActivityIsActive(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    :cond_3
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->requestFocusWrapper()V

    .line 830
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 831
    if-eqz p1, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->showProgressIndicator()V

    goto :goto_0
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->showProgressIndicator()V

    .line 229
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    .line 230
    return-void
.end method

.method public setBlackBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 154
    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setBackgroundColor(I)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setOwner(Ljava/lang/Object;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/Object;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 150
    return-void
.end method

.method public setViewContentsShowFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hrefRetry"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-static {p2}, Lcom/valvesoftware/android/steam/community/NetErrorTranslator;->translateError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "friendlyError":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><head><META http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body bgcolor=\"#181818\" text=\"#D6D6D6\" link=\"#FFFFFF\" alink=\"#FFFFFF\" vlink=\"#FFFFFF\"><br/><h2 align=\"center\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    const v3, 0x7f070083

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</h2>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<p align=\"left\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</p>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<p align=\"left\"><small>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</small></p>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<p align=\"center\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<a href=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    const v3, 0x7f070082

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a></p>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {p0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method protected setupView()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 167
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setBlackBackground()V

    .line 169
    new-instance v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;

    invoke-direct {v0, p0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 170
    new-instance v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;

    invoke-direct {v0, p0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 172
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 186
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 190
    :cond_2
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-eq v0, v1, :cond_3

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 192
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 196
    :cond_3
    invoke-virtual {p0, v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setScrollBarStyle(I)V

    .line 197
    invoke-virtual {p0, v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 198
    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setFocusable(Z)V

    .line 199
    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setFocusableInTouchMode(Z)V

    .line 200
    new-instance v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    new-instance v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    .line 222
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    const-string v1, "SGHandler"

    invoke-virtual {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->requestFocusWrapper()V

    goto :goto_0
.end method

.method protected showProgressIndicator()V
    .locals 1

    .prologue
    .line 864
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->showProgressIndicator()V

    .line 867
    :cond_0
    return-void
.end method
