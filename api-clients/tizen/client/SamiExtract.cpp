
#include "SamiExtract.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiExtract::SamiExtract() {
    init();
}

SamiExtract::~SamiExtract() {
    this->cleanup();
}

void
SamiExtract::init() {
    pName = null;
pOcpc = null;
pBrand = null;
pType = null;
pStrain = null;
pDescription = null;
pQr = null;
pUrl = null;
pImage = null;
pLabTest = null;
pThc = null;
pCbd = null;
pCreatedAt = null;
pUpdatedAt = null;
}

void
SamiExtract::cleanup() {
    if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pOcpc != null) {
        
        delete pOcpc;
        pOcpc = null;
    }
if(pBrand != null) {
        
        delete pBrand;
        pBrand = null;
    }
if(pType != null) {
        
        delete pType;
        pType = null;
    }
if(pStrain != null) {
        
        delete pStrain;
        pStrain = null;
    }
if(pDescription != null) {
        
        delete pDescription;
        pDescription = null;
    }
if(pQr != null) {
        
        delete pQr;
        pQr = null;
    }
if(pUrl != null) {
        
        delete pUrl;
        pUrl = null;
    }
if(pImage != null) {
        
        delete pImage;
        pImage = null;
    }
if(pLabTest != null) {
        
        delete pLabTest;
        pLabTest = null;
    }
if(pThc != null) {
        
        delete pThc;
        pThc = null;
    }
if(pCbd != null) {
        
        delete pCbd;
        pCbd = null;
    }
if(pCreatedAt != null) {
        
        delete pCreatedAt;
        pCreatedAt = null;
    }
if(pUpdatedAt != null) {
        
        delete pUpdatedAt;
        pUpdatedAt = null;
    }
}


SamiExtract*
SamiExtract::fromJson(String* json) {
    this->cleanup();
    String str(json->GetPointer());
    int length = str.GetLength();

    ByteBuffer buffer;
    buffer.Construct(length);

    for (int i = 0; i < length; ++i) {
       byte b = str[i];
       buffer.SetByte(b);
    }

    IJsonValue* pJson = JsonParser::ParseN(buffer);
    fromJsonObject(pJson);
    if (pJson->GetType() == JSON_TYPE_OBJECT) {
       JsonObject* pObject = static_cast< JsonObject* >(pJson);
       pObject->RemoveAll(true);
    }
    else if (pJson->GetType() == JSON_TYPE_ARRAY) {
       JsonArray* pArray = static_cast< JsonArray* >(pJson);
       pArray->RemoveAll(true);
    }
    delete pJson;
    return this;
}


void
SamiExtract::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pNameKey = new JsonString(L"name");
        IJsonValue* pNameVal = null;
        pJsonObject->GetValue(pNameKey, pNameVal);
        if(pNameVal != null) {
            
            pName = new String();
            jsonToValue(pName, pNameVal, L"String", L"String");
        }
        delete pNameKey;
JsonString* pOcpcKey = new JsonString(L"ocpc");
        IJsonValue* pOcpcVal = null;
        pJsonObject->GetValue(pOcpcKey, pOcpcVal);
        if(pOcpcVal != null) {
            
            pOcpc = new String();
            jsonToValue(pOcpc, pOcpcVal, L"String", L"String");
        }
        delete pOcpcKey;
JsonString* pBrandKey = new JsonString(L"brand");
        IJsonValue* pBrandVal = null;
        pJsonObject->GetValue(pBrandKey, pBrandVal);
        if(pBrandVal != null) {
            
            pBrand = null;
            jsonToValue(pBrand, pBrandVal, L"SamiObject", L"SamiObject");
        }
        delete pBrandKey;
JsonString* pTypeKey = new JsonString(L"type");
        IJsonValue* pTypeVal = null;
        pJsonObject->GetValue(pTypeKey, pTypeVal);
        if(pTypeVal != null) {
            
            pType = new String();
            jsonToValue(pType, pTypeVal, L"String", L"String");
        }
        delete pTypeKey;
JsonString* pStrainKey = new JsonString(L"strain");
        IJsonValue* pStrainVal = null;
        pJsonObject->GetValue(pStrainKey, pStrainVal);
        if(pStrainVal != null) {
            
            pStrain = null;
            jsonToValue(pStrain, pStrainVal, L"SamiObject", L"SamiObject");
        }
        delete pStrainKey;
JsonString* pDescriptionKey = new JsonString(L"description");
        IJsonValue* pDescriptionVal = null;
        pJsonObject->GetValue(pDescriptionKey, pDescriptionVal);
        if(pDescriptionVal != null) {
            
            pDescription = new String();
            jsonToValue(pDescription, pDescriptionVal, L"String", L"String");
        }
        delete pDescriptionKey;
JsonString* pQrKey = new JsonString(L"qr");
        IJsonValue* pQrVal = null;
        pJsonObject->GetValue(pQrKey, pQrVal);
        if(pQrVal != null) {
            
            pQr = new String();
            jsonToValue(pQr, pQrVal, L"String", L"String");
        }
        delete pQrKey;
JsonString* pUrlKey = new JsonString(L"url");
        IJsonValue* pUrlVal = null;
        pJsonObject->GetValue(pUrlKey, pUrlVal);
        if(pUrlVal != null) {
            
            pUrl = new String();
            jsonToValue(pUrl, pUrlVal, L"String", L"String");
        }
        delete pUrlKey;
JsonString* pImageKey = new JsonString(L"image");
        IJsonValue* pImageVal = null;
        pJsonObject->GetValue(pImageKey, pImageVal);
        if(pImageVal != null) {
            
            pImage = new String();
            jsonToValue(pImage, pImageVal, L"String", L"String");
        }
        delete pImageKey;
JsonString* pLabTestKey = new JsonString(L"labTest");
        IJsonValue* pLabTestVal = null;
        pJsonObject->GetValue(pLabTestKey, pLabTestVal);
        if(pLabTestVal != null) {
            
            pLabTest = new String();
            jsonToValue(pLabTest, pLabTestVal, L"String", L"String");
        }
        delete pLabTestKey;
JsonString* pThcKey = new JsonString(L"thc");
        IJsonValue* pThcVal = null;
        pJsonObject->GetValue(pThcKey, pThcVal);
        if(pThcVal != null) {
            
            pThc = new String();
            jsonToValue(pThc, pThcVal, L"String", L"String");
        }
        delete pThcKey;
JsonString* pCbdKey = new JsonString(L"cbd");
        IJsonValue* pCbdVal = null;
        pJsonObject->GetValue(pCbdKey, pCbdVal);
        if(pCbdVal != null) {
            
            pCbd = new String();
            jsonToValue(pCbd, pCbdVal, L"String", L"String");
        }
        delete pCbdKey;
JsonString* pCreatedAtKey = new JsonString(L"createdAt");
        IJsonValue* pCreatedAtVal = null;
        pJsonObject->GetValue(pCreatedAtKey, pCreatedAtVal);
        if(pCreatedAtVal != null) {
            
            pCreatedAt = new DateTime();
            jsonToValue(pCreatedAt, pCreatedAtVal, L"DateTime", L"DateTime");
        }
        delete pCreatedAtKey;
JsonString* pUpdatedAtKey = new JsonString(L"updatedAt");
        IJsonValue* pUpdatedAtVal = null;
        pJsonObject->GetValue(pUpdatedAtKey, pUpdatedAtVal);
        if(pUpdatedAtVal != null) {
            
            pUpdatedAt = new DateTime();
            jsonToValue(pUpdatedAt, pUpdatedAtVal, L"DateTime", L"DateTime");
        }
        delete pUpdatedAtKey;
    }
}

SamiExtract::SamiExtract(String* json) {
    init();
    String str(json->GetPointer());
    int length = str.GetLength();

    ByteBuffer buffer;
    buffer.Construct(length);

    for (int i = 0; i < length; ++i) {
       byte b = str[i];
       buffer.SetByte(b);
    }

    IJsonValue* pJson = JsonParser::ParseN(buffer);
    fromJsonObject(pJson);
    if (pJson->GetType() == JSON_TYPE_OBJECT) {
       JsonObject* pObject = static_cast< JsonObject* >(pJson);
       pObject->RemoveAll(true);
    }
    else if (pJson->GetType() == JSON_TYPE_ARRAY) {
       JsonArray* pArray = static_cast< JsonArray* >(pJson);
       pArray->RemoveAll(true);
    }
    delete pJson;
}

String
SamiExtract::asJson ()
{
    JsonObject* pJsonObject = asJsonObject();

    char *pComposeBuf = new char[256];
    JsonWriter::Compose(pJsonObject, pComposeBuf, 256);
    String s = String(pComposeBuf);

    delete pComposeBuf;
    pJsonObject->RemoveAll(true);
    delete pJsonObject;

    return s;
}

JsonObject*
SamiExtract::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pOcpcKey = new JsonString(L"ocpc");
    pJsonObject->Add(pOcpcKey, toJson(getPOcpc(), "String", ""));

    JsonString *pBrandKey = new JsonString(L"brand");
    pJsonObject->Add(pBrandKey, toJson(getPBrand(), "SamiObject", ""));

    JsonString *pTypeKey = new JsonString(L"type");
    pJsonObject->Add(pTypeKey, toJson(getPType(), "String", ""));

    JsonString *pStrainKey = new JsonString(L"strain");
    pJsonObject->Add(pStrainKey, toJson(getPStrain(), "SamiObject", ""));

    JsonString *pDescriptionKey = new JsonString(L"description");
    pJsonObject->Add(pDescriptionKey, toJson(getPDescription(), "String", ""));

    JsonString *pQrKey = new JsonString(L"qr");
    pJsonObject->Add(pQrKey, toJson(getPQr(), "String", ""));

    JsonString *pUrlKey = new JsonString(L"url");
    pJsonObject->Add(pUrlKey, toJson(getPUrl(), "String", ""));

    JsonString *pImageKey = new JsonString(L"image");
    pJsonObject->Add(pImageKey, toJson(getPImage(), "String", ""));

    JsonString *pLabTestKey = new JsonString(L"labTest");
    pJsonObject->Add(pLabTestKey, toJson(getPLabTest(), "String", ""));

    JsonString *pThcKey = new JsonString(L"thc");
    pJsonObject->Add(pThcKey, toJson(getPThc(), "String", ""));

    JsonString *pCbdKey = new JsonString(L"cbd");
    pJsonObject->Add(pCbdKey, toJson(getPCbd(), "String", ""));

    JsonString *pCreatedAtKey = new JsonString(L"createdAt");
    pJsonObject->Add(pCreatedAtKey, toJson(getPCreatedAt(), "DateTime", ""));

    JsonString *pUpdatedAtKey = new JsonString(L"updatedAt");
    pJsonObject->Add(pUpdatedAtKey, toJson(getPUpdatedAt(), "DateTime", ""));

    return pJsonObject;
}

String*
SamiExtract::getPName() {
    return pName;
}
void
SamiExtract::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiExtract::getPOcpc() {
    return pOcpc;
}
void
SamiExtract::setPOcpc(String* pOcpc) {
    this->pOcpc = pOcpc;
}

SamiObject*
SamiExtract::getPBrand() {
    return pBrand;
}
void
SamiExtract::setPBrand(SamiObject* pBrand) {
    this->pBrand = pBrand;
}

String*
SamiExtract::getPType() {
    return pType;
}
void
SamiExtract::setPType(String* pType) {
    this->pType = pType;
}

SamiObject*
SamiExtract::getPStrain() {
    return pStrain;
}
void
SamiExtract::setPStrain(SamiObject* pStrain) {
    this->pStrain = pStrain;
}

String*
SamiExtract::getPDescription() {
    return pDescription;
}
void
SamiExtract::setPDescription(String* pDescription) {
    this->pDescription = pDescription;
}

String*
SamiExtract::getPQr() {
    return pQr;
}
void
SamiExtract::setPQr(String* pQr) {
    this->pQr = pQr;
}

String*
SamiExtract::getPUrl() {
    return pUrl;
}
void
SamiExtract::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}

String*
SamiExtract::getPImage() {
    return pImage;
}
void
SamiExtract::setPImage(String* pImage) {
    this->pImage = pImage;
}

String*
SamiExtract::getPLabTest() {
    return pLabTest;
}
void
SamiExtract::setPLabTest(String* pLabTest) {
    this->pLabTest = pLabTest;
}

String*
SamiExtract::getPThc() {
    return pThc;
}
void
SamiExtract::setPThc(String* pThc) {
    this->pThc = pThc;
}

String*
SamiExtract::getPCbd() {
    return pCbd;
}
void
SamiExtract::setPCbd(String* pCbd) {
    this->pCbd = pCbd;
}

DateTime*
SamiExtract::getPCreatedAt() {
    return pCreatedAt;
}
void
SamiExtract::setPCreatedAt(DateTime* pCreatedAt) {
    this->pCreatedAt = pCreatedAt;
}

DateTime*
SamiExtract::getPUpdatedAt() {
    return pUpdatedAt;
}
void
SamiExtract::setPUpdatedAt(DateTime* pUpdatedAt) {
    this->pUpdatedAt = pUpdatedAt;
}



} /* namespace Swagger */

