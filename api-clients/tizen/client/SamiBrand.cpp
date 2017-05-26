
#include "SamiBrand.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiBrand::SamiBrand() {
    init();
}

SamiBrand::~SamiBrand() {
    this->cleanup();
}

void
SamiBrand::init() {
    pName = null;
pOcpc = null;
pLink = null;
pQr = null;
pUrl = null;
pImage = null;
pFlowers = null;
pExtracts = null;
pEdibles = null;
pProducts = null;
pCreatedAt = null;
pUpdatedAt = null;
}

void
SamiBrand::cleanup() {
    if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pOcpc != null) {
        
        delete pOcpc;
        pOcpc = null;
    }
if(pLink != null) {
        
        delete pLink;
        pLink = null;
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
if(pFlowers != null) {
        pFlowers->RemoveAll(true);
        delete pFlowers;
        pFlowers = null;
    }
if(pExtracts != null) {
        pExtracts->RemoveAll(true);
        delete pExtracts;
        pExtracts = null;
    }
if(pEdibles != null) {
        pEdibles->RemoveAll(true);
        delete pEdibles;
        pEdibles = null;
    }
if(pProducts != null) {
        pProducts->RemoveAll(true);
        delete pProducts;
        pProducts = null;
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


SamiBrand*
SamiBrand::fromJson(String* json) {
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
SamiBrand::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pLinkKey = new JsonString(L"link");
        IJsonValue* pLinkVal = null;
        pJsonObject->GetValue(pLinkKey, pLinkVal);
        if(pLinkVal != null) {
            
            pLink = new String();
            jsonToValue(pLink, pLinkVal, L"String", L"String");
        }
        delete pLinkKey;
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
JsonString* pFlowersKey = new JsonString(L"flowers");
        IJsonValue* pFlowersVal = null;
        pJsonObject->GetValue(pFlowersKey, pFlowersVal);
        if(pFlowersVal != null) {
            pFlowers = new ArrayList();
            
            jsonToValue(pFlowers, pFlowersVal, L"IList", L"String");
        }
        delete pFlowersKey;
JsonString* pExtractsKey = new JsonString(L"extracts");
        IJsonValue* pExtractsVal = null;
        pJsonObject->GetValue(pExtractsKey, pExtractsVal);
        if(pExtractsVal != null) {
            pExtracts = new ArrayList();
            
            jsonToValue(pExtracts, pExtractsVal, L"IList", L"String");
        }
        delete pExtractsKey;
JsonString* pEdiblesKey = new JsonString(L"edibles");
        IJsonValue* pEdiblesVal = null;
        pJsonObject->GetValue(pEdiblesKey, pEdiblesVal);
        if(pEdiblesVal != null) {
            pEdibles = new ArrayList();
            
            jsonToValue(pEdibles, pEdiblesVal, L"IList", L"String");
        }
        delete pEdiblesKey;
JsonString* pProductsKey = new JsonString(L"products");
        IJsonValue* pProductsVal = null;
        pJsonObject->GetValue(pProductsKey, pProductsVal);
        if(pProductsVal != null) {
            pProducts = new ArrayList();
            
            jsonToValue(pProducts, pProductsVal, L"IList", L"String");
        }
        delete pProductsKey;
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

SamiBrand::SamiBrand(String* json) {
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
SamiBrand::asJson ()
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
SamiBrand::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pOcpcKey = new JsonString(L"ocpc");
    pJsonObject->Add(pOcpcKey, toJson(getPOcpc(), "String", ""));

    JsonString *pLinkKey = new JsonString(L"link");
    pJsonObject->Add(pLinkKey, toJson(getPLink(), "String", ""));

    JsonString *pQrKey = new JsonString(L"qr");
    pJsonObject->Add(pQrKey, toJson(getPQr(), "String", ""));

    JsonString *pUrlKey = new JsonString(L"url");
    pJsonObject->Add(pUrlKey, toJson(getPUrl(), "String", ""));

    JsonString *pImageKey = new JsonString(L"image");
    pJsonObject->Add(pImageKey, toJson(getPImage(), "String", ""));

    JsonString *pFlowersKey = new JsonString(L"flowers");
    pJsonObject->Add(pFlowersKey, toJson(getPFlowers(), "String", "array"));

    JsonString *pExtractsKey = new JsonString(L"extracts");
    pJsonObject->Add(pExtractsKey, toJson(getPExtracts(), "String", "array"));

    JsonString *pEdiblesKey = new JsonString(L"edibles");
    pJsonObject->Add(pEdiblesKey, toJson(getPEdibles(), "String", "array"));

    JsonString *pProductsKey = new JsonString(L"products");
    pJsonObject->Add(pProductsKey, toJson(getPProducts(), "String", "array"));

    JsonString *pCreatedAtKey = new JsonString(L"createdAt");
    pJsonObject->Add(pCreatedAtKey, toJson(getPCreatedAt(), "DateTime", ""));

    JsonString *pUpdatedAtKey = new JsonString(L"updatedAt");
    pJsonObject->Add(pUpdatedAtKey, toJson(getPUpdatedAt(), "DateTime", ""));

    return pJsonObject;
}

String*
SamiBrand::getPName() {
    return pName;
}
void
SamiBrand::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiBrand::getPOcpc() {
    return pOcpc;
}
void
SamiBrand::setPOcpc(String* pOcpc) {
    this->pOcpc = pOcpc;
}

String*
SamiBrand::getPLink() {
    return pLink;
}
void
SamiBrand::setPLink(String* pLink) {
    this->pLink = pLink;
}

String*
SamiBrand::getPQr() {
    return pQr;
}
void
SamiBrand::setPQr(String* pQr) {
    this->pQr = pQr;
}

String*
SamiBrand::getPUrl() {
    return pUrl;
}
void
SamiBrand::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}

String*
SamiBrand::getPImage() {
    return pImage;
}
void
SamiBrand::setPImage(String* pImage) {
    this->pImage = pImage;
}

IList*
SamiBrand::getPFlowers() {
    return pFlowers;
}
void
SamiBrand::setPFlowers(IList* pFlowers) {
    this->pFlowers = pFlowers;
}

IList*
SamiBrand::getPExtracts() {
    return pExtracts;
}
void
SamiBrand::setPExtracts(IList* pExtracts) {
    this->pExtracts = pExtracts;
}

IList*
SamiBrand::getPEdibles() {
    return pEdibles;
}
void
SamiBrand::setPEdibles(IList* pEdibles) {
    this->pEdibles = pEdibles;
}

IList*
SamiBrand::getPProducts() {
    return pProducts;
}
void
SamiBrand::setPProducts(IList* pProducts) {
    this->pProducts = pProducts;
}

DateTime*
SamiBrand::getPCreatedAt() {
    return pCreatedAt;
}
void
SamiBrand::setPCreatedAt(DateTime* pCreatedAt) {
    this->pCreatedAt = pCreatedAt;
}

DateTime*
SamiBrand::getPUpdatedAt() {
    return pUpdatedAt;
}
void
SamiBrand::setPUpdatedAt(DateTime* pUpdatedAt) {
    this->pUpdatedAt = pUpdatedAt;
}



} /* namespace Swagger */

