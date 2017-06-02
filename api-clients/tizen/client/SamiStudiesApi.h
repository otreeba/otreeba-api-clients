#ifndef SamiStudiesApi_H_
#define SamiStudiesApi_H_

#include <FNet.h>
#include "SamiApiClient.h"
#include "SamiError.h"

using Tizen::Base::Integer;
#include "SamiInline_response_200_12.h"
#include "SamiInline_response_200_13.h"
#include "SamiObject.h"
#include "SamiStudy.h"
using Tizen::Base::String;

using namespace Tizen::Net::Http;

namespace Swagger {

class SamiStudiesApi {
public:
  SamiStudiesApi();
  virtual ~SamiStudiesApi();

  SamiInline_response_200_12* 
  getStudiesWithCompletion(Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_12*, SamiError*));
  SamiInline_response_200_13* 
  getStudiesByConditionWithCompletion(String* conditionSlug, Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_13*, SamiError*));
  SamiObject* 
  getStudiesConditionsWithCompletion(String* sort, void (* handler)(SamiObject*, SamiError*));
  SamiStudy* 
  getStudyByIdentifierWithCompletion(String* identifierType, String* identifier, void (* handler)(SamiStudy*, SamiError*));
  static String getBasePath() {
    return L"https://api.otreeba.com/v1";
  }

private:
  SamiApiClient* client;
};


} /* namespace Swagger */

#endif /* SamiStudiesApi_H_ */
