.class public Lcom/valvesoftware/android/steam/community/SteamAppUri;
.super Ljava/lang/Object;
.source "SteamAppUri.java"


# static fields
.field public static final CART:Ljava/lang/String;

.field public static final CONFIRMATION_WEB:Ljava/lang/String;

.field public static final STEAMGUARD_CHANGE:Ljava/lang/String;

.field public static final STEAMGUARD_HELP:Ljava/lang/String;

.field public static final STEAMGUARD_PRECHANGE:Ljava/lang/String;

.field public static final STEAMGUARD_RCODE:Ljava/lang/String;

.field public static final STEAM_NEWS:Ljava/lang/String;

.field public static final STEAM_NOTIFICATIONS_SETTINGS:Ljava/lang/String;

.field public static final URL_CURRENT_USER_PROFILE_BASE_CUSTOMURL:Ljava/lang/String;

.field public static final URL_CURRENT_USER_PROFILE_BASE_GENERIC:Ljava/lang/String;

.field public static final URL_CURRENT_USER_PROFILE_BASE_STEAMID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/my"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->URL_CURRENT_USER_PROFILE_BASE_GENERIC:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->URL_CURRENT_USER_PROFILE_BASE_STEAMID:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->URL_CURRENT_USER_PROFILE_BASE_CUSTOMURL:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->CART:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/news/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAM_NEWS:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/steamguard/help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAMGUARD_HELP:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/steamguard/change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAMGUARD_CHANGE:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/steamguard/twofactor_recoverycode?countdown=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAMGUARD_RCODE:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/steamguard/prechange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAMGUARD_PRECHANGE:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobileconf/conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->CONFIRMATION_WEB:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobilesettings/GetManifest/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAM_NOTIFICATIONS_SETTINGS:Ljava/lang/String;

    return-void
.end method

.method public static accountDetails()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static catalog()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static confirmationResource()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 110
    const-string v0, "steammobile://"

    const-string v1, "confirmation"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createChatUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "steamId"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "steammobile://chat?steamid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamAppUri;->URL_CURRENT_USER_PROFILE_BASE_STEAMID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamAppUri;->URL_CURRENT_USER_PROFILE_BASE_GENERIC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFriendsSearchUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "friends"

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSearchUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createGroupsSearchUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "groups"

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSearchUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static createSearchUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "resourceString"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "steammobile://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "steammobile://openurl?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createVisitProfileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "steamId"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static deleteNotification()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 120
    const-string v0, "steammobile://"

    const-string v1, "deletenotification"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static friendActivity()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 83
    const-string v0, "/home/"

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static friendsList()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 104
    const-string v0, "steammobile://"

    const-string v1, "friends"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static groupWebPage(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "groupProfileUrl"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static groupsList()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 106
    const-string v0, "steammobile://"

    const-string v1, "groups"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static library()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 66
    const-string v0, "/games/?tab=all"

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static login()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 118
    const-string v0, "steammobile://"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static notificationAsyncGame()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 127
    const-string v0, "/gamenotifications"

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static notificationComments()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 122
    const-string v0, "/commentnotifications"

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static notificationGifts()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 125
    const-string v0, "/inventory#pending_gifts"

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static notificationInvites()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 124
    const-string v0, "/home/invites"

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static notificationItems()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 123
    const-string v0, "/inventory"

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static notificationModeratorMessage()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 128
    const-string v0, "/moderatormessages"

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static notificationTradeOffers()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 126
    const-string v0, "/tradeoffers"

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static searchSteam()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/search/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static settings()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 68
    const-string v0, "steammobile://"

    const-string v1, "appsettings"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static shoppingCart()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->CART:Ljava/lang/String;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static steamGuard()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 98
    const-string v0, "steammobile://"

    const-string v1, "steamguard"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static steamHelpUriPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobilelogin/help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static steamNews()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAM_NEWS:Ljava/lang/String;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static steamPrivacyPolicyUriPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobilelogin/privacy_agreement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static steamSubscriberAgreementUriPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobilecheckout/ssapopup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wishlist()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    const-string v0, "/wishlist/"

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
