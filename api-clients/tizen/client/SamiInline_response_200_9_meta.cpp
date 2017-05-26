
#include "SamiInline_response_200_9_meta.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiInline_response_200_9_meta::SamiInline_response_200_9_meta() {
    init();
}

SamiInline_response_200_9_meta::~SamiInline_response_200_9_meta() {
    this->cleanup();
}

void
SamiInline_response_200_9_meta::init() {
    pPagination = null;
}

void
SamiInline_response_200_9_meta::cleanup() {
    if(pPagination != null) {
        
        delete pPagination;
        pPagination = null;
    }
}


SamiInline_response_200_9_meta*
SamiInline_response_200_9_meta::fromJson(String* json) {
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
SamiInline_response_200_9_meta::fromJsonObject(IJsonValue* pJson) {
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

SamiInline_response_200_9_meta::SamiInline_response_200_9_meta(String* json) {
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
SamiInline_response_200_9_meta::asJson ()
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
SamiInline_response_200_9_meta::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pPaginationKey = new JsonString(L"pagination");
    pJsonObject->Add(pPaginationKey, toJson(getPPagination(), "SamiPagination", ""));

    return pJsonObject;
}

SamiPagination*
SamiInline_response_200_9_meta::getPPagination() {
    return pPagination;
}
void
SamiInline_response_200_9_meta::setPPagination(SamiPagination* pPagination) {
    this->pPagination = pPagination;
}



} /* namespace Swagger */

