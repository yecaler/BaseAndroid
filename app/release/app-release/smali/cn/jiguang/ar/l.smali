.class public Lcn/jiguang/ar/l;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static c:Lcn/jiguang/ar/l;


# instance fields
.field a:Landroid/content/Context;

.field public final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/jiguang/ar/o;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/jiguang/ar/l;->d:I

    iput-object p1, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/g/a;->E()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/ar/o;->a(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/ar/l;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/jiguang/ar/l;
    .registers 3

    sget-object v0, Lcn/jiguang/ar/l;->c:Lcn/jiguang/ar/l;

    if-nez v0, :cond_17

    const-class v0, Lcn/jiguang/ar/l;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/ar/l;->c:Lcn/jiguang/ar/l;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/ar/l;

    invoke-direct {v1, p0}, Lcn/jiguang/ar/l;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/jiguang/ar/l;->c:Lcn/jiguang/ar/l;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcn/jiguang/ar/l;->c:Lcn/jiguang/ar/l;

    return-object p0
.end method

.method private a(I)Lcn/jiguang/ar/p;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/d/a;->d(Landroid/content/Context;)J

    move-result-wide v6

    iget-object v1, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/f/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const-string v5, "get_loc_info"

    const/4 v9, 0x0

    invoke-static {v3, v5, v9}, Lcn/jiguang/at/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Landroid/os/Bundle;

    const-wide/high16 v9, 0x4069

    if-eqz v5, :cond_42

    :try_start_27
    check-cast v3, Landroid/os/Bundle;

    const-string v5, "lat"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v11
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_3c

    :try_start_2f
    const-string v5, "lot"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v5, "time"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_3d

    goto :goto_3d

    :catchall_3c
    move-wide v11, v9

    :catchall_3d
    :goto_3d
    move-wide v13, v1

    move-wide v15, v9

    move-wide v9, v11

    move-wide v11, v15

    goto :goto_44

    :cond_42
    move-wide v13, v1

    move-wide v11, v9

    :goto_44
    new-instance v1, Lcn/jiguang/ar/p;

    sget-object v5, Lcn/jiguang/a/a;->a:Ljava/lang/String;

    move-object v2, v1

    move/from16 v3, p1

    invoke-direct/range {v2 .. v14}, Lcn/jiguang/ar/p;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;DDJ)V

    return-object v1
.end method

.method private declared-synchronized a(Lcn/jiguang/ar/o;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/ar/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "SisConnContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addSisReportInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/ar/o;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    iget-object p1, p0, Lcn/jiguang/ar/l;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x1e

    if-le p1, v0, :cond_31

    iget-object p1, p0, Lcn/jiguang/ar/l;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_21

    :cond_31
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcn/jiguang/ar/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/ar/o;

    invoke-virtual {v1}, Lcn/jiguang/ar/o;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3c

    :cond_50
    iget-object v0, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/jiguang/g/a;

    const/4 v2, 0x0

    invoke-static {}, Lcn/jiguang/g/a;->E()Lcn/jiguang/g/a;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    monitor-exit p0

    return-void

    :catchall_69
    move-exception p1

    monitor-exit p0

    goto :goto_6d

    :goto_6c
    throw p1

    :goto_6d
    goto :goto_6c
.end method

.method static synthetic a(Lcn/jiguang/ar/l;Ljava/net/InetAddress;ILjava/net/DatagramSocket;[B)Z
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcn/jiguang/ar/l;->a(Ljava/net/InetAddress;ILjava/net/DatagramSocket;[B)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/net/InetAddress;ILjava/net/DatagramSocket;[B)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p3

    invoke-direct {v1, p3, v2, p0, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-static {p2, v1}, Lcn/jiguang/ar/c;->a(Ljava/net/DatagramSocket;Ljava/net/DatagramPacket;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/ar/c;->a([B)[B

    move-result-object p0

    if-eqz p0, :cond_2e

    array-length p1, p0

    if-eqz p1, :cond_2e

    array-length p1, p0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1c

    aget-byte p0, p0, v0

    :goto_1a
    int-to-short p0, p0

    goto :goto_2a

    :cond_1c
    aget-byte p1, p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    or-int/2addr p0, p1

    goto :goto_1a

    :goto_2a
    if-nez p0, :cond_2d

    return p2

    :cond_2d
    return v0

    :cond_2e
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "byte could not be empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "report failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SisConnContext"

    invoke-static {p1, p0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 4

    iget v0, p0, Lcn/jiguang/ar/l;->d:I

    if-nez v0, :cond_10

    invoke-static {}, Lcn/jiguang/au/c;->a()Lcn/jiguang/au/c;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jiguang/au/c;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/jiguang/ar/l;->d:I

    :cond_10
    invoke-static {}, Lcn/jiguang/au/c;->a()Lcn/jiguang/au/c;

    iget v0, p0, Lcn/jiguang/ar/l;->d:I

    invoke-static {v0}, Lcn/jiguang/au/c;->b(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ipvsupport="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jiguang/ar/l;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prefer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SisConnContext"

    invoke-static {v2, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final a(J)Lcn/jiguang/ar/n;
    .registers 5

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcn/jiguang/ar/j;

    invoke-direct {v1, p0}, Lcn/jiguang/ar/j;-><init>(Lcn/jiguang/ar/l;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v1, 0x0

    iput v1, p0, Lcn/jiguang/ar/l;->d:I

    invoke-static {v0}, Lcn/jiguang/ap/b;->a(Ljava/lang/Runnable;)V

    :try_start_10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/jiguang/ar/n;
    :try_end_18
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_18} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_18} :catch_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ILjava/lang/String;IJJI)V
    .registers 11

    invoke-static {p2, p3}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcn/jiguang/ar/o;

    invoke-direct {v0}, Lcn/jiguang/ar/o;-><init>()V

    iget-object v1, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jiguang/ar/o;->a:Ljava/lang/String;

    iput p1, v0, Lcn/jiguang/ar/o;->b:I

    new-instance p1, Lcn/jiguang/ar/h;

    invoke-direct {p1, p2, p3}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    iput-object p1, v0, Lcn/jiguang/ar/o;->c:Lcn/jiguang/ar/h;

    iput-wide p4, v0, Lcn/jiguang/ar/o;->e:J

    iput-wide p6, v0, Lcn/jiguang/ar/o;->f:J

    iput p8, v0, Lcn/jiguang/ar/o;->k:I

    iget-object p1, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {p1}, Lcn/jiguang/f/j;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Lcn/jiguang/ar/o;->g:I

    iget-object p1, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {p1}, Lcn/jiguang/d/a;->d(Landroid/content/Context;)J

    move-result-wide p1

    iput-wide p1, v0, Lcn/jiguang/ar/o;->d:J

    const-wide/high16 p1, 0x4069

    iput-wide p1, v0, Lcn/jiguang/ar/o;->h:D

    iput-wide p1, v0, Lcn/jiguang/ar/o;->i:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcn/jiguang/ar/o;->j:J

    iget-object p1, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const/4 p2, 0x0

    const-string p3, "get_loc_info"

    invoke-static {p1, p3, p2}, Lcn/jiguang/at/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/os/Bundle;

    if-eqz p2, :cond_66

    :try_start_4c
    check-cast p1, Landroid/os/Bundle;

    const-string p2, "lat"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, v0, Lcn/jiguang/ar/o;->h:D

    const-string p2, "lot"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, v0, Lcn/jiguang/ar/o;->i:D

    const-string p2, "time"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, v0, Lcn/jiguang/ar/o;->j:J
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_66

    :catchall_66
    :cond_66
    invoke-direct {p0, v0}, Lcn/jiguang/ar/l;->a(Lcn/jiguang/ar/o;)V

    return-void
.end method

.method public final a(Lcn/jiguang/ar/h;)V
    .registers 6

    iget-object v0, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/g/a;->J()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/g/a;->L()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v1, v2, v3}, Lcn/jiguang/f/k;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lcn/jiguang/ar/m;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/ar/m;-><init>(Lcn/jiguang/ar/l;Lcn/jiguang/ar/h;)V

    invoke-static {v0}, Lcn/jiguang/ap/b;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_35
    const-string p1, "SisConnContext"

    const-string v0, "sis report: not yet"

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    iget v0, p0, Lcn/jiguang/ar/l;->d:I

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x2

    :goto_7
    or-int/2addr p1, v0

    iput p1, p0, Lcn/jiguang/ar/l;->d:I

    invoke-static {}, Lcn/jiguang/au/c;->a()Lcn/jiguang/au/c;

    move-result-object p1

    iget-object v0, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    iget v1, p0, Lcn/jiguang/ar/l;->d:I

    invoke-virtual {p1, v0, v1}, Lcn/jiguang/au/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final a(Ljava/util/Set;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/f/j;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcn/jiguang/ar/l;->e:[B

    if-eqz v1, :cond_e

    iget v1, p0, Lcn/jiguang/ar/l;->f:I

    if-eq v0, v1, :cond_24

    :cond_e
    iput v0, p0, Lcn/jiguang/ar/l;->f:I

    :try_start_10
    const-string v1, "UG"

    invoke-direct {p0, v0}, Lcn/jiguang/ar/l;->a(I)Lcn/jiguang/ar/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jiguang/ar/p;->a(Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/ar/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/ar/l;->e:[B
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_27

    :cond_24
    iget-object p1, p0, Lcn/jiguang/ar/l;->e:[B

    return-object p1

    :catch_27
    move-exception p1

    new-instance v0, Lcn/jiguang/at/e;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to package data - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/jiguang/at/e;-><init>(ILjava/lang/String;)V

    throw v0
.end method