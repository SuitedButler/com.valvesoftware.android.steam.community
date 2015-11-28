.class public Lcom/valvesoftware/android/steam/community/SteamUriHandler;
.super Ljava/lang/Object;
.source "SteamUriHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;,
        Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;,
        Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    }
.end annotation


# direct methods
.method public static HandleSteamURI(Landroid/net/Uri;)Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    .locals 21
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 25
    .local v15, "uriString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v13

    .line 28
    .local v13, "params":Ljava/lang/String;
    new-instance v14, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

    invoke-direct {v14}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;-><init>()V

    .line 30
    .local v14, "result":Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    const-string v18, "steammobile://"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 34
    :try_start_0
    const-string v18, "steammobile://"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 35
    const-string v18, "?"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 36
    .local v11, "nPosQ":I
    if-lez v11, :cond_0

    .line 38
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 40
    :cond_0
    invoke-static {v15}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 41
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->handled:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 52
    .end local v11    # "nPosQ":I
    :cond_1
    :goto_0
    iget-boolean v0, v14, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->handled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 56
    :try_start_1
    new-instance v18, Ljava/util/Properties;

    invoke-direct/range {v18 .. v18}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->props:Ljava/util/Properties;

    .line 58
    if-eqz v13, :cond_5

    .line 60
    iget-object v0, v14, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    move-object/from16 v18, v0

    sget-object v19, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->mobileloginsucceeded:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 63
    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v8, "jsonDoc":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .line 66
    .local v5, "arrChildren":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "jj":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 68
    :try_start_3
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 69
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 70
    .local v16, "val":Ljava/lang/String;
    iget-object v0, v14, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->props:Ljava/util/Properties;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 66
    .end local v9    # "key":Ljava/lang/String;
    .end local v16    # "val":Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 84
    .end local v5    # "arrChildren":Lorg/json/JSONArray;
    .end local v7    # "jj":I
    .end local v8    # "jsonDoc":Lorg/json/JSONObject;
    :cond_2
    :try_start_4
    iget-object v0, v14, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->bHasArgs:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 91
    const-string v18, "&"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "args":[Ljava/lang/String;
    move-object v4, v3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v10, :cond_5

    aget-object v2, v4, v6

    .line 94
    .local v2, "arg":Ljava/lang/String;
    const-string v18, "="

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 95
    .local v12, "pair":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 97
    const/16 v18, 0x0

    aget-object v18, v12, v18

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 98
    .restart local v9    # "key":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v18, v12, v18

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 100
    .local v17, "value":Ljava/lang/String;
    iget-object v0, v14, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->props:Ljava/util/Properties;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v9    # "key":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 107
    .end local v2    # "arg":Ljava/lang/String;
    .end local v3    # "args":[Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "pair":[Ljava/lang/String;
    :cond_4
    iget-object v0, v14, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->props:Ljava/util/Properties;

    move-object/from16 v18, v0

    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 120
    :cond_5
    :goto_4
    return-object v14

    :catch_0
    move-exception v18

    goto :goto_4

    .line 82
    :catch_1
    move-exception v18

    goto :goto_4

    .restart local v5    # "arrChildren":Lorg/json/JSONArray;
    .restart local v7    # "jj":I
    .restart local v8    # "jsonDoc":Lorg/json/JSONObject;
    :catch_2
    move-exception v18

    goto :goto_2

    .end local v5    # "arrChildren":Lorg/json/JSONArray;
    .end local v7    # "jj":I
    .end local v8    # "jsonDoc":Lorg/json/JSONObject;
    :catch_3
    move-exception v18

    goto/16 :goto_0
.end method
