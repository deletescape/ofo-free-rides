.class public Lcom/google/firebase/components/MissingDependencyException;
.super Lcom/google/firebase/components/DependencyException;
.source "com.google.firebase:firebase-common@@16.0.2"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
