.class public final Lcom/google/android/gms/internal/bg;
.super Lcom/google/android/gms/internal/j;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/k;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/j;-><init>(Lcom/google/android/gms/internal/k;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Player;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bg;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "profile_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "profile_hi_res_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bg;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "profile_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bg;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetrievedTimestamp()J
    .locals 2

    const-string v0, "last_updated"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bg;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->b(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bg;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
