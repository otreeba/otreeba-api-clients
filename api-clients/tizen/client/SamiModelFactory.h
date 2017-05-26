#ifndef ModelFactory_H_
#define ModelFactory_H_

#include "SamiObject.h"

#include "SamiBrand.h"
#include "SamiEdible.h"
#include "SamiError.h"
#include "SamiExtract.h"
#include "SamiFlower.h"
#include "SamiInline_response_200.h"
#include "SamiInline_response_200_1.h"
#include "SamiInline_response_200_10.h"
#include "SamiInline_response_200_10_meta.h"
#include "SamiInline_response_200_11.h"
#include "SamiInline_response_200_11_meta.h"
#include "SamiInline_response_200_1_meta.h"
#include "SamiInline_response_200_2.h"
#include "SamiInline_response_200_2_meta.h"
#include "SamiInline_response_200_3.h"
#include "SamiInline_response_200_3_meta.h"
#include "SamiInline_response_200_4.h"
#include "SamiInline_response_200_4_meta.h"
#include "SamiInline_response_200_5.h"
#include "SamiInline_response_200_5_meta.h"
#include "SamiInline_response_200_6.h"
#include "SamiInline_response_200_6_meta.h"
#include "SamiInline_response_200_7.h"
#include "SamiInline_response_200_7_meta.h"
#include "SamiInline_response_200_8.h"
#include "SamiInline_response_200_8_meta.h"
#include "SamiInline_response_200_9.h"
#include "SamiInline_response_200_9_meta.h"
#include "SamiInline_response_200_meta.h"
#include "SamiPagination.h"
#include "SamiProduct.h"
#include "SamiSeedCompany.h"
#include "SamiStrain.h"

namespace Swagger {
  void*
  create(String type) {
    if(type.Equals(L"SamiBrand", true)) {
      return new SamiBrand();
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
    if(type.Equals(L"SamiInline_response_200_10_meta", true)) {
      return new SamiInline_response_200_10_meta();
    }
    if(type.Equals(L"SamiInline_response_200_11", true)) {
      return new SamiInline_response_200_11();
    }
    if(type.Equals(L"SamiInline_response_200_11_meta", true)) {
      return new SamiInline_response_200_11_meta();
    }
    if(type.Equals(L"SamiInline_response_200_1_meta", true)) {
      return new SamiInline_response_200_1_meta();
    }
    if(type.Equals(L"SamiInline_response_200_2", true)) {
      return new SamiInline_response_200_2();
    }
    if(type.Equals(L"SamiInline_response_200_2_meta", true)) {
      return new SamiInline_response_200_2_meta();
    }
    if(type.Equals(L"SamiInline_response_200_3", true)) {
      return new SamiInline_response_200_3();
    }
    if(type.Equals(L"SamiInline_response_200_3_meta", true)) {
      return new SamiInline_response_200_3_meta();
    }
    if(type.Equals(L"SamiInline_response_200_4", true)) {
      return new SamiInline_response_200_4();
    }
    if(type.Equals(L"SamiInline_response_200_4_meta", true)) {
      return new SamiInline_response_200_4_meta();
    }
    if(type.Equals(L"SamiInline_response_200_5", true)) {
      return new SamiInline_response_200_5();
    }
    if(type.Equals(L"SamiInline_response_200_5_meta", true)) {
      return new SamiInline_response_200_5_meta();
    }
    if(type.Equals(L"SamiInline_response_200_6", true)) {
      return new SamiInline_response_200_6();
    }
    if(type.Equals(L"SamiInline_response_200_6_meta", true)) {
      return new SamiInline_response_200_6_meta();
    }
    if(type.Equals(L"SamiInline_response_200_7", true)) {
      return new SamiInline_response_200_7();
    }
    if(type.Equals(L"SamiInline_response_200_7_meta", true)) {
      return new SamiInline_response_200_7_meta();
    }
    if(type.Equals(L"SamiInline_response_200_8", true)) {
      return new SamiInline_response_200_8();
    }
    if(type.Equals(L"SamiInline_response_200_8_meta", true)) {
      return new SamiInline_response_200_8_meta();
    }
    if(type.Equals(L"SamiInline_response_200_9", true)) {
      return new SamiInline_response_200_9();
    }
    if(type.Equals(L"SamiInline_response_200_9_meta", true)) {
      return new SamiInline_response_200_9_meta();
    }
    if(type.Equals(L"SamiInline_response_200_meta", true)) {
      return new SamiInline_response_200_meta();
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
