.class public Lmicro10;
.super Ljava/lang/Object;
.source "micro10.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 3
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fatorial(I)I
    .registers 5

    .prologue
    .line 18
    move v0, p0

    move v1, v0

    if-gtz v1, :cond_7

    const/4 v1, 0x1

    move v0, v1

    .line 19
    :goto_6
    return v0

    :cond_7
    move v1, v0

    move v2, v0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lmicro10;->fatorial(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v0, v1

    goto :goto_6
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 7
    move-object v0, p0

    new-instance v4, Ljava/util/Scanner;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    sget-object v6, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 8
    const/4 v4, 0x0

    move v2, v4

    .line 9
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Digite um numero: "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 10
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    move v2, v4

    .line 11
    move v4, v2

    invoke-static {v4}, Lmicro10;->fatorial(I)I

    move-result v4

    move v3, v4

    .line 12
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "O fatorial de "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    return-void
.end method
