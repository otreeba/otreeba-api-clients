package io.swagger.model;

import java.util.ArrayList;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Brand  {
  
  @ApiModelProperty(example = "Kiva", required = true, value = "Name of the brand.")
  private String name = null;
  @ApiModelProperty(example = "0000000000L6M7E0000000000", value = "Open Cannabis Product Code for the brand.")
  private String ocpc = null;
  @ApiModelProperty(example = "https://api.otreeba.com/v1/brands/0000000000L6M7E0000000000", value = "URL for brand on Otreeba.")
  private String link = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/producer-reports/kiva/qr-code", value = "URL for QR that leads to page on Cannabis Reports.")
  private String qr = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/producer-reports/kiva", value = "URL for brand on Cannabis Reports.")
  private String url = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/images/profile/8/full_8b44ce75bfba676790018d8a1d275d4d736883a9.jpg", value = "URL for logo for brand.")
  private String image = null;
  @ApiModelProperty(example = "null", value = "OCPCs of the flowers from this brand.")
  private List<String> flowers = new ArrayList<String>();
  @ApiModelProperty(example = "null", value = "OCPCs of the extracts from this brand.")
  private List<String> extracts = new ArrayList<String>();
  @ApiModelProperty(example = "null", value = "OCPCs of the edibles from this brand.")
  private List<String> edibles = new ArrayList<String>();
  @ApiModelProperty(example = "null", value = "OCPCs of the products from this brand.")
  private List<String> products = new ArrayList<String>();
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was created, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar createdAt = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was updated, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar updatedAt = null;

 /**
   * Name of the brand.
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Brand name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Open Cannabis Product Code for the brand.
   * @return ocpc
  **/
  public String getOcpc() {
    return ocpc;
  }

  public void setOcpc(String ocpc) {
    this.ocpc = ocpc;
  }

  public Brand ocpc(String ocpc) {
    this.ocpc = ocpc;
    return this;
  }

 /**
   * URL for brand on Otreeba.
   * @return link
  **/
  public String getLink() {
    return link;
  }

  public void setLink(String link) {
    this.link = link;
  }

  public Brand link(String link) {
    this.link = link;
    return this;
  }

 /**
   * URL for QR that leads to page on Cannabis Reports.
   * @return qr
  **/
  public String getQr() {
    return qr;
  }

  public void setQr(String qr) {
    this.qr = qr;
  }

  public Brand qr(String qr) {
    this.qr = qr;
    return this;
  }

 /**
   * URL for brand on Cannabis Reports.
   * @return url
  **/
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public Brand url(String url) {
    this.url = url;
    return this;
  }

 /**
   * URL for logo for brand.
   * @return image
  **/
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public Brand image(String image) {
    this.image = image;
    return this;
  }

 /**
   * OCPCs of the flowers from this brand.
   * @return flowers
  **/
  public List<String> getFlowers() {
    return flowers;
  }

  public void setFlowers(List<String> flowers) {
    this.flowers = flowers;
  }

  public Brand flowers(List<String> flowers) {
    this.flowers = flowers;
    return this;
  }

  public Brand addFlowersItem(String flowersItem) {
    this.flowers.add(flowersItem);
    return this;
  }

 /**
   * OCPCs of the extracts from this brand.
   * @return extracts
  **/
  public List<String> getExtracts() {
    return extracts;
  }

  public void setExtracts(List<String> extracts) {
    this.extracts = extracts;
  }

  public Brand extracts(List<String> extracts) {
    this.extracts = extracts;
    return this;
  }

  public Brand addExtractsItem(String extractsItem) {
    this.extracts.add(extractsItem);
    return this;
  }

 /**
   * OCPCs of the edibles from this brand.
   * @return edibles
  **/
  public List<String> getEdibles() {
    return edibles;
  }

  public void setEdibles(List<String> edibles) {
    this.edibles = edibles;
  }

  public Brand edibles(List<String> edibles) {
    this.edibles = edibles;
    return this;
  }

  public Brand addEdiblesItem(String ediblesItem) {
    this.edibles.add(ediblesItem);
    return this;
  }

 /**
   * OCPCs of the products from this brand.
   * @return products
  **/
  public List<String> getProducts() {
    return products;
  }

  public void setProducts(List<String> products) {
    this.products = products;
  }

  public Brand products(List<String> products) {
    this.products = products;
    return this;
  }

  public Brand addProductsItem(String productsItem) {
    this.products.add(productsItem);
    return this;
  }

 /**
   * Date and time record was created, UTC.
   * @return createdAt
  **/
  public javax.xml.datatype.XMLGregorianCalendar getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(javax.xml.datatype.XMLGregorianCalendar createdAt) {
    this.createdAt = createdAt;
  }

  public Brand createdAt(javax.xml.datatype.XMLGregorianCalendar createdAt) {
    this.createdAt = createdAt;
    return this;
  }

 /**
   * Date and time record was updated, UTC.
   * @return updatedAt
  **/
  public javax.xml.datatype.XMLGregorianCalendar getUpdatedAt() {
    return updatedAt;
  }

  public void setUpdatedAt(javax.xml.datatype.XMLGregorianCalendar updatedAt) {
    this.updatedAt = updatedAt;
  }

  public Brand updatedAt(javax.xml.datatype.XMLGregorianCalendar updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Brand {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    ocpc: ").append(toIndentedString(ocpc)).append("\n");
    sb.append("    link: ").append(toIndentedString(link)).append("\n");
    sb.append("    qr: ").append(toIndentedString(qr)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    flowers: ").append(toIndentedString(flowers)).append("\n");
    sb.append("    extracts: ").append(toIndentedString(extracts)).append("\n");
    sb.append("    edibles: ").append(toIndentedString(edibles)).append("\n");
    sb.append("    products: ").append(toIndentedString(products)).append("\n");
    sb.append("    createdAt: ").append(toIndentedString(createdAt)).append("\n");
    sb.append("    updatedAt: ").append(toIndentedString(updatedAt)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

