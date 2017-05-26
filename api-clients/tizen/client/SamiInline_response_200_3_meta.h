/*
 * SamiInline_response_200_3_meta.h
 * 
 * Gets the current list of Extracts.
 */

#ifndef SamiInline_response_200_3_meta_H_
#define SamiInline_response_200_3_meta_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiPagination.h"


namespace Swagger {

class SamiInline_response_200_3_meta: public SamiObject {
public:
    SamiInline_response_200_3_meta();
    SamiInline_response_200_3_meta(String* json);
    virtual ~SamiInline_response_200_3_meta();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiInline_response_200_3_meta* fromJson(String* obj);

    SamiPagination* getPPagination();
    void setPPagination(SamiPagination* pPagination);

private:
    SamiPagination* pPagination;
};

} /* namespace Swagger */

#endif /* SamiInline_response_200_3_meta_H_ */
