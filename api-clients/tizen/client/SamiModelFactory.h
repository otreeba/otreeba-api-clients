#ifndef ModelFactory_H_
#define ModelFactory_H_

#include "SamiObject.h"

#include "SamiBrand.h"
#include "SamiCondition.h"
#include "SamiEdible.h"
#include "SamiError.h"
#include "SamiExtract.h"
#include "SamiFlower.h"
#include "SamiInline_response_200.h"
#include "SamiInline_response_200_1.h"
#include "SamiInline_response_200_10.h"
#include "SamiInline_response_200_11.h"
#include "SamiInline_response_200_12.h"
#include "SamiInline_response_200_13.h"
#include "SamiInline_response_200_2.h"
#include "SamiInline_response_200_3.h"
#include "SamiInline_response_200_4.h"
#include "SamiInline_response_200_5.h"
#include "SamiInline_response_200_6.h"
#include "SamiInline_response_200_7.h"
#include "SamiInline_response_200_8.h"
#include "SamiInline_response_200_9.h"
#include "SamiInline_response_200_meta.h"
#include "SamiMeta.h"
#include "SamiPagination.h"
#include "SamiProduct.h"
#include "SamiSeedCompany.h"
#include "SamiStrain.h"
#include "SamiStudy.h"

namespace Swagger {
  void*
  create(String type) {
    if(type.Equals(L"SamiBrand", true)) {
      return new SamiBrand();
    }
    if(type.Equals(L"SamiCondition", true)) {
      return new SamiCondition();
    }
    if(type.Equals(L"SamiEdible", true)) {
      return new SamiEdible();
    }
    if(type.Equals(L"SamiError", true)) {
      return new SamiError();
    }
    if(type.Equals(L"SamiExtract", true)) {
      return new SamiExtract();
    }
    if(type.Equals(L"SamiFlower", true)) {
      return new SamiFlower();
    }
    if(type.Equals(L"SamiInline_response_200", true)) {
      return new SamiInline_response_200();
    }
    if(type.Equals(L"SamiInline_response_200_1", true)) {
      return new SamiInline_response_200_1();
    }
    if(type.Equals(L"SamiInline_response_200_10", true)) {
      return new SamiInline_response_200_10();
    }
    if(type.Equals(L"SamiInline_response_200_11", true)) {
      return new SamiInline_response_200_11();
    }
    if(type.Equals(L"SamiInline_response_200_12", true)) {
      return new SamiInline_response_200_12();
    }
    if(type.Equals(L"SamiInline_response_200_13", true)) {
      return new SamiInline_response_200_13();
    }
    if(type.Equals(L"SamiInline_response_200_2", true)) {
      return new SamiInline_response_200_2();
    }
    if(type.Equals(L"SamiInline_response_200_3", true)) {
      return new SamiInline_response_200_3();
    }
    if(type.Equals(L"SamiInline_response_200_4", true)) {
      return new SamiInline_response_200_4();
    }
    if(type.Equals(L"SamiInline_response_200_5", true)) {
      return new SamiInline_response_200_5();
    }
    if(type.Equals(L"SamiInline_response_200_6", true)) {
      return new SamiInline_response_200_6();
    }
    if(type.Equals(L"SamiInline_response_200_7", true)) {
      return new SamiInline_response_200_7();
    }
    if(type.Equals(L"SamiInline_response_200_8", true)) {
      return new SamiInline_response_200_8();
    }
    if(type.Equals(L"SamiInline_response_200_9", true)) {
      return new SamiInline_response_200_9();
    }
    if(type.Equals(L"SamiInline_response_200_meta", true)) {
      return new SamiInline_response_200_meta();
    }
    if(type.Equals(L"SamiMeta", true)) {
      return new SamiMeta();
    }
    if(type.Equals(L"SamiPagination", true)) {
      return new SamiPagination();
    }
    if(type.Equals(L"SamiProduct", true)) {
      return new SamiProduct();
    }
    if(type.Equals(L"SamiSeedCompany", true)) {
      return new SamiSeedCompany();
    }
    if(type.Equals(L"SamiStrain", true)) {
      return new SamiStrain();
    }
    if(type.Equals(L"SamiStudy", true)) {
      return new SamiStudy();
    }
    
    if(type.Equals(L"String", true)) {
      return new String();
    }
    if(type.Equals(L"Integer", true)) {
      return new Integer();
    }
    if(type.Equals(L"Long", true)) {
      return new Long();
    }
    if(type.Equals(L"DateTime", true)) {
      return new DateTime();
    }
    return null;
  }
} /* namespace Swagger */

#endif /* ModelFactory_H_ */
