.class public Lcom/valvesoftware/android/steam/community/activity/MainActivity;
.super Lcom/valvesoftware/android/steam/community/activity/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/activity/MainActivity$3;,
        Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;
    }
.end annotation


# instance fields
.field private lastLoginFragmentLoadTime:J

.field private final loginFragmentRefreshDelay:J

.field public final steamData:Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;

.field private steamWebViewClient:Lcom/valvesoftware/android/steam/community/views/SteamWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->lastLoginFragmentLoadTime:J

    .line 50
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loginFragmentRefreshDelay:J

    .line 52
    new-instance v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->steamData:Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;

    .line 543
    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->refreshUserNotificationCounts()V

    return-void
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadUserDefaultFragment()V

    return-void
.end method

.method private doIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideKeyboard()V

    .line 296
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 297
    .local v5, "u":Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadUserDefaultFragment()V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "resource":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doIntent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    if-nez v3, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadUserDefaultFragment()V

    goto :goto_0

    .line 310
    :cond_2
    const-string v7, "appsettings"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 311
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadSettingsFragment()V

    goto :goto_0

    .line 312
    :cond_3
    const-string v7, "login"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 313
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadLoginFragment()V

    goto :goto_0

    .line 314
    :cond_4
    const-string v7, "deletenotification"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 316
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v7

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 317
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    sget-object v7, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationId:Ljava/lang/String;

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 318
    .end local v1    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_5
    const-string v7, "friends"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 319
    const-string v7, "search"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 321
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFriendsFragment()V

    goto :goto_0

    .line 323
    :cond_6
    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFriendsSearchFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .end local v2    # "query":Ljava/lang/String;
    :cond_7
    const-string v7, "chat"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 326
    const-string v7, "steamid"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "chatPartnerSteamId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0, v0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadChatFragment(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 331
    .end local v0    # "chatPartnerSteamId":Ljava/lang/String;
    :cond_8
    const-string v7, "groups"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 332
    const-string v7, "search"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .restart local v2    # "query":Ljava/lang/String;
    if-nez v2, :cond_9

    .line 334
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadGroupsFragment()V

    goto/16 :goto_0

    .line 336
    :cond_9
    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadGroupsSearchFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    .end local v2    # "query":Ljava/lang/String;
    :cond_a
    const-string v7, "openurl"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 339
    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->extractUrlFromOpenUrlUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "url":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 341
    invoke-direct {p0, v6}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadWebViewFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    .end local v6    # "url":Ljava/lang/String;
    :cond_b
    const-string v7, "opencategoryurl"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 344
    const-string v7, "url"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 345
    .restart local v6    # "url":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 346
    invoke-direct {p0, v6}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadTabbedWebViewFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    .end local v6    # "url":Ljava/lang/String;
    :cond_c
    const-string v7, "steamguard"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 349
    sget-object v7, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAMGUARD_PRECHANGE:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadSteamGuardWebFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_d
    const-string v7, "steamguardweb"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 351
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadSteamGuardWebFragment()V

    goto/16 :goto_0

    .line 352
    :cond_e
    const-string v7, "steamguardviewrcode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 353
    sget-object v7, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAMGUARD_RCODE:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadSteamGuardWebFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    :cond_f
    const-string v7, "confirmation"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 355
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v4

    .line 356
    .local v4, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 357
    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getConfirmationUrl()Ljava/lang/String;

    move-result-object v6

    .line 358
    .restart local v6    # "url":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 359
    invoke-direct {p0, v6}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadWebViewFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    .end local v6    # "url":Ljava/lang/String;
    :cond_10
    const-string v7, "%s?p=%s&a=%s&m=android"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lcom/valvesoftware/android/steam/community/SteamAppUri;->CONFIRMATION_WEB:Ljava/lang/String;

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getUniqueIdForPhone()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 368
    .restart local v6    # "url":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadWebViewFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    .end local v4    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v6    # "url":Ljava/lang/String;
    :cond_11
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadUserDefaultFragment()V

    goto/16 :goto_0
.end method

.method private getCurrentBackStackEntryName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 257
    .local v0, "backStackEntry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 259
    .end local v0    # "backStackEntry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getGroupsSearchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 465
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;-><init>()V

    .line 466
    .local v1, "searchFragment":Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 467
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "groups"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 469
    return-object v1
.end method

.method private getWebViewFragment(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;-><init>()V

    .line 443
    .local v1, "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 444
    return-object v1
.end method

.method private isSpecialNonLoggedInUri(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    if-nez p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 185
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "openurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->steamHelpUriPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_2

    move v1, v2

    .line 192
    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->steamSubscriberAgreementUriPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_3

    move v1, v2

    .line 195
    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->steamPrivacyPolicyUriPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_0

    move v1, v2

    .line 198
    goto :goto_0
.end method

.method private loadChatFragment(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .param p1, "chatPartnerSteamId"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 473
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;-><init>()V

    .line 474
    .local v1, "chatFragment":Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "chatPartnerSteamIdKey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v2, "chatPartnerAvatarUrl"

    sget-object v3, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatPartnerAvatarUrlKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v2, "chatPartnerPersonaNameKey"

    sget-object v3, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatPartnerPersonaNameKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v3, "loggedInUserAvatarUrl"

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->setArguments(Landroid/os/Bundle;)V

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 482
    return-void

    .line 479
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "newEntryName"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "newEntryName"    # Ljava/lang/String;
    .param p3, "bForce"    # Z

    .prologue
    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    if-nez p3, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 271
    .local v0, "backStackEntry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFragment has backstack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    if-eqz p2, :cond_0

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    .end local v0    # "backStackEntry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearTitleLabel()V

    .line 280
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideProgressIndicator(I)V

    .line 281
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideSearchBar()V

    .line 282
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearRefreshButtonListener()V

    .line 283
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearSearchButtonListener()V

    .line 284
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearExtraMenuItems()V

    .line 285
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->invalidateOptionsMenu()V

    .line 287
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 288
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0d006c

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 289
    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 290
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 291
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method private loadFriendsFragment()V
    .locals 2

    .prologue
    .line 485
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;-><init>()V

    const-class v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method private loadFriendsSearchFragment(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;-><init>()V

    .line 457
    .local v1, "searchFragment":Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 458
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "friends"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method private loadGroupsFragment()V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;-><init>()V

    const-class v1, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private loadGroupsSearchFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getGroupsSearchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method private loadLoginFragment()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadLoginFragment(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method private loadLoginFragment(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intentAfterLoginCompletes"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLoginFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getCurrentBackStackEntryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->lastLoginFragmentLoadTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getCurrentBackStackEntryName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->lastLoginFragmentLoadTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 137
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;-><init>()V

    .line 103
    .local v0, "gcmUnregistrar":Lcom/valvesoftware/android/steam/community/GcmRegistrar;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->unregister()V

    .line 105
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->lastLoginFragmentLoadTime:J

    .line 107
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideMenuAndActionBar()V

    .line 108
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;-><init>()V

    .line 109
    .local v1, "loginFragment":Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;
    new-instance v2, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;-><init>(Lcom/valvesoftware/android/steam/community/activity/MainActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->setLoginChangedListener(Lcom/valvesoftware/android/steam/community/activity/LoginChangedListener;)V

    .line 136
    const-class v2, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v6}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private loadSettingsFragment()V
    .locals 2

    .prologue
    .line 407
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;-><init>()V

    .line 408
    .local v0, "settingsFragment":Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;
    const-class v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method private loadSteamGuardWebFragment()V
    .locals 2

    .prologue
    .line 412
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;-><init>()V

    .line 413
    .local v0, "steamguardFragmentWeb":Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;
    const-class v1, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private loadSteamGuardWebFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 417
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;-><init>()V

    .line 419
    .local v1, "steamguardFragmentWeb":Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "defaultUrl"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->setArguments(Landroid/os/Bundle;)V

    .line 423
    const-class v2, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private loadTabbedWebViewFragment(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 432
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 433
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;-><init>()V

    .line 435
    .local v1, "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private loadUserDefaultFragment()V
    .locals 4

    .prologue
    .line 376
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v2

    iget-object v1, v2, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_startScreen:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 378
    .local v1, "startScreenSetting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-virtual {v1, p0}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getIntegerValue(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->fromInt(I)Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    move-result-object v0

    .line 379
    .local v0, "screen":Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    sget-object v2, Lcom/valvesoftware/android/steam/community/activity/MainActivity$3;->$SwitchMap$com$valvesoftware$android$steam$community$SettingInfoDB$StartScreen:[I

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 401
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewFriendsList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 404
    :goto_0
    return-void

    .line 381
    :pswitch_0
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewCatalog(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewGroupsList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    :pswitch_2
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewSteamGuard(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 390
    :pswitch_3
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewSteamNews(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 393
    :pswitch_4
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewFriendActivity(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    :pswitch_5
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewLibrary(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private loadWebViewFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getWebViewFragment(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    move-result-object v0

    .line 428
    .local v0, "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 429
    return-void
.end method

.method private refreshUserNotificationCounts()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getUserNotificationCounts()Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 142
    .local v0, "notificationCountRequest":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity$2;-><init>(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 169
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 171
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    .line 494
    if-eqz p3, :cond_0

    .line 495
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "sCall":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->steamWebViewClient:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:(function(){"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";})()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    .line 503
    .end local v0    # "sCall":Ljava/lang/String;
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->closeDrawer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 59
    .local v0, "n":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->finish()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearTitleLabel()V

    .line 63
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideSearchBar()V

    .line 64
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearRefreshButtonListener()V

    .line 65
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearSearchButtonListener()V

    .line 66
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearExtraMenuItems()V

    .line 67
    invoke-super {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 516
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0d006c

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 519
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 521
    check-cast v1, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    .line 522
    .local v1, "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->goBack()V

    .line 525
    const/4 v2, 0x1

    .line 530
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->isSpecialNonLoggedInUri(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadLoginFragment(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-super {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->doIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 507
    invoke-super {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onPause()V

    .line 508
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->switchingToBackground()V

    .line 509
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v0

    .line 511
    .local v0, "umqCommunicator":Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stop()V

    .line 512
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onResume()V

    .line 209
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->switchingToForeground(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V

    .line 210
    return-void
.end method

.method protected onResumeFragments()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onResumeFragments()V

    .line 220
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->isSpecialNonLoggedInUri(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadLoginFragment()V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    if-nez v2, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->refreshNavDrawer()V

    .line 231
    :cond_2
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getLocalDb()Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/LocalDb;->clearNotifications()V

    .line 233
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->refreshUserNotificationCounts()V

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 237
    .local v0, "n":I
    if-nez v0, :cond_4

    .line 238
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 240
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->doIntent(Landroid/content/Intent;)V

    .line 247
    :cond_4
    :goto_1
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v1

    .line 248
    .local v1, "umqCommunicator":Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->start()V

    goto :goto_0

    .line 243
    .end local v1    # "umqCommunicator":Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    :cond_5
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadUserDefaultFragment()V

    goto :goto_1
.end method

.method public readyForPaypalComplete(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 0
    .param p1, "steamWebViewClient"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->steamWebViewClient:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .line 489
    return-void
.end method

.method public refreshConfirmationsPageIfActive()Z
    .locals 4

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0d006c

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 535
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 536
    check-cast v1, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    .line 537
    .local v1, "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->refreshConfirmationsPageIfActive()Z

    move-result v2

    .line 540
    .end local v1    # "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
