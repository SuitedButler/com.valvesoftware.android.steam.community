.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;
.super Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getNavigationItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # Landroid/content/Intent;
    .param p6, "x4"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 624
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 648
    return-void
.end method
