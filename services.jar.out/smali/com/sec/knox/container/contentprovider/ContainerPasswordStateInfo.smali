.class public Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
.super Ljava/lang/Object;
.source "ContainerPasswordStateInfo.java"


# instance fields
.field private mContainerId:I

.field private mLength:I

.field private mLetters:I

.field private mLowercase:I

.field private mNonLetter:I

.field private mNumeric:I

.field private mQuality:I

.field private mSimplePassword:Z

.field private mSymbols:I

.field private mUppercase:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mContainerId:I

    .line 7
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mQuality:I

    .line 8
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLength:I

    .line 9
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mUppercase:I

    .line 10
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLowercase:I

    .line 11
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLetters:I

    .line 12
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNumeric:I

    .line 13
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNonLetter:I

    .line 14
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSymbols:I

    .line 15
    iput-boolean v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSimplePassword:Z

    return-void
.end method


# virtual methods
.method public getContainerId()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mContainerId:I

    return v0
.end method

.method public getPasswordLength()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLength:I

    return v0
.end method

.method public getPasswordLetters()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLetters:I

    return v0
.end method

.method public getPasswordLowercase()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLowercase:I

    return v0
.end method

.method public getPasswordNonLetter()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNonLetter:I

    return v0
.end method

.method public getPasswordNumeric()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNumeric:I

    return v0
.end method

.method public getPasswordQuality()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mQuality:I

    return v0
.end method

.method public getPasswordSymbols()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSymbols:I

    return v0
.end method

.method public getPasswordUppercase()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mUppercase:I

    return v0
.end method

.method public isPasswordSimple()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSimplePassword:Z

    return v0
.end method

.method public setContainerId(I)V
    .locals 0
    .parameter "containerId"

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mContainerId:I

    .line 23
    return-void
.end method

.method public setPasswordLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 38
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLength:I

    .line 39
    return-void
.end method

.method public setPasswordLetters(I)V
    .locals 0
    .parameter "letters"

    .prologue
    .line 46
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLetters:I

    .line 47
    return-void
.end method

.method public setPasswordLowercase(I)V
    .locals 0
    .parameter "lowercase"

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLowercase:I

    .line 63
    return-void
.end method

.method public setPasswordNonLetter(I)V
    .locals 0
    .parameter "nonLetter"

    .prologue
    .line 86
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNonLetter:I

    .line 87
    return-void
.end method

.method public setPasswordNumeric(I)V
    .locals 0
    .parameter "numeric"

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNumeric:I

    .line 71
    return-void
.end method

.method public setPasswordQuality(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 30
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mQuality:I

    .line 31
    return-void
.end method

.method public setPasswordSimple(Z)V
    .locals 0
    .parameter "simplePassword"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSimplePassword:Z

    .line 95
    return-void
.end method

.method public setPasswordSymbols(I)V
    .locals 0
    .parameter "symbols"

    .prologue
    .line 78
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSymbols:I

    .line 79
    return-void
.end method

.method public setPasswordUppercase(I)V
    .locals 0
    .parameter "uppercase"

    .prologue
    .line 54
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mUppercase:I

    .line 55
    return-void
.end method
