#ifndef SamiEdiblesApi_H_
#define SamiEdiblesApi_H_

#include <FNet.h>
#include "SamiApiClient.h"
#include "SamiError.h"

using Tizen::Base::Integer;
#include "SamiEdible.h"
#include "SamiInline_response_200_2.h"
using Tizen::Base::String;

using namespace Tizen::Net::Http;

namespace Swagger {

class SamiEdiblesApi {
public:
  SamiEdiblesApi();
  virtual ~SamiEdiblesApi();

  SamiEdible* 
  getEdibleByOcpcWithCompletion(String* ocpc, void (* handler)(SamiEdible*, SamiError*));
  SamiInline_response_200_2* 
  getEdiblesWithCompletion(Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_2*, SamiError*));
  static String getBasePath() {
    return L"https://api.otreeba.com/v1";
  }

private:
  SamiApiClient* client;
};


} /* namespace Swagger */

#endif /* SamiEdiblesApi_H_ */
