.class public Lcom/google/android/gms/internal/an$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ae;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ao;


# instance fields
.field private final T:I

.field protected final bA:Z

.field protected final bB:Ljava/lang/String;

.field protected final bC:I

.field protected final bD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/an;",
            ">;"
        }
    .end annotation
.end field

.field protected final bE:Ljava/lang/String;

.field private bF:Lcom/google/android/gms/internal/aq;

.field private bG:Lcom/google/android/gms/internal/an$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/an$b",
            "<TI;TO;>;"
        }
    .end annotation
.end field

.field protected final bx:I

.field protected final by:Z

.field protected final bz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ao;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/an$a;->CREATOR:Lcom/google/android/gms/internal/ao;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ai;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/an$a;->T:I

    iput p2, p0, Lcom/google/android/gms/internal/an$a;->bx:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/an$a;->by:Z

    iput p4, p0, Lcom/google/android/gms/internal/an$a;->bz:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/an$a;->bA:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/an$a;->bB:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/an$a;->bC:I

    if-nez p8, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/an$a;->bD:Ljava/lang/Class;

    iput-object v1, p0, Lcom/google/android/gms/internal/an$a;->bE:Ljava/lang/String;

    :goto_0
    if-nez p9, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/an$a;->bG:Lcom/google/android/gms/internal/an$b;

    :goto_1
    return-void

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/at;

    iput-object v0, p0, Lcom/google/android/gms/internal/an$a;->bD:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/internal/an$a;->bE:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p9}, Lcom/google/android/gms/internal/ai;->C()Lcom/google/android/gms/internal/an$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/an$a;->bG:Lcom/google/android/gms/internal/an$b;

    goto :goto_1
.end method

.method protected constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/an$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/an;",
            ">;",
            "Lcom/google/android/gms/internal/an$b",
            "<TI;TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/an$a;->T:I

    iput p1, p0, Lcom/google/android/gms/internal/an$a;->bx:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/an$a;->by:Z

    iput p3, p0, Lcom/google/android/gms/internal/an$a;->bz:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/an$a;->bA:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/an$a;->bB:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/an$a;->bC:I

    iput-object p7, p0, Lcom/google/android/gms/internal/an$a;->bD:Ljava/lang/Class;

    if-nez p7, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/an$a;->bE:Ljava/lang/String;

    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/internal/an$a;->bG:Lcom/google/android/gms/internal/an$b;

    return-void

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/an$a;->bE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILcom/google/android/gms/internal/an$b;Z)Lcom/google/android/gms/internal/an$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/an$b",
            "<**>;Z)",
            "Lcom/google/android/gms/internal/an$a;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/an$a;

    invoke-interface {p2}, Lcom/google/android/gms/internal/an$b;->E()I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/an$b;->F()I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v2, p3

    move-object v5, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/an$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/an$b;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/an$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/an;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/an$a",
            "<TT;TT;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/an$a;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/an$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/an$b;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/an$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/an;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/an$a",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/an$a;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/an$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/an$b;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/an$a",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/an$a;

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/an$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/an$b;)V

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/an$a;)Lcom/google/android/gms/internal/an$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bG:Lcom/google/android/gms/internal/an$b;

    return-object v0
.end method

.method public static d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/an$a",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/an$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/an$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/an$b;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/an$a",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/an$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/an$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/an$b;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/an$a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/an$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/an$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/an$b;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/an$a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/an$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/an$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/an$b;)V

    return-object v0
.end method


# virtual methods
.method public E()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/an$a;->bx:I

    return v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/an$a;->bz:I

    return v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/an$a;->by:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/an$a;->bA:Z

    return v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bB:Ljava/lang/String;

    return-object v0
.end method

.method public N()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/an$a;->bC:I

    return v0
.end method

.method public O()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/an;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bD:Ljava/lang/Class;

    return-object v0
.end method

.method P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bE:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bE:Ljava/lang/String;

    goto :goto_0
.end method

.method public Q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bG:Lcom/google/android/gms/internal/an$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method R()Lcom/google/android/gms/internal/ai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bG:Lcom/google/android/gms/internal/an$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bG:Lcom/google/android/gms/internal/an$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/ai;->a(Lcom/google/android/gms/internal/an$b;)Lcom/google/android/gms/internal/ai;

    move-result-object v0

    goto :goto_0
.end method

.method public S()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/an$a",
            "<**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bF:Lcom/google/android/gms/internal/aq;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bF:Lcom/google/android/gms/internal/aq;

    iget-object v1, p0, Lcom/google/android/gms/internal/an$a;->bE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aq;->n(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/an$a;->bF:Lcom/google/android/gms/internal/aq;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bG:Lcom/google/android/gms/internal/an$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/an$b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Field\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "            versionCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/an$a;->T:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "                 typeIn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/an$a;->bx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "            typeInArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/an$a;->by:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "                typeOut="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/an$a;->bz:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "           typeOutArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/an$a;->bA:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "        outputFieldName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/an$a;->bB:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "      safeParcelFieldId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/an$a;->bC:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "       concreteTypeName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/an$a;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/an$a;->O()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "     concreteType.class="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/an$a;->O()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "          converterName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bG:Lcom/google/android/gms/internal/an$b;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->bG:Lcom/google/android/gms/internal/an$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/an$a;->T:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/an$a;, "Lcom/google/android/gms/internal/an$a<TI;TO;>;"
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ao;->a(Lcom/google/android/gms/internal/an$a;Landroid/os/Parcel;I)V

    return-void
.end method
