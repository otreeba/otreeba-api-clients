package io.swagger.client.api

import io.swagger.client.model.Inline_response_200
import io.swagger.client.model.Inline_response_200_1
import io.swagger.client.model.SeedCompany
import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

class SeedCompaniesApi(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def getSeedCompanies(page: Option[Integer] = None,
      count: Option[Integer] = Some(10),
      sort: Option[String] = Some(-createdAt)
      )(implicit reader: ClientResponseReader[Inline_response_200]): Future[Inline_response_200] = {
    // create path and map variables
    val path = (addFmt("/seed-companies"))

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

  def getSeedCompanyByOcpc(ocpc: String)(implicit reader: ClientResponseReader[SeedCompany]): Future[SeedCompany] = {
    // create path and map variables
    val path = (addFmt("/seed-companies/{ocpc}")
        replaceAll ("\\{" + "ocpc" + "\\}",ocpc.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (ocpc == null) throw new Exception("Missing required parameter 'ocpc' when calling SeedCompaniesApi->getSeedCompanyByOcpc")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getSeedCompanyStrainsByOcpc(ocpc: String,
      page: Option[Integer] = None,
      count: Option[Integer] = Some(10)
      )(implicit reader: ClientResponseReader[Inline_response_200_1]): Future[Inline_response_200_1] = {
    // create path and map variables
    val path = (addFmt("/seed-companies/{ocpc}/strains")
        replaceAll ("\\{" + "ocpc" + "\\}",ocpc.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (ocpc == null) throw new Exception("Missing required parameter 'ocpc' when calling SeedCompaniesApi->getSeedCompanyStrainsByOcpc")

    page match {
    case Some(param) => queryParams += "page" -> param.toString
    case _ => queryParams
    }
    count match {
    case Some(param) => queryParams += "count" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}
