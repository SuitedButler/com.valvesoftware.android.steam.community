.class public final enum Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
.super Ljava/lang/Enum;
.source "SettingInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SettingInfoDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartScreen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

.field public static final enum Catalog:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

.field public static final enum FriendActivity:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

.field public static final enum Friends:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

.field public static final enum Groups:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

.field public static final enum Library:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

.field public static final enum SteamGuard:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

.field public static final enum SteamNews:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

.field public static final enum Unknown:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

.field private static final intToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 53
    new-instance v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    const-string v5, "Friends"

    invoke-direct {v4, v5, v8, v8}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Friends:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 54
    new-instance v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    const-string v5, "Groups"

    invoke-direct {v4, v5, v9, v9}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Groups:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 55
    new-instance v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    const-string v5, "SteamNews"

    invoke-direct {v4, v5, v10, v10}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->SteamNews:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 56
    new-instance v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    const-string v5, "Catalog"

    invoke-direct {v4, v5, v11, v11}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Catalog:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 57
    new-instance v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    const-string v5, "SteamGuard"

    invoke-direct {v4, v5, v12, v12}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->SteamGuard:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 58
    new-instance v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    const-string v5, "FriendActivity"

    const/4 v6, 0x5

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->FriendActivity:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 59
    new-instance v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    const-string v5, "Library"

    const/4 v6, 0x6

    const/4 v7, 0x6

    invoke-direct {v4, v5, v6, v7}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Library:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 60
    new-instance v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    const-string v5, "Unknown"

    const/4 v6, 0x7

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Unknown:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 52
    const/16 v4, 0x8

    new-array v4, v4, [Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    sget-object v5, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Friends:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    aput-object v5, v4, v8

    sget-object v5, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Groups:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    aput-object v5, v4, v9

    sget-object v5, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->SteamNews:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    aput-object v5, v4, v10

    sget-object v5, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Catalog:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    aput-object v5, v4, v11

    sget-object v5, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->SteamGuard:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->FriendActivity:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Library:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Unknown:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    aput-object v6, v4, v5

    sput-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->$VALUES:[Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 63
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->intToTypeMap:Ljava/util/Map;

    .line 66
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->values()[Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    move-result-object v0

    .local v0, "arr$":[Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 67
    .local v3, "screen":Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    sget-object v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->intToTypeMap:Ljava/util/Map;

    iget v5, v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "screen":Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->value:I

    .line 73
    return-void
.end method

.method public static fromInt(I)Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 76
    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->intToTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 77
    .local v0, "type":Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Unknown:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    .line 79
    .end local v0    # "type":Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->$VALUES:[Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    return-object v0
.end method
