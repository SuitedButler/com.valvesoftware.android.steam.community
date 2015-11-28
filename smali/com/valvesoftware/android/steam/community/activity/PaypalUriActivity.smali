.class public Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PaypalUriActivity.java"


# static fields
.field private static s_NextActivityID:I


# instance fields
.field private m_CategoriesUrl:Ljava/lang/String;

.field protected m_residActivityLayout:I

.field private m_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->s_NextActivityID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_url:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_CategoriesUrl:Ljava/lang/String;

    .line 22
    const v0, 0x7f030034

    iput v0, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_residActivityLayout:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    const v5, 0x7f0d0065

    .line 73
    if-nez p3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    sget-object v4, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "sCall":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    .line 80
    .local v0, "fragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:(function(){"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";})()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0    # "fragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    :cond_2
    sget-object v4, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "sUrl":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    .line 88
    .restart local v0    # "fragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    invoke-virtual {v0, v3}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0    # "fragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    :cond_3
    const-string v4, "dialogtext"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "sDlgText":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 95
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 49
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler;->HandleSteamURI(Landroid/net/Uri;)Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

    move-result-object v2

    .line 53
    .local v2, "result":Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    iget-object v3, v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    sget-object v4, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->openurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    if-ne v3, v4, :cond_0

    .line 55
    sget-object v3, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_url:Ljava/lang/String;

    .line 59
    .end local v2    # "result":Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    :cond_0
    iget v3, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_residActivityLayout:I

    invoke-virtual {p0, v3}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0d0065

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    .line 61
    .local v0, "fragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->loadUrl(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 68
    return-void
.end method
