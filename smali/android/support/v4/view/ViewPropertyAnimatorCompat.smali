.class public Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$1;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;


# instance fields
.field private mEndAction:Ljava/lang/Runnable;

.field private mOldLayerType:I

.field private mStartAction:Ljava/lang/Runnable;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 596
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 597
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 598
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;

    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    .line 608
    :goto_0
    return-void

    .line 599
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 600
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;

    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_0

    .line 601
    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 602
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;

    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_0

    .line 603
    :cond_2
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 604
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;

    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_0

    .line 606
    :cond_3
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;

    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 28
    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 24
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 24
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 24
    iget v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    return v0
.end method

.method static synthetic access$402(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    return p1
.end method


# virtual methods
.method public alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 640
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 641
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->alpha(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    .line 643
    :cond_0
    return-object p0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 997
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 998
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->cancel(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 1000
    :cond_0
    return-void
.end method

.method public scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 969
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 970
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleY(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    .line 972
    :cond_0
    return-object p0
.end method

.method public setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 623
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 624
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setDuration(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V

    .line 626
    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 763
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 764
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setInterpolator(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 766
    :cond_0
    return-object p0
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .prologue
    .line 1195
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1196
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 1198
    :cond_0
    return-object p0
.end method

.method public setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .prologue
    .line 1214
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1215
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V

    .line 1217
    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1115
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1116
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->start(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 1118
    :cond_0
    return-void
.end method

.method public translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 674
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 675
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationX(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    .line 677
    :cond_0
    return-object p0
.end method

.method public translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 691
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 692
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationY(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    .line 694
    :cond_0
    return-object p0
.end method
