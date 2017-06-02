package io.swagger.client.api

import io.swagger.client.model.Inline_response_200_12
import io.swagger.client.model.Inline_response_200_13
import io.swagger.client.model.Study
import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

class StudiesApi(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def getStudies(page: Option[Integer] = None,
      count: Option[Integer] = Some(10),
      sort: Option[String] = Some(-createdAt)
      )(implicit reader: ClientResponseReader[Inline_response_200_12]): Future[Inline_response_200_12] = {
    // create path and map variables
    val path = (addFmt("/studies"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    page match {
    case Some(param) => queryParams += "page" -> param.toString
    case _ => queryParams
    }
    count match {
    case Some(param) => queryParams += "count" -> param.toString
    case _ => queryParams
    }
    sort match {
    case Some(param) => queryParams += "sort" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getStudiesByCondition(conditionSlug: String,
      page: Option[Integer] = None,
      count: Option[Integer] = Some(10),
      sort: Option[String] = Some(-year)
      )(implicit reader: ClientResponseReader[Inline_response_200_13]): Future[Inline_response_200_13] = {
    // create path and map variables
    val path = (addFmt("/studies/conditions/{conditionSlug}")
        replaceAll ("\\{" + "conditionSlug" + "\\}",conditionSlug.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (conditionSlug == null) throw new Exception("Missing required parameter 'conditionSlug' when calling StudiesApi->getStudiesByCondition")

    page match {
    case Some(param) => queryParams += "page" -> param.toString
    case _ => queryParams
    }
    count match {
    case Some(param) => queryParams += "count" -> param.toString
    case _ => queryParams
    }
    sort match {
    case Some(param) => queryParams += "sort" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getStudiesConditions(sort: Option[String] = Some(name)
      )(implicit reader: ClientResponseReader[Any]): Future[Any] = {
    // create path and map variables
    val path = (addFmt("/studies/conditions"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    sort match {
    case Some(param) => queryParams += "sort" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getStudyByIdentifier(identifierType: String,
      identifier: String)(implicit reader: ClientResponseReader[Study]): Future[Study] = {
    // create path and map variables
    val path = (addFmt("/studies/{identifierType}/{identifier}")
        replaceAll ("\\{" + "identifierType" + "\\}",identifierType.toString)
        replaceAll ("\\{" + "identifier" + "\\}",identifier.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (identifierType == null) throw new Exception("Missing required parameter 'identifierType' when calling StudiesApi->getStudyByIdentifier")

    if (identifier == null) throw new Exception("Missing required parameter 'identifier' when calling StudiesApi->getStudyByIdentifier")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}
