.class public abstract Lcom/google/android/gms/internal/j;
.super Ljava/lang/Object;


# instance fields
.field protected final O:Lcom/google/android/gms/internal/k;

.field protected final R:I

.field private final S:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/k;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/x;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/k;

    iput-object v0, p0, Lcom/google/android/gms/internal/j;->O:Lcom/google/android/gms/internal/k;

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/k;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Z)V

    iput p2, p0, Lcom/google/android/gms/internal/j;->R:I

    iget v0, p0, Lcom/google/android/gms/internal/j;->R:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/k;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/j;->S:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/j;->O:Lcom/google/android/gms/internal/k;

    iget v1, p0, Lcom/google/android/gms/internal/j;->R:I

    iget v2, p0, Lcom/google/android/gms/internal/j;->S:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/k;->f(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/j;->O:Lcom/google/android/gms/internal/k;

    iget v1, p0, Lcom/google/android/gms/internal/j;->R:I

    iget v2, p0, Lcom/google/android/gms/internal/j;->S:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/k;->g(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/j;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/j;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p1, Lcom/google/android/gms/internal/j;->R:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/j;->R:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/google/android/gms/internal/j;->S:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/j;->S:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/j;->O:Lcom/google/android/gms/internal/k;

    iget-object v2, p0, Lcom/google/android/gms/internal/j;->O:Lcom/google/android/gms/internal/k;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/j;->O:Lcom/google/android/gms/internal/k;

    iget v1, p0, Lcom/google/android/gms/internal/j;->R:I

    iget v2, p0, Lcom/google/android/gms/internal/j;->S:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/k;->d(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected getInteger(Ljava/lang/String;)I
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/j;->O:Lcom/google/android/gms/internal/k;

    iget v1, p0, Lcom/google/android/gms/internal/j;->R:I

    iget v2, p0, Lcom/google/android/gms/internal/j;->S:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/k;->b(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/j;->O:Lcom/google/android/gms/internal/k;

    iget v1, p0, Lcom/google/android/gms/internal/j;->R:I

    iget v2, p0, Lcom/google/android/gms/internal/j;->S:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/k;->a(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/j;->O:Lcom/google/android/gms/internal/k;

    iget v1, p0, Lcom/google/android/gms/internal/j;->R:I

    iget v2, p0, Lcom/google/android/gms/internal/j;->S:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/k;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/j;->R:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/j;->S:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/j;->O:Lcom/google/android/gms/internal/k;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/w;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
