.class public Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;
.super Landroid/support/v4/app/Fragment;
.source "SteamguardFragmentWeb.java"


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;

.field private twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

.field private twoFactorContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;)Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    return-object v0
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 33
    const v5, 0x7f03002c

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 34
    .local v2, "view":Landroid/view/View;
    const v5, 0x7f0d008a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorContainer:Landroid/widget/FrameLayout;

    .line 35
    const v5, 0x7f0d0091

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    iput-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    .line 37
    const v5, 0x7f0d0092

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 38
    .local v3, "webViewContainer":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v4, "wv":Lcom/valvesoftware/android/steam/community/views/SteamWebView;
    invoke-virtual {v4, p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setOwner(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "strDefaultUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 45
    const-string v5, "defaultUrl"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    :cond_0
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v4, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-object v2

    .line 51
    :cond_1
    sget-object v5, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAMGUARD_PRECHANGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 76
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->stop()V

    .line 77
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->unregister()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 60
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->receiver:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-static {}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->getInstance()Lcom/valvesoftware/android/steam/community/TimeCorrector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->hintSync()V

    .line 67
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->syncFragments()V

    .line 71
    return-void
.end method

.method public setTwoFactorVisible(Z)V
    .locals 3
    .param p1, "bVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->setInvisibleIfNoCodes(Z)V

    .line 83
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->syncFragments()V

    .line 85
    if-eqz p1, :cond_1

    .line 86
    invoke-static {}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->getInstance()Lcom/valvesoftware/android/steam/community/TimeCorrector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->hintSync()V

    .line 88
    :cond_1
    return-void

    .line 81
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
