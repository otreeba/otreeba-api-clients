#include "SamiSeedCompaniesApi.h"

#include "SamiHelpers.h"
#include "SamiError.h"

using namespace Tizen::Base;

namespace Swagger {


SamiSeedCompaniesApi::SamiSeedCompaniesApi() {

}

SamiSeedCompaniesApi::~SamiSeedCompaniesApi() {

}

void
getSeedCompaniesProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiInline_response_200* out = new SamiInline_response_200();
    jsonToValue(out, pJson, L"SamiInline_response_200*", L"SamiInline_response_200");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiInline_response_200* 
SamiSeedCompaniesApi::getSeedCompaniesWithCompletion(Integer* page, Integer* count, String* sort, void (* success)(SamiInline_response_200*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getSeedCompaniesProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
    queryParams->Add(new String("page"), page);

    queryParams->Add(new String("count"), count);

    queryParams->Add(new String("sort"), sort);

  String* mBody = null;


  String url(L"/seed-companies");


  client->execute(SamiSeedCompaniesApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getSeedCompanyByOcpcProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiSeedCompany* out = new SamiSeedCompany();
    jsonToValue(out, pJson, L"SamiSeedCompany*", L"SamiSeedCompany");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiSeedCompany* 
SamiSeedCompaniesApi::getSeedCompanyByOcpcWithCompletion(String* ocpc, void (* success)(SamiSeedCompany*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getSeedCompanyByOcpcProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/seed-companies/{ocpc}");

  String s_ocpc(L"{");
  s_ocpc.Append(L"ocpc");
  s_ocpc.Append(L"}");
  url.Replace(s_ocpc, stringify(ocpc, L"String*"));

  client->execute(SamiSeedCompaniesApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getSeedCompanyStrainsByOcpcProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiInline_response_200_1* out = new SamiInline_response_200_1();
    jsonToValue(out, pJson, L"SamiInline_response_200_1*", L"SamiInline_response_200_1");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiInline_response_200_1* 
SamiSeedCompaniesApi::getSeedCompanyStrainsByOcpcWithCompletion(String* ocpc, Integer* page, Integer* count, void (* success)(SamiInline_response_200_1*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getSeedCompanyStrainsByOcpcProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
    queryParams->Add(new String("page"), page);

    queryParams->Add(new String("count"), count);

  String* mBody = null;


  String url(L"/seed-companies/{ocpc}/strains");

  String s_ocpc(L"{");
  s_ocpc.Append(L"ocpc");
  s_ocpc.Append(L"}");
  url.Replace(s_ocpc, stringify(ocpc, L"String*"));

  client->execute(SamiSeedCompaniesApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}


} /* namespace Swagger */
