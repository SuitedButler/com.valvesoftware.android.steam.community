.class public Lcom/google/android/gms/internal/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/aj;


# instance fields
.field private final T:I

.field private final br:Lcom/google/android/gms/internal/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/aj;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/ak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ai;->T:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ai;->br:Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ak;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ai;->T:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ai;->br:Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/an$b;)Lcom/google/android/gms/internal/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/an$b",
            "<**>;)",
            "Lcom/google/android/gms/internal/ai;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/ak;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ai;

    check-cast p0, Lcom/google/android/gms/internal/ak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ai;-><init>(Lcom/google/android/gms/internal/ak;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method B()Lcom/google/android/gms/internal/ak;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->br:Lcom/google/android/gms/internal/ak;

    return-object v0
.end method

.method public C()Lcom/google/android/gms/internal/an$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/an$b",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->br:Lcom/google/android/gms/internal/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->br:Lcom/google/android/gms/internal/ak;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method u()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ai;->T:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/internal/ai;Landroid/os/Parcel;I)V

    return-void
.end method
