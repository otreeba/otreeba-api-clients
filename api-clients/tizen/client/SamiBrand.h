/*
 * SamiBrand.h
 * 
 * 
 */

#ifndef SamiBrand_H_
#define SamiBrand_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::Collection::IList;
using Tizen::Base::DateTime;
using Tizen::Base::String;


namespace Swagger {

class SamiBrand: public SamiObject {
public:
    SamiBrand();
    SamiBrand(String* json);
    virtual ~SamiBrand();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiBrand* fromJson(String* obj);

    String* getPName();
    void setPName(String* pName);
    String* getPOcpc();
    void setPOcpc(String* pOcpc);
    String* getPLink();
    void setPLink(String* pLink);
    String* getPQr();
    void setPQr(String* pQr);
    String* getPUrl();
    void setPUrl(String* pUrl);
    String* getPImage();
    void setPImage(String* pImage);
    IList* getPFlowers();
    void setPFlowers(IList* pFlowers);
    IList* getPExtracts();
    void setPExtracts(IList* pExtracts);
    IList* getPEdibles();
    void setPEdibles(IList* pEdibles);
    IList* getPProducts();
    void setPProducts(IList* pProducts);
    DateTime* getPCreatedAt();
    void setPCreatedAt(DateTime* pCreatedAt);
    DateTime* getPUpdatedAt();
    void setPUpdatedAt(DateTime* pUpdatedAt);

private:
    String* pName;
String* pOcpc;
String* pLink;
String* pQr;
String* pUrl;
String* pImage;
IList* pFlowers;
IList* pExtracts;
IList* pEdibles;
IList* pProducts;
DateTime* pCreatedAt;
DateTime* pUpdatedAt;
};

} /* namespace Swagger */

#endif /* SamiBrand_H_ */
