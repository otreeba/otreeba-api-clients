
#include "SamiSeedCompany.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiSeedCompany::SamiSeedCompany() {
    init();
}

SamiSeedCompany::~SamiSeedCompany() {
    this->cleanup();
}

void
SamiSeedCompany::init() {
    pName = null;
pOcpc = null;
pDescription = null;
pQr = null;
pUrl = null;
pImage = null;
pLineage = null;
pStrains = null;
pCreatedAt = null;
pUpdatedAt = null;
}

void
SamiSeedCompany::cleanup() {
    if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pOcpc != null) {
        
        delete pOcpc;
        pOcpc = null;
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
if(pLineage != null) {
        
        delete pLineage;
        pLineage = null;
    }
if(pStrains != null) {
        pStrains->RemoveAll(true);
        delete pStrains;
        pStrains = null;
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


SamiSeedCompany*
SamiSeedCompany::fromJson(String* json) {
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
SamiSeedCompany::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pLineageKey = new JsonString(L"lineage");
        IJsonValue* pLineageVal = null;
        pJsonObject->GetValue(pLineageKey, pLineageVal);
        if(pLineageVal != null) {
            
            pLineage = null;
            jsonToValue(pLineage, pLineageVal, L"SamiObject", L"SamiObject");
        }
        delete pLineageKey;
JsonString* pStrainsKey = new JsonString(L"strains");
        IJsonValue* pStrainsVal = null;
        pJsonObject->GetValue(pStrainsKey, pStrainsVal);
        if(pStrainsVal != null) {
            pStrains = new ArrayList();
            
            jsonToValue(pStrains, pStrainsVal, L"IList", L"String");
        }
        delete pStrainsKey;
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

SamiSeedCompany::SamiSeedCompany(String* json) {
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
SamiSeedCompany::asJson ()
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
SamiSeedCompany::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pOcpcKey = new JsonString(L"ocpc");
    pJsonObject->Add(pOcpcKey, toJson(getPOcpc(), "String", ""));

    JsonString *pDescriptionKey = new JsonString(L"description");
    pJsonObject->Add(pDescriptionKey, toJson(getPDescription(), "String", ""));

    JsonString *pQrKey = new JsonString(L"qr");
    pJsonObject->Add(pQrKey, toJson(getPQr(), "String", ""));

    JsonString *pUrlKey = new JsonString(L"url");
    pJsonObject->Add(pUrlKey, toJson(getPUrl(), "String", ""));

    JsonString *pImageKey = new JsonString(L"image");
    pJsonObject->Add(pImageKey, toJson(getPImage(), "String", ""));

    JsonString *pLineageKey = new JsonString(L"lineage");
    pJsonObject->Add(pLineageKey, toJson(getPLineage(), "SamiObject", ""));

    JsonString *pStrainsKey = new JsonString(L"strains");
    pJsonObject->Add(pStrainsKey, toJson(getPStrains(), "String", "array"));

    JsonString *pCreatedAtKey = new JsonString(L"createdAt");
    pJsonObject->Add(pCreatedAtKey, toJson(getPCreatedAt(), "DateTime", ""));

    JsonString *pUpdatedAtKey = new JsonString(L"updatedAt");
    pJsonObject->Add(pUpdatedAtKey, toJson(getPUpdatedAt(), "DateTime", ""));

    return pJsonObject;
}

String*
SamiSeedCompany::getPName() {
    return pName;
}
void
SamiSeedCompany::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiSeedCompany::getPOcpc() {
    return pOcpc;
}
void
SamiSeedCompany::setPOcpc(String* pOcpc) {
    this->pOcpc = pOcpc;
}

String*
SamiSeedCompany::getPDescription() {
    return pDescription;
}
void
SamiSeedCompany::setPDescription(String* pDescription) {
    this->pDescription = pDescription;
}

String*
SamiSeedCompany::getPQr() {
    return pQr;
}
void
SamiSeedCompany::setPQr(String* pQr) {
    this->pQr = pQr;
}

String*
SamiSeedCompany::getPUrl() {
    return pUrl;
}
void
SamiSeedCompany::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}

String*
SamiSeedCompany::getPImage() {
    return pImage;
}
void
SamiSeedCompany::setPImage(String* pImage) {
    this->pImage = pImage;
}

SamiObject*
SamiSeedCompany::getPLineage() {
    return pLineage;
}
void
SamiSeedCompany::setPLineage(SamiObject* pLineage) {
    this->pLineage = pLineage;
}

IList*
SamiSeedCompany::getPStrains() {
    return pStrains;
}
void
SamiSeedCompany::setPStrains(IList* pStrains) {
    this->pStrains = pStrains;
}

DateTime*
SamiSeedCompany::getPCreatedAt() {
    return pCreatedAt;
}
void
SamiSeedCompany::setPCreatedAt(DateTime* pCreatedAt) {
    this->pCreatedAt = pCreatedAt;
}

DateTime*
SamiSeedCompany::getPUpdatedAt() {
    return pUpdatedAt;
}
void
SamiSeedCompany::setPUpdatedAt(DateTime* pUpdatedAt) {
    this->pUpdatedAt = pUpdatedAt;
}



} /* namespace Swagger */

