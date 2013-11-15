.class public Lcom/android/zxing/ui/QRCodeFragment;
.super Landroid/preference/PreferenceFragment;
.source "QRCodeFragment.java"


# static fields
.field private static final DOWNLOAD_QQ_URI:Landroid/net/Uri;

.field private static final DOWNLOAD_WECHAT_URI:Landroid/net/Uri;

.field private static final MECARD_MAP_KEY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackView:Landroid/view/View;

.field private mBackViewListener:Landroid/view/View$OnClickListener;

.field private mButtonCenter:Landroid/widget/Button;

.field private mButtonCenterListener:Landroid/view/View$OnClickListener;

.field private mButtonLeft:Landroid/widget/Button;

.field private mButtonLeftListener:Landroid/view/View$OnClickListener;

.field private mButtonRight:Landroid/widget/Button;

.field private mButtonRightListener:Landroid/view/View$OnClickListener;

.field private mContent:Ljava/lang/String;

.field private mContentTitle:Landroid/widget/TextView;

.field private mQQInstalled:Z

.field private mType:Lcom/android/zxing/QRCodeType;

.field private mViewBackground:Landroid/view/View;

.field private mViewSymbol:Landroid/view/View;

.field private mWarningText:Landroid/widget/TextView;

.field private mWeChatInstalled:Z

.field private mWifiConManager:Lcom/android/zxing/WiFiConManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-string v0, "market://details?id=com.tencent.mm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/ui/QRCodeFragment;->DOWNLOAD_WECHAT_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "market://details?id=com.tencent.mobileqq"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/ui/QRCodeFragment;->DOWNLOAD_QQ_URI:Landroid/net/Uri;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    .line 66
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "N"

    const-string v2, "pref_mecard_name_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "NICKNAME"

    const-string v2, "pref_mecard_nickname_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "ORG"

    const-string v2, "pref_mecard_company_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "TIL"

    const-string v2, "pref_mecard_title_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "TEL"

    const-string v2, "pref_mecard_phone_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "EMAIL"

    const-string v2, "pref_mecard_email_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "URL"

    const-string v2, "pref_mecard_web_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "ADR"

    const-string v2, "pref_mecard_address_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "BDAY"

    const-string v2, "pref_mecard_birthday_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "NOTE"

    const-string v2, "pref_mecard_note_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 60
    sget-object v0, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    .line 247
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$1;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeftListener:Landroid/view/View$OnClickListener;

    .line 256
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$2;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenterListener:Landroid/view/View$OnClickListener;

    .line 320
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$3;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRightListener:Landroid/view/View$OnClickListener;

    .line 329
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$4;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$4;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackViewListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIBrowser()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/zxing/ui/QRCodeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z

    return v0
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->DOWNLOAD_QQ_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->copyToClipboard()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/zxing/ui/QRCodeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->launchWeChat()V

    return-void
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->DOWNLOAD_WECHAT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/zxing/ui/QRCodeFragment;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/zxing/ui/QRCodeFragment;->downloadFromUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIMartket()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->insertContact()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->connectToWifi()V

    return-void
.end method

.method private connectToWifi()V
    .locals 7

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/zxing/QRCodeMatcher;->wifiSpliter(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 490
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "S"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 491
    .local v3, ssid:Ljava/lang/String;
    const-string v0, "T"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 492
    .local v4, security:Ljava/lang/String;
    const-string v0, "P"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 493
    .local v5, pwd:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWifiConManager:Lcom/android/zxing/WiFiConManager;

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lcom/android/zxing/WiFiConManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/android/zxing/WiFiConManager;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWifiConManager:Lcom/android/zxing/WiFiConManager;

    .line 499
    :goto_0
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWifiConManager:Lcom/android/zxing/WiFiConManager;

    invoke-virtual {v0}, Lcom/android/zxing/WiFiConManager;->connectInBackground()V

    .line 500
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWifiConManager:Lcom/android/zxing/WiFiConManager;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/zxing/WiFiConManager;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private copyToClipboard()V
    .locals 4

    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 341
    .local v0, clipboard:Landroid/content/ClipboardManager;
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d01fa

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 343
    return-void
.end method

.method private downloadFromUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 443
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 447
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 450
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private insertContact()V
    .locals 28

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/android/zxing/QRCodeMatcher;->contactsCardSpliter(Ljava/lang/String;Lcom/android/zxing/QRCodeType;)Ljava/util/HashMap;

    move-result-object v11

    .line 347
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v9, extras:Landroid/os/Bundle;
    const-string v23, "N"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 350
    .local v12, name:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 351
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v13, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v23, "vnd.android.cursor.item/name"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 356
    .end local v13           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const-string v23, "NICKNAME"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 357
    .local v14, nickame:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 358
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v15, nicknameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v23, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 363
    .end local v15           #nicknameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v23, "TEL"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 364
    .local v18, phone:Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 365
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v19, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v23, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 370
    .end local v19           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v23, "ORG"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 371
    .local v4, company:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 372
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v5, companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v23, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 377
    .end local v5           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v23, "EMAIL"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 378
    .local v7, email:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 379
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v8, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    const-string v23, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 384
    .end local v8           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v23, "ADR"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 385
    .local v2, address:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 386
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v3, addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v23, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 391
    .end local v3           #addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const-string v23, "NOTE"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 392
    .local v16, note:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 393
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v17, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v23, "vnd.android.cursor.item/note"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 398
    .end local v17           #noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string v23, "URL"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 399
    .local v21, web:Ljava/lang/String;
    if-eqz v21, :cond_7

    .line 400
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v22, webList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const-string v23, "vnd.android.cursor.item/website"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 404
    .end local v22           #webList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    if-eqz v12, :cond_8

    .line 405
    new-instance v10, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v10, intent:Landroid/content/Intent;
    const-string v23, "vnd.android.cursor.dir/preview_contact"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    invoke-virtual {v10, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 409
    .local v6, display:Landroid/view/Display;
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 410
    .local v20, point:Landroid/graphics/Point;
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 411
    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    invoke-direct/range {v23 .. v27}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 414
    .end local v6           #display:Landroid/view/Display;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v20           #point:Landroid/graphics/Point;
    :cond_8
    return-void
.end method

.method private isAvilible(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 464
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 465
    .local v3, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v1, pName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 467
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 468
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 469
    .local v4, pn:Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v0           #i:I
    .end local v4           #pn:Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private launchMIUIBrowser()V
    .locals 4

    .prologue
    .line 477
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 481
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchMIUIMartket()V
    .locals 4

    .prologue
    .line 426
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    sget-object v3, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    if-ne v2, v3, :cond_0

    .line 428
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 433
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 439
    :goto_1
    return-void

    .line 431
    :cond_0
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.MarketTabActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private launchWeChat()V
    .locals 3

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mm.ui.qrcode.GetQRCodeInfoUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 459
    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "root"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 507
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 508
    .local v0, child:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 522
    :goto_0
    return v3

    .line 513
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 514
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 515
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 516
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 517
    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 518
    goto :goto_0

    .line 514
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 522
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/android/zxing/QRCodeType;Ljava/lang/String;)V
    .locals 13
    .parameter "type"
    .parameter "text"

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 80
    .local v1, group:Landroid/preference/PreferenceGroup;
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    .line 81
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 84
    :cond_0
    const v10, 0x7f060006

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 86
    if-eqz p2, :cond_e

    .line 87
    iput-object p2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    .line 89
    sget-object v10, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    if-eq p1, v10, :cond_1

    sget-object v10, Lcom/android/zxing/QRCodeType;->VCARD:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_4

    .line 91
    :cond_1
    invoke-static {p2, p1}, Lcom/android/zxing/QRCodeMatcher;->contactsCardSpliter(Ljava/lang/String;Lcom/android/zxing/QRCodeType;)Ljava/util/HashMap;

    move-result-object v5

    .line 92
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v10, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 93
    .local v4, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 95
    .local v9, value:Ljava/lang/String;
    if-nez v9, :cond_2

    .line 96
    sget-object v10, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v1, v10}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 98
    :cond_2
    sget-object v10, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    .end local v3           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_3
    const-string v10, "pref_text_group_key"

    invoke-direct {p0, v1, v10}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 103
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f0200f5

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f0200f6

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01f2

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01ef

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 114
    :cond_4
    sget-object v10, Lcom/android/zxing/QRCodeType;->WEB_URL:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_6

    .line 115
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f0200fb

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 116
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f0200fc

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01f3

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01ee

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const v11, 0x7f0d0206

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_5
    :goto_2
    const-string v10, "pref_text_content_key"

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    const-string v10, "pref_mecard_group_key"

    invoke-direct {p0, v1, v10}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_1

    .line 125
    :cond_6
    sget-object v10, Lcom/android/zxing/QRCodeType;->WEB_URL_APK:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_7

    .line 126
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f0200fb

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f0200fc

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01ee

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const v11, 0x7f0d0207

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const v11, 0x7f0d01f4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const v11, 0x7f0d01f5

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 137
    :cond_7
    sget-object v10, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_8

    .line 138
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f0200f1

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f0200f2

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01ed

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01f8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 148
    :cond_8
    sget-object v10, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_a

    .line 149
    const-string v10, "com.tencent.mm"

    invoke-direct {p0, v10}, Lcom/android/zxing/ui/QRCodeFragment;->isAvilible(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    .line 150
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f0200fd

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 151
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f0200fe

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    iget-boolean v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eqz v10, :cond_9

    .line 154
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01f6

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 159
    :goto_3
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01f0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 156
    :cond_9
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01f7

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 165
    :cond_a
    sget-object v10, Lcom/android/zxing/QRCodeType;->TEXT:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_b

    .line 166
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f0200f9

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f0200fa

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01f1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01f9

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 176
    :cond_b
    sget-object v10, Lcom/android/zxing/QRCodeType;->WIFI:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_c

    .line 177
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f0200ff

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f020100

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d020b

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const v11, 0x7f0d0210

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d020c

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/zxing/QRCodeMatcher;->wifiSpliter(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 190
    .restart local v5       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0d0208

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "S"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, ssid:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0d020a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "T"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, security:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0d0209

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "P"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, pwd:Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 200
    goto/16 :goto_2

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #pwd:Ljava/lang/String;
    .end local v7           #security:Ljava/lang/String;
    .end local v8           #ssid:Ljava/lang/String;
    :cond_c
    sget-object v10, Lcom/android/zxing/QRCodeType;->WEB_URL_QQ:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_5

    .line 201
    const-string v10, "com.tencent.mobileqq"

    invoke-direct {p0, v10}, Lcom/android/zxing/ui/QRCodeFragment;->isAvilible(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z

    .line 202
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f0200f7

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 203
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f0200f8

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    iget-boolean v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z

    if-eqz v10, :cond_d

    .line 205
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d020e

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 209
    :goto_4
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d020d

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 207
    :cond_d
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d020f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 221
    :cond_e
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    .line 222
    sget-object v10, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    iput-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    .line 223
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 230
    const v1, 0x7f040023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 231
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f0c0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    .line 232
    const v1, 0x7f0c0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    .line 233
    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackView:Landroid/view/View;

    .line 234
    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    .line 235
    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    .line 236
    const v1, 0x7f0c007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    .line 237
    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    .line 238
    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    .line 240
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenterListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-object v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 288
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 289
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    sget-object v3, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    if-ne v2, v3, :cond_2

    .line 291
    const-string v2, "com.tencent.mm"

    invoke-direct {p0, v2}, Lcom/android/zxing/ui/QRCodeFragment;->isAvilible(Ljava/lang/String;)Z

    move-result v1

    .line 292
    .local v1, isWeChatInstalled:Z
    iget-boolean v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eq v1, v2, :cond_0

    .line 293
    iput-boolean v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    .line 294
    iget-boolean v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v3, 0x7f0d01f6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 312
    .end local v1           #isWeChatInstalled:Z
    :cond_0
    :goto_0
    return-void

    .line 297
    .restart local v1       #isWeChatInstalled:Z
    :cond_1
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v3, 0x7f0d01f7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 300
    .end local v1           #isWeChatInstalled:Z
    :cond_2
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    sget-object v3, Lcom/android/zxing/QRCodeType;->WEB_URL_QQ:Lcom/android/zxing/QRCodeType;

    if-ne v2, v3, :cond_0

    .line 301
    const-string v2, "com.tencent.mobileqq"

    invoke-direct {p0, v2}, Lcom/android/zxing/ui/QRCodeFragment;->isAvilible(Ljava/lang/String;)Z

    move-result v0

    .line 302
    .local v0, isQQInstalled:Z
    iget-boolean v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z

    if-eq v0, v2, :cond_0

    .line 303
    iput-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z

    .line 304
    iget-boolean v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eqz v2, :cond_3

    .line 305
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v3, 0x7f0d020e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 307
    :cond_3
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v3, 0x7f0d020f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 318
    return-void
.end method
