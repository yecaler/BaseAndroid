.class public Landroid/support/multidex/MultiDexApplication;
.super Landroid/app/Application;
.source "MultiDexApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .parameter

    .line 38
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 39
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method