/*
 * SamiStudy.h
 * 
 * 
 */

#ifndef SamiStudy_H_
#define SamiStudy_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiCondition.h"
using Tizen::Base::Collection::IList;
using Tizen::Base::DateTime;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiStudy: public SamiObject {
public:
    SamiStudy();
    SamiStudy(String* json);
    virtual ~SamiStudy();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiStudy* fromJson(String* obj);

    String* getPName();
    void setPName(String* pName);
    Integer* getPYear();
    void setPYear(Integer* pYear);
    String* getPDoi();
    void setPDoi(String* pDoi);
    String* getPPubMedId();
    void setPPubMedId(String* pPubMedId);
    String* getPSlug();
    void setPSlug(String* pSlug);
    String* getPKeyFindings();
    void setPKeyFindings(String* pKeyFindings);
    IList* getPConditions();
    void setPConditions(IList* pConditions);
    DateTime* getPCreatedAt();
    void setPCreatedAt(DateTime* pCreatedAt);
    DateTime* getPUpdatedAt();
    void setPUpdatedAt(DateTime* pUpdatedAt);

private:
    String* pName;
Integer* pYear;
String* pDoi;
String* pPubMedId;
String* pSlug;
String* pKeyFindings;
IList* pConditions;
DateTime* pCreatedAt;
DateTime* pUpdatedAt;
};

} /* namespace Swagger */

#endif /* SamiStudy_H_ */
