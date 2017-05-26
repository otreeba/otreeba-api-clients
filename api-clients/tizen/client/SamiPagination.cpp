
#include "SamiPagination.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiPagination::SamiPagination() {
    init();
}

SamiPagination::~SamiPagination() {
    this->cleanup();
}

void
SamiPagination::init() {
    pTotal = null;
pCount = null;
pPer_page = null;
pCurrent_page = null;
pTotal_pages = null;
pLinks = null;
}

void
SamiPagination::cleanup() {
    if(pTotal != null) {
        
        delete pTotal;
        pTotal = null;
    }
if(pCount != null) {
        
        delete pCount;
        pCount = null;
    }
if(pPer_page != null) {
        
        delete pPer_page;
        pPer_page = null;
    }
if(pCurrent_page != null) {
        
        delete pCurrent_page;
        pCurrent_page = null;
    }
if(pTotal_pages != null) {
        
        delete pTotal_pages;
        pTotal_pages = null;
    }
if(pLinks != null) {
        
        delete pLinks;
        pLinks = null;
    }
}


SamiPagination*
SamiPagination::fromJson(String* json) {
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
SamiPagination::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pTotalKey = new JsonString(L"total");
        IJsonValue* pTotalVal = null;
        pJsonObject->GetValue(pTotalKey, pTotalVal);
        if(pTotalVal != null) {
            
            pTotal = null;
            jsonToValue(pTotal, pTotalVal, L"Integer", L"Integer");
        }
        delete pTotalKey;
JsonString* pCountKey = new JsonString(L"count");
        IJsonValue* pCountVal = null;
        pJsonObject->GetValue(pCountKey, pCountVal);
        if(pCountVal != null) {
            
            pCount = null;
            jsonToValue(pCount, pCountVal, L"Integer", L"Integer");
        }
        delete pCountKey;
JsonString* pPer_pageKey = new JsonString(L"per_page");
        IJsonValue* pPer_pageVal = null;
        pJsonObject->GetValue(pPer_pageKey, pPer_pageVal);
        if(pPer_pageVal != null) {
            
            pPer_page = null;
            jsonToValue(pPer_page, pPer_pageVal, L"Integer", L"Integer");
        }
        delete pPer_pageKey;
JsonString* pCurrent_pageKey = new JsonString(L"current_page");
        IJsonValue* pCurrent_pageVal = null;
        pJsonObject->GetValue(pCurrent_pageKey, pCurrent_pageVal);
        if(pCurrent_pageVal != null) {
            
            pCurrent_page = null;
            jsonToValue(pCurrent_page, pCurrent_pageVal, L"Integer", L"Integer");
        }
        delete pCurrent_pageKey;
JsonString* pTotal_pagesKey = new JsonString(L"total_pages");
        IJsonValue* pTotal_pagesVal = null;
        pJsonObject->GetValue(pTotal_pagesKey, pTotal_pagesVal);
        if(pTotal_pagesVal != null) {
            
            pTotal_pages = null;
            jsonToValue(pTotal_pages, pTotal_pagesVal, L"Integer", L"Integer");
        }
        delete pTotal_pagesKey;
JsonString* pLinksKey = new JsonString(L"links");
        IJsonValue* pLinksVal = null;
        pJsonObject->GetValue(pLinksKey, pLinksVal);
        if(pLinksVal != null) {
            
            pLinks = null;
            jsonToValue(pLinks, pLinksVal, L"SamiObject", L"SamiObject");
        }
        delete pLinksKey;
    }
}

SamiPagination::SamiPagination(String* json) {
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
SamiPagination::asJson ()
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
SamiPagination::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pTotalKey = new JsonString(L"total");
    pJsonObject->Add(pTotalKey, toJson(getPTotal(), "Integer", ""));

    JsonString *pCountKey = new JsonString(L"count");
    pJsonObject->Add(pCountKey, toJson(getPCount(), "Integer", ""));

    JsonString *pPer_pageKey = new JsonString(L"per_page");
    pJsonObject->Add(pPer_pageKey, toJson(getPPerPage(), "Integer", ""));

    JsonString *pCurrent_pageKey = new JsonString(L"current_page");
    pJsonObject->Add(pCurrent_pageKey, toJson(getPCurrentPage(), "Integer", ""));

    JsonString *pTotal_pagesKey = new JsonString(L"total_pages");
    pJsonObject->Add(pTotal_pagesKey, toJson(getPTotalPages(), "Integer", ""));

    JsonString *pLinksKey = new JsonString(L"links");
    pJsonObject->Add(pLinksKey, toJson(getPLinks(), "SamiObject", ""));

    return pJsonObject;
}

Integer*
SamiPagination::getPTotal() {
    return pTotal;
}
void
SamiPagination::setPTotal(Integer* pTotal) {
    this->pTotal = pTotal;
}

Integer*
SamiPagination::getPCount() {
    return pCount;
}
void
SamiPagination::setPCount(Integer* pCount) {
    this->pCount = pCount;
}

Integer*
SamiPagination::getPPerPage() {
    return pPer_page;
}
void
SamiPagination::setPPerPage(Integer* pPer_page) {
    this->pPer_page = pPer_page;
}

Integer*
SamiPagination::getPCurrentPage() {
    return pCurrent_page;
}
void
SamiPagination::setPCurrentPage(Integer* pCurrent_page) {
    this->pCurrent_page = pCurrent_page;
}

Integer*
SamiPagination::getPTotalPages() {
    return pTotal_pages;
}
void
SamiPagination::setPTotalPages(Integer* pTotal_pages) {
    this->pTotal_pages = pTotal_pages;
}

SamiObject*
SamiPagination::getPLinks() {
    return pLinks;
}
void
SamiPagination::setPLinks(SamiObject* pLinks) {
    this->pLinks = pLinks;
}



} /* namespace Swagger */

