.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/GoogleMapOptionsCreator;


# instance fields
.field private final T:I

.field private fm:Ljava/lang/Boolean;

.field private fn:Ljava/lang/Boolean;

.field private fo:I

.field private fp:Lcom/google/android/gms/maps/model/CameraPosition;

.field private fq:Ljava/lang/Boolean;

.field private fr:Ljava/lang/Boolean;

.field private fs:Ljava/lang/Boolean;

.field private ft:Ljava/lang/Boolean;

.field private fu:Ljava/lang/Boolean;

.field private fv:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/GoogleMapOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fo:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->T:I

    return-void
.end method

.method constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBB)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "zOrderOnTop"    # B
    .param p3, "useViewLifecycleInFragment"    # B
    .param p4, "mapType"    # I
    .param p5, "camera"    # Lcom/google/android/gms/maps/model/CameraPosition;
    .param p6, "zoomControlsEnabled"    # B
    .param p7, "compassEnabled"    # B
    .param p8, "scrollGesturesEnabled"    # B
    .param p9, "zoomGesturesEnabled"    # B
    .param p10, "tiltGesturesEnabled"    # B
    .param p11, "rotateGesturesEnabled"    # B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fo:I

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->T:I

    invoke-static {p2}, Lcom/google/android/gms/internal/cj;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fm:Ljava/lang/Boolean;

    invoke-static {p3}, Lcom/google/android/gms/internal/cj;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fn:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fo:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fp:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Lcom/google/android/gms/internal/cj;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fq:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/internal/cj;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fr:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/internal/cj;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fs:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/internal/cj;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ft:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/internal/cj;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fu:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/internal/cj;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fv:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public aH()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fm:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/cj;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public aI()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fn:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/cj;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public aJ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fq:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/cj;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public aK()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fr:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/cj;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public aL()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fs:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/cj;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public aM()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ft:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/cj;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public aN()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fu:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/cj;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public aO()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fv:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/cj;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fp:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public getMapType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->fo:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->T:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/cx;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ci;->a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
