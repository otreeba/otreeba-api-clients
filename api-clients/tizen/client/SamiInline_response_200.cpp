
#include "SamiInline_response_200.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiInline_response_200::SamiInline_response_200() {
    init();
}

SamiInline_response_200::~SamiInline_response_200() {
    this->cleanup();
}

void
SamiInline_response_200::init() {
    pMeta = null;
}

void
SamiInline_response_200::cleanup() {
    if(pMeta != null) {
        
        delete pMeta;
        pMeta = null;
    }
}


SamiInline_response_200*
SamiInline_response_200::fromJson(String* json) {
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
SamiInline_response_200::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pMetaKey = new JsonString(L"meta");
        IJsonValue* pMetaVal = null;
        pJsonObject->GetValue(pMetaKey, pMetaVal);
        if(pMetaVal != null) {
            
            pMeta = new SamiInline_response_200_meta();
            jsonToValue(pMeta, pMetaVal, L"SamiInline_response_200_meta", L"SamiInline_response_200_meta");
        }
        delete pMetaKey;
    }
}

SamiInline_response_200::SamiInline_response_200(String* json) {
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
SamiInline_response_200::asJson ()
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
SamiInline_response_200::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pMetaKey = new JsonString(L"meta");
    pJsonObject->Add(pMetaKey, toJson(getPMeta(), "SamiInline_response_200_meta", ""));

    return pJsonObject;
}

SamiInline_response_200_meta*
SamiInline_response_200::getPMeta() {
    return pMeta;
}
void
SamiInline_response_200::setPMeta(SamiInline_response_200_meta* pMeta) {
    this->pMeta = pMeta;
}



} /* namespace Swagger */

