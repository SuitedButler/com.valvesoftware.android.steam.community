.class public final Lcom/google/android/gms/maps/model/BitmapDescriptor;
.super Ljava/lang/Object;


# instance fields
.field private final eV:Lcom/google/android/gms/internal/bc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bc;)V
    .locals 1
    .param p1, "remoteObject"    # Lcom/google/android/gms/internal/bc;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/x;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bc;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->eV:Lcom/google/android/gms/internal/bc;

    return-void
.end method


# virtual methods
.method public aE()Lcom/google/android/gms/internal/bc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->eV:Lcom/google/android/gms/internal/bc;

    return-object v0
.end method
