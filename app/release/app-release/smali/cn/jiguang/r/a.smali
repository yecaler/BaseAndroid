.class public final Lcn/jiguang/r/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "number_version"

    const-string v1, "1.3.0"

    invoke-static {p0, v0, v1}, Lcn/jiguang/r/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    const-string v0, "http://182.92.20.189:9099/"

    if-ltz p1, :cond_1b

    const/4 v1, 0x3

    if-lt p1, v1, :cond_8

    goto :goto_1b

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number_url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcn/jiguang/r/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcn/jiguang/u/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "number_num"

    :cond_c
    invoke-static {p0, v0, p1}, Lcn/jiguang/r/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcn/jiguang/r/a;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p2}, Lcn/jiguang/bb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p0}, Lcn/jiguang/r/a;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "nb_upload"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "number_appid"

    const-string v1, "7"

    invoke-static {p0, v0, v1}, Lcn/jiguang/r/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcn/jiguang/r/a;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-object p2

    :cond_11
    invoke-static {p0}, Lcn/jiguang/bb/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    return-object p0

    :cond_1c
    return-object p2
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "number_appsecret"

    const-string v1, "2b90de0f1f88eaf49593f1d827b19c63"

    invoke-static {p0, v0, v1}, Lcn/jiguang/r/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcn/jiguang/u/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "number_num"

    :cond_c
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jiguang/r/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcn/jiguang/r/a;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "nb_upload"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcn/jiguang/r/a;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "nb_lasttime"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static g(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    sget-object v0, Lcn/jiguang/r/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    const-string v1, "cn.jiguang.common.pn"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcn/jiguang/r/a;->a:Landroid/content/SharedPreferences;

    :cond_d
    sget-object p0, Lcn/jiguang/r/a;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method