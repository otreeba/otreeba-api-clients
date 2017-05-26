/*
 * SamiPagination.h
 * 
 * 
 */

#ifndef SamiPagination_H_
#define SamiPagination_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiObject.h"
using Tizen::Base::Integer;


namespace Swagger {

class SamiPagination: public SamiObject {
public:
    SamiPagination();
    SamiPagination(String* json);
    virtual ~SamiPagination();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiPagination* fromJson(String* obj);

    Integer* getPTotal();
    void setPTotal(Integer* pTotal);
    Integer* getPCount();
    void setPCount(Integer* pCount);
    Integer* getPPerPage();
    void setPPerPage(Integer* pPer_page);
    Integer* getPCurrentPage();
    void setPCurrentPage(Integer* pCurrent_page);
    Integer* getPTotalPages();
    void setPTotalPages(Integer* pTotal_pages);
    SamiObject* getPLinks();
    void setPLinks(SamiObject* pLinks);

private:
    Integer* pTotal;
Integer* pCount;
Integer* pPer_page;
Integer* pCurrent_page;
Integer* pTotal_pages;
SamiObject* pLinks;
};

} /* namespace Swagger */

#endif /* SamiPagination_H_ */
