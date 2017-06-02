/*
 * SamiCondition.h
 * 
 * 
 */

#ifndef SamiCondition_H_
#define SamiCondition_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::DateTime;
using Tizen::Base::String;


namespace Swagger {

class SamiCondition: public SamiObject {
public:
    SamiCondition();
    SamiCondition(String* json);
    virtual ~SamiCondition();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiCondition* fromJson(String* obj);

    String* getPName();
    void setPName(String* pName);
    String* getPSlug();
    void setPSlug(String* pSlug);
    String* getPDescription();
    void setPDescription(String* pDescription);
    DateTime* getPCreatedAt();
    void setPCreatedAt(DateTime* pCreatedAt);
    DateTime* getPUpdatedAt();
    void setPUpdatedAt(DateTime* pUpdatedAt);

private:
    String* pName;
String* pSlug;
String* pDescription;
DateTime* pCreatedAt;
DateTime* pUpdatedAt;
};

} /* namespace Swagger */

#endif /* SamiCondition_H_ */
