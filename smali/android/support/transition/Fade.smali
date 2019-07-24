.class public Landroid/support/transition/Fade;
.super Landroid/support/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# static fields
.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 90
    invoke-virtual {p0, p1}, Landroid/support/transition/Fade;->setMode(I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    sget-object v0, Landroid/support/transition/Styleable;->FADE:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "fadingMode"

    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/support/transition/Fade;->getMode()I

    move-result v3

    .line 103
    invoke-static {v0, p2, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 105
    invoke-virtual {p0, v1}, Landroid/support/transition/Fade;->setMode(I)V

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method private createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 3

    .prologue
    .line 120
    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {p1, p2}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 124
    sget-object v0, Landroid/support/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 129
    new-instance v1, Landroid/support/transition/Fade$FadeAnimatorListener;

    invoke-direct {v1, p1}, Landroid/support/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 131
    new-instance v1, Landroid/support/transition/Fade$1;

    invoke-direct {v1, p0, p1}, Landroid/support/transition/Fade$1;-><init>(Landroid/support/transition/Fade;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/support/transition/Fade;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    goto :goto_0
.end method

.method private static getStartAlpha(Landroid/support/transition/TransitionValues;F)F
    .locals 2

    .prologue
    .line 167
    .line 168
    if-eqz p0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:fade:transitionAlpha"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 174
    :cond_0
    return p1
.end method


# virtual methods
.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 112
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:fade:transitionAlpha"

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 113
    invoke-static {v2}, Landroid/support/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 112
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 151
    invoke-static {p3, v0}, Landroid/support/transition/Fade;->getStartAlpha(Landroid/support/transition/TransitionValues;F)F

    move-result v1

    .line 152
    cmpl-float v2, v1, v3

    if-nez v2, :cond_0

    .line 155
    :goto_0
    invoke-direct {p0, p2, v0, v3}, Landroid/support/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 161
    invoke-static {p2}, Landroid/support/transition/ViewUtils;->saveNonTransitionAlpha(Landroid/view/View;)V

    .line 162
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Landroid/support/transition/Fade;->getStartAlpha(Landroid/support/transition/TransitionValues;F)F

    move-result v0

    .line 163
    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method