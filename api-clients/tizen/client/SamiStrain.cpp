
#include "SamiStrain.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiStrain::SamiStrain() {
    init();
}

SamiStrain::~SamiStrain() {
    this->cleanup();
}

void
SamiStrain::init() {
    pName = null;
pOcpc = null;
pSeedCompany = null;
pQr = null;
pUrl = null;
pImage = null;
pLineage = null;
pGenetics = null;
pChildren = null;
pCreatedAt = null;
pUpdatedAt = null;
}

void
SamiStrain::cleanup() {
    if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pOcpc != null) {
        
        delete pOcpc;
        pOcpc = null;
    }
if(pSeedCompany != null) {
        
        delete pSeedCompany;
        pSeedCompany = null;
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
if(pLineage != null) {
        
        delete pLineage;
        pLineage = null;
    }
if(pGenetics != null) {
        
        delete pGenetics;
        pGenetics = null;
    }
if(pChildren != null) {
        pChildren->RemoveAll(true);
        delete pChildren;
        pChildren = null;
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


SamiStrain*
SamiStrain::fromJson(String* json) {
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
SamiStrain::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pSeedCompanyKey = new JsonString(L"seedCompany");
        IJsonValue* pSeedCompanyVal = null;
        pJsonObject->GetValue(pSeedCompanyKey, pSeedCompanyVal);
        if(pSeedCompanyVal != null) {
            
            pSeedCompany = null;
            jsonToValue(pSeedCompany, pSeedCompanyVal, L"SamiObject", L"SamiObject");
        }
        delete pSeedCompanyKey;
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
JsonString* pLineageKey = new JsonString(L"lineage");
        IJsonValue* pLineageVal = null;
        pJsonObject->GetValue(pLineageKey, pLineageVal);
        if(pLineageVal != null) {
            
            pLineage = null;
            jsonToValue(pLineage, pLineageVal, L"SamiObject", L"SamiObject");
        }
        delete pLineageKey;
JsonString* pGeneticsKey = new JsonString(L"genetics");
        IJsonValue* pGeneticsVal = null;
        pJsonObject->GetValue(pGeneticsKey, pGeneticsVal);
        if(pGeneticsVal != null) {
            
            pGenetics = null;
            jsonToValue(pGenetics, pGeneticsVal, L"SamiObject", L"SamiObject");
        }
        delete pGeneticsKey;
JsonString* pChildrenKey = new JsonString(L"children");
        IJsonValue* pChildrenVal = null;
        pJsonObject->GetValue(pChildrenKey, pChildrenVal);
        if(pChildrenVal != null) {
            pChildren = new ArrayList();
            
            jsonToValue(pChildren, pChildrenVal, L"IList", L"String");
        }
        delete pChildrenKey;
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

SamiStrain::SamiStrain(String* json) {
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
SamiStrain::asJson ()
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
SamiStrain::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pOcpcKey = new JsonString(L"ocpc");
    pJsonObject->Add(pOcpcKey, toJson(getPOcpc(), "String", ""));

    JsonString *pSeedCompanyKey = new JsonString(L"seedCompany");
    pJsonObject->Add(pSeedCompanyKey, toJson(getPSeedCompany(), "SamiObject", ""));

    JsonString *pQrKey = new JsonString(L"qr");
    pJsonObject->Add(pQrKey, toJson(getPQr(), "String", ""));

    JsonString *pUrlKey = new JsonString(L"url");
    pJsonObject->Add(pUrlKey, toJson(getPUrl(), "String", ""));

    JsonString *pImageKey = new JsonString(L"image");
    pJsonObject->Add(pImageKey, toJson(getPImage(), "String", ""));

    JsonString *pLineageKey = new JsonString(L"lineage");
    pJsonObject->Add(pLineageKey, toJson(getPLineage(), "SamiObject", ""));

    JsonString *pGeneticsKey = new JsonString(L"genetics");
    pJsonObject->Add(pGeneticsKey, toJson(getPGenetics(), "SamiObject", ""));

    JsonString *pChildrenKey = new JsonString(L"children");
    pJsonObject->Add(pChildrenKey, toJson(getPChildren(), "String", "array"));

    JsonString *pCreatedAtKey = new JsonString(L"createdAt");
    pJsonObject->Add(pCreatedAtKey, toJson(getPCreatedAt(), "DateTime", ""));

    JsonString *pUpdatedAtKey = new JsonString(L"updatedAt");
    pJsonObject->Add(pUpdatedAtKey, toJson(getPUpdatedAt(), "DateTime", ""));

    return pJsonObject;
}

String*
SamiStrain::getPName() {
    return pName;
}
void
SamiStrain::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiStrain::getPOcpc() {
    return pOcpc;
}
void
SamiStrain::setPOcpc(String* pOcpc) {
    this->pOcpc = pOcpc;
}

SamiObject*
SamiStrain::getPSeedCompany() {
    return pSeedCompany;
}
void
SamiStrain::setPSeedCompany(SamiObject* pSeedCompany) {
    this->pSeedCompany = pSeedCompany;
}

String*
SamiStrain::getPQr() {
    return pQr;
}
void
SamiStrain::setPQr(String* pQr) {
    this->pQr = pQr;
}

String*
SamiStrain::getPUrl() {
    return pUrl;
}
void
SamiStrain::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}

String*
SamiStrain::getPImage() {
    return pImage;
}
void
SamiStrain::setPImage(String* pImage) {
    this->pImage = pImage;
}

SamiObject*
SamiStrain::getPLineage() {
    return pLineage;
}
void
SamiStrain::setPLineage(SamiObject* pLineage) {
    this->pLineage = pLineage;
}

SamiObject*
SamiStrain::getPGenetics() {
    return pGenetics;
}
void
SamiStrain::setPGenetics(SamiObject* pGenetics) {
    this->pGenetics = pGenetics;
}

IList*
SamiStrain::getPChildren() {
    return pChildren;
}
void
SamiStrain::setPChildren(IList* pChildren) {
    this->pChildren = pChildren;
}

DateTime*
SamiStrain::getPCreatedAt() {
    return pCreatedAt;
}
void
SamiStrain::setPCreatedAt(DateTime* pCreatedAt) {
    this->pCreatedAt = pCreatedAt;
}

DateTime*
SamiStrain::getPUpdatedAt() {
    return pUpdatedAt;
}
void
SamiStrain::setPUpdatedAt(DateTime* pUpdatedAt) {
    this->pUpdatedAt = pUpdatedAt;
}



} /* namespace Swagger */

