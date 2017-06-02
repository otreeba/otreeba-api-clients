
#include "SamiMeta.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiMeta::SamiMeta() {
    init();
}

SamiMeta::~SamiMeta() {
    this->cleanup();
}

void
SamiMeta::init() {
    pPagination = null;
}

void
SamiMeta::cleanup() {
    if(pPagination != null) {
        
        delete pPagination;
        pPagination = null;
    }
}


SamiMeta*
SamiMeta::fromJson(String* json) {
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
SamiMeta::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pPaginationKey = new JsonString(L"pagination");
        IJsonValue* pPaginationVal = null;
        pJsonObject->GetValue(pPaginationKey, pPaginationVal);
        if(pPaginationVal != null) {
            
            pPagination = new SamiPagination();
            jsonToValue(pPagination, pPaginationVal, L"SamiPagination", L"SamiPagination");
        }
        delete pPaginationKey;
    }
}

SamiMeta::SamiMeta(String* json) {
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
SamiMeta::asJson ()
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
SamiMeta::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pPaginationKey = new JsonString(L"pagination");
    pJsonObject->Add(pPaginationKey, toJson(getPPagination(), "SamiPagination", ""));

    return pJsonObject;
}

SamiPagination*
SamiMeta::getPPagination() {
    return pPagination;
}
void
SamiMeta::setPPagination(SamiPagination* pPagination) {
    this->pPagination = pPagination;
}



} /* namespace Swagger */

