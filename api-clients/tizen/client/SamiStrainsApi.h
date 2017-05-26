#ifndef SamiStrainsApi_H_
#define SamiStrainsApi_H_

#include <FNet.h>
#include "SamiApiClient.h"
#include "SamiError.h"

using Tizen::Base::Integer;
#include "SamiInline_response_200_11.h"
#include "SamiStrain.h"
using Tizen::Base::String;

using namespace Tizen::Net::Http;

namespace Swagger {

class SamiStrainsApi {
public:
  SamiStrainsApi();
  virtual ~SamiStrainsApi();

  SamiStrain* 
  getStrainByOcpcWithCompletion(String* ocpc, void (* handler)(SamiStrain*, SamiError*));
  SamiInline_response_200_11* 
  getStrainsWithCompletion(Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_11*, SamiError*));
  static String getBasePath() {
    return L"https://api.otreeba.com/v1";
  }

private:
  SamiApiClient* client;
};


} /* namespace Swagger */

#endif /* SamiStrainsApi_H_ */
