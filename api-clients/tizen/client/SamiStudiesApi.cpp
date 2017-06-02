#include "SamiStudiesApi.h"

#include "SamiHelpers.h"
#include "SamiError.h"

using namespace Tizen::Base;

namespace Swagger {


SamiStudiesApi::SamiStudiesApi() {

}

SamiStudiesApi::~SamiStudiesApi() {

}

void
getStudiesProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiInline_response_200_12* out = new SamiInline_response_200_12();
    jsonToValue(out, pJson, L"SamiInline_response_200_12*", L"SamiInline_response_200_12");

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

SamiInline_response_200_12* 
SamiStudiesApi::getStudiesWithCompletion(Integer* page, Integer* count, String* sort, void (* success)(SamiInline_response_200_12*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getStudiesProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
    queryParams->Add(new String("page"), page);

    queryParams->Add(new String("count"), count);

    queryParams->Add(new String("sort"), sort);

  String* mBody = null;


  String url(L"/studies");


  client->execute(SamiStudiesApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getStudiesByConditionProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiInline_response_200_13* out = new SamiInline_response_200_13();
    jsonToValue(out, pJson, L"SamiInline_response_200_13*", L"SamiInline_response_200_13");

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

SamiInline_response_200_13* 
SamiStudiesApi::getStudiesByConditionWithCompletion(String* conditionSlug, Integer* page, Integer* count, String* sort, void (* success)(SamiInline_response_200_13*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getStudiesByConditionProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
    queryParams->Add(new String("page"), page);

    queryParams->Add(new String("count"), count);

    queryParams->Add(new String("sort"), sort);

  String* mBody = null;


  String url(L"/studies/conditions/{conditionSlug}");

  String s_conditionSlug(L"{");
  s_conditionSlug.Append(L"conditionSlug");
  s_conditionSlug.Append(L"}");
  url.Replace(s_conditionSlug, stringify(conditionSlug, L"String*"));

  client->execute(SamiStudiesApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getStudiesConditionsProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiObject* out = null;
    jsonToValue(out, pJson, L"SamiObject*", L"SamiObject");

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

SamiObject* 
SamiStudiesApi::getStudiesConditionsWithCompletion(String* sort, void (* success)(SamiObject*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getStudiesConditionsProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
    queryParams->Add(new String("sort"), sort);

  String* mBody = null;


  String url(L"/studies/conditions");


  client->execute(SamiStudiesApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getStudyByIdentifierProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiStudy* out = new SamiStudy();
    jsonToValue(out, pJson, L"SamiStudy*", L"SamiStudy");

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

SamiStudy* 
SamiStudiesApi::getStudyByIdentifierWithCompletion(String* identifierType, String* identifier, void (* success)(SamiStudy*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getStudyByIdentifierProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/studies/{identifierType}/{identifier}");

  String s_identifierType(L"{");
  s_identifierType.Append(L"identifierType");
  s_identifierType.Append(L"}");
  url.Replace(s_identifierType, stringify(identifierType, L"String*"));
  String s_identifier(L"{");
  s_identifier.Append(L"identifier");
  s_identifier.Append(L"}");
  url.Replace(s_identifier, stringify(identifier, L"String*"));

  client->execute(SamiStudiesApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}


} /* namespace Swagger */
