.class public Landroid/widget/DatePicker$TwTextWatcher;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;IIZ)V
    .locals 2
    .parameter
    .parameter "maxLen"
    .parameter "id"
    .parameter "month"

    .prologue
    .line 1110
    iput-object p1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->changedLen:I

    .line 1111
    iput p2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    .line 1112
    iput p3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    .line 1113
    iput-boolean p4, p0, Landroid/widget/DatePicker$TwTextWatcher;->isMonth:Z

    .line 1115
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    .line 1116
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    .line 1118
    :cond_0
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    .line 1119
    return-void

    .line 1118
    :cond_1
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    .line 1179
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1900(Landroid/widget/DatePicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1180
    .local v0, manager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "changeFocus() mNext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1186
    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    if-ltz v1, :cond_0

    .line 1187
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1188
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1191
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1122
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1123
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1126
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 1128
    iput p4, p0, Landroid/widget/DatePicker$TwTextWatcher;->changedLen:I

    .line 1129
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    .line 1132
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1135
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1136
    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1137
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAG exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1176
    :cond_1
    :goto_0
    return-void

    .line 1142
    :cond_2
    iget-boolean v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->isMonth:Z

    if-eqz v1, :cond_5

    .line 1143
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->isNumMonth:Z
    invoke-static {v1}, Landroid/widget/DatePicker;->access$400(Landroid/widget/DatePicker;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1144
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Samsung Keypad Num Month"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1146
    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->changedLen:I

    if-ne v1, v4, :cond_1

    .line 1147
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_3

    .line 1148
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1149
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0

    .line 1151
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1152
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1153
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1154
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1160
    :cond_4
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1164
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-lt v1, v2, :cond_1

    .line 1165
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1170
    :cond_5
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->changedLen:I

    if-ne v1, v4, :cond_1

    .line 1171
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1172
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0
.end method
