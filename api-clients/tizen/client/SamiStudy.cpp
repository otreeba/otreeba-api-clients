
#include "SamiStudy.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiStudy::SamiStudy() {
    init();
}

SamiStudy::~SamiStudy() {
    this->cleanup();
}

void
SamiStudy::init() {
    pName = null;
pYear = null;
pDoi = null;
pPubMedId = null;
pSlug = null;
pKeyFindings = null;
pConditions = null;
pCreatedAt = null;
pUpdatedAt = null;
}

void
SamiStudy::cleanup() {
    if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pYear != null) {
        
        delete pYear;
        pYear = null;
    }
if(pDoi != null) {
        
        delete pDoi;
        pDoi = null;
    }
if(pPubMedId != null) {
        
        delete pPubMedId;
        pPubMedId = null;
    }
if(pSlug != null) {
        
        delete pSlug;
        pSlug = null;
    }
if(pKeyFindings != null) {
        
        delete pKeyFindings;
        pKeyFindings = null;
    }
if(pConditions != null) {
        pConditions->RemoveAll(true);
        delete pConditions;
        pConditions = null;
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


SamiStudy*
SamiStudy::fromJson(String* json) {
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
SamiStudy::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pYearKey = new JsonString(L"year");
        IJsonValue* pYearVal = null;
        pJsonObject->GetValue(pYearKey, pYearVal);
        if(pYearVal != null) {
            
            pYear = null;
            jsonToValue(pYear, pYearVal, L"Integer", L"Integer");
        }
        delete pYearKey;
JsonString* pDoiKey = new JsonString(L"doi");
        IJsonValue* pDoiVal = null;
        pJsonObject->GetValue(pDoiKey, pDoiVal);
        if(pDoiVal != null) {
            
            pDoi = new String();
            jsonToValue(pDoi, pDoiVal, L"String", L"String");
        }
        delete pDoiKey;
JsonString* pPubMedIdKey = new JsonString(L"pubMedId");
        IJsonValue* pPubMedIdVal = null;
        pJsonObject->GetValue(pPubMedIdKey, pPubMedIdVal);
        if(pPubMedIdVal != null) {
            
            pPubMedId = new String();
            jsonToValue(pPubMedId, pPubMedIdVal, L"String", L"String");
        }
        delete pPubMedIdKey;
JsonString* pSlugKey = new JsonString(L"slug");
        IJsonValue* pSlugVal = null;
        pJsonObject->GetValue(pSlugKey, pSlugVal);
        if(pSlugVal != null) {
            
            pSlug = new String();
            jsonToValue(pSlug, pSlugVal, L"String", L"String");
        }
        delete pSlugKey;
JsonString* pKeyFindingsKey = new JsonString(L"keyFindings");
        IJsonValue* pKeyFindingsVal = null;
        pJsonObject->GetValue(pKeyFindingsKey, pKeyFindingsVal);
        if(pKeyFindingsVal != null) {
            
            pKeyFindings = new String();
            jsonToValue(pKeyFindings, pKeyFindingsVal, L"String", L"String");
        }
        delete pKeyFindingsKey;
JsonString* pConditionsKey = new JsonString(L"conditions");
        IJsonValue* pConditionsVal = null;
        pJsonObject->GetValue(pConditionsKey, pConditionsVal);
        if(pConditionsVal != null) {
            pConditions = new ArrayList();
            
            jsonToValue(pConditions, pConditionsVal, L"IList", L"SamiCondition");
        }
        delete pConditionsKey;
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

SamiStudy::SamiStudy(String* json) {
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
SamiStudy::asJson ()
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
SamiStudy::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pYearKey = new JsonString(L"year");
    pJsonObject->Add(pYearKey, toJson(getPYear(), "Integer", ""));

    JsonString *pDoiKey = new JsonString(L"doi");
    pJsonObject->Add(pDoiKey, toJson(getPDoi(), "String", ""));

    JsonString *pPubMedIdKey = new JsonString(L"pubMedId");
    pJsonObject->Add(pPubMedIdKey, toJson(getPPubMedId(), "String", ""));

    JsonString *pSlugKey = new JsonString(L"slug");
    pJsonObject->Add(pSlugKey, toJson(getPSlug(), "String", ""));

    JsonString *pKeyFindingsKey = new JsonString(L"keyFindings");
    pJsonObject->Add(pKeyFindingsKey, toJson(getPKeyFindings(), "String", ""));

    JsonString *pConditionsKey = new JsonString(L"conditions");
    pJsonObject->Add(pConditionsKey, toJson(getPConditions(), "SamiCondition", "array"));

    JsonString *pCreatedAtKey = new JsonString(L"createdAt");
    pJsonObject->Add(pCreatedAtKey, toJson(getPCreatedAt(), "DateTime", ""));

    JsonString *pUpdatedAtKey = new JsonString(L"updatedAt");
    pJsonObject->Add(pUpdatedAtKey, toJson(getPUpdatedAt(), "DateTime", ""));

    return pJsonObject;
}

String*
SamiStudy::getPName() {
    return pName;
}
void
SamiStudy::setPName(String* pName) {
    this->pName = pName;
}

Integer*
SamiStudy::getPYear() {
    return pYear;
}
void
SamiStudy::setPYear(Integer* pYear) {
    this->pYear = pYear;
}

String*
SamiStudy::getPDoi() {
    return pDoi;
}
void
SamiStudy::setPDoi(String* pDoi) {
    this->pDoi = pDoi;
}

String*
SamiStudy::getPPubMedId() {
    return pPubMedId;
}
void
SamiStudy::setPPubMedId(String* pPubMedId) {
    this->pPubMedId = pPubMedId;
}

String*
SamiStudy::getPSlug() {
    return pSlug;
}
void
SamiStudy::setPSlug(String* pSlug) {
    this->pSlug = pSlug;
}

String*
SamiStudy::getPKeyFindings() {
    return pKeyFindings;
}
void
SamiStudy::setPKeyFindings(String* pKeyFindings) {
    this->pKeyFindings = pKeyFindings;
}

IList*
SamiStudy::getPConditions() {
    return pConditions;
}
void
SamiStudy::setPConditions(IList* pConditions) {
    this->pConditions = pConditions;
}

DateTime*
SamiStudy::getPCreatedAt() {
    return pCreatedAt;
}
void
SamiStudy::setPCreatedAt(DateTime* pCreatedAt) {
    this->pCreatedAt = pCreatedAt;
}

DateTime*
SamiStudy::getPUpdatedAt() {
    return pUpdatedAt;
}
void
SamiStudy::setPUpdatedAt(DateTime* pUpdatedAt) {
    this->pUpdatedAt = pUpdatedAt;
}



} /* namespace Swagger */

