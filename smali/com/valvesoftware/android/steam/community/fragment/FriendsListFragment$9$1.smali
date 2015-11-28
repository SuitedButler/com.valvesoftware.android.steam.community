.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

.field final synthetic val$latestMessages:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->val$latestMessages:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 380
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->val$latestMessages:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    # getter for: Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    # getter for: Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    # getter for: Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 383
    .local v1, "p":Lcom/valvesoftware/android/steam/community/model/Persona;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->val$latestMessages:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->val$latestMessages:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/model/Persona;->setLastMessageTime(J)V

    .line 388
    :goto_2
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/model/Persona;->determineDisplayCategory()V

    goto :goto_1

    .line 386
    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/model/Persona;->setLastMessageTime(J)V

    goto :goto_2

    .line 391
    .end local v1    # "p":Lcom/valvesoftware/android/steam/community/model/Persona;
    :cond_3
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    # invokes: Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->notifyItemContentsChanged()V
    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$1100(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    goto :goto_0
.end method
