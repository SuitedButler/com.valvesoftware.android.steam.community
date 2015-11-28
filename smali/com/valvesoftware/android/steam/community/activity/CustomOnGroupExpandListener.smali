.class Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# static fields
.field private static prevExpandedGroup:I


# instance fields
.field private final expandableListView:Landroid/widget/ExpandableListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 838
    const/4 v0, -0x1

    sput v0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->prevExpandedGroup:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ExpandableListView;)V
    .locals 0
    .param p1, "expandableListView"    # Landroid/widget/ExpandableListView;

    .prologue
    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->expandableListView:Landroid/widget/ExpandableListView;

    .line 836
    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .param p1, "group"    # I

    .prologue
    .line 841
    sget v0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->prevExpandedGroup:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->prevExpandedGroup:I

    if-eq v0, p1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->expandableListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->expandableListView:Landroid/widget/ExpandableListView;

    sget v1, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->prevExpandedGroup:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 846
    :cond_0
    sput p1, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->prevExpandedGroup:I

    .line 847
    return-void
.end method
