/**
 * Otreeba Open Cannabis API
 * This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).
 *
 * OpenAPI spec version: 1.0.0
 * Contact: api@otreeba.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


#include "SWGPagination.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {

SWGPagination::SWGPagination(QString* json) {
    init();
    this->fromJson(*json);
}

SWGPagination::SWGPagination() {
    init();
}

SWGPagination::~SWGPagination() {
    this->cleanup();
}

void
SWGPagination::init() {
    total = 0;
    count = 0;
    per_page = 0;
    current_page = 0;
    total_pages = 0;
    links = NULL;
}

void
SWGPagination::cleanup() {
    





    if(links != nullptr) {
        delete links;
    }
}

SWGPagination*
SWGPagination::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGPagination::fromJsonObject(QJsonObject &pJson) {
    ::Swagger::setValue(&total, pJson["total"], "qint32", "");
    ::Swagger::setValue(&count, pJson["count"], "qint32", "");
    ::Swagger::setValue(&per_page, pJson["per_page"], "qint32", "");
    ::Swagger::setValue(&current_page, pJson["current_page"], "qint32", "");
    ::Swagger::setValue(&total_pages, pJson["total_pages"], "qint32", "");
    ::Swagger::setValue(&links, pJson["links"], "SWGObject", "SWGObject");
}

QString
SWGPagination::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGPagination::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    
    obj->insert("total", QJsonValue(total));

    obj->insert("count", QJsonValue(count));

    obj->insert("per_page", QJsonValue(per_page));

    obj->insert("current_page", QJsonValue(current_page));

    obj->insert("total_pages", QJsonValue(total_pages));

    toJsonValue(QString("links"), links, obj, QString("SWGObject"));

    return obj;
}

qint32
SWGPagination::getTotal() {
    return total;
}
void
SWGPagination::setTotal(qint32 total) {
    this->total = total;
}

qint32
SWGPagination::getCount() {
    return count;
}
void
SWGPagination::setCount(qint32 count) {
    this->count = count;
}

qint32
SWGPagination::getPerPage() {
    return per_page;
}
void
SWGPagination::setPerPage(qint32 per_page) {
    this->per_page = per_page;
}

qint32
SWGPagination::getCurrentPage() {
    return current_page;
}
void
SWGPagination::setCurrentPage(qint32 current_page) {
    this->current_page = current_page;
}

qint32
SWGPagination::getTotalPages() {
    return total_pages;
}
void
SWGPagination::setTotalPages(qint32 total_pages) {
    this->total_pages = total_pages;
}

SWGObject*
SWGPagination::getLinks() {
    return links;
}
void
SWGPagination::setLinks(SWGObject* links) {
    this->links = links;
}


}

