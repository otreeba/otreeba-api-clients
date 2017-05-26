package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Product  {
  
  @ApiModelProperty(example = "X-Pen", required = true, value = "Name of the product.")
  private String name = null;
  @ApiModelProperty(example = "0000000000YPLU3Z2YUM00000", value = "Open Cannabis Product Code for the product.")
  private String ocpc = null;
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Elixinol&quot;,&quot;ocpc&quot;:&quot;0000000000YPLU30000000000&quot;}", value = "Name and Open Cannabis Product Code of the brand that created this product.")
  private Object brand = null;
  @ApiModelProperty(example = "Oil Applicator", value = "Type of product.")
  private String type = null;
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Confidential Cheese&quot;,&quot;ocpc&quot;:&quot;TTUYNUF3TP000000000000000&quot;}", value = "Name and Open Cannabis Product Code of the strain for this product.")
  private Object strain = null;
  @ApiModelProperty(example = "null", value = "Description of the product.")
  private String description = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/product-reports/qr-code/elixinol/x-pen.png", value = "URL for QR that leads to page on Cannabis Reports.")
  private String qr = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/product-reports/elixinol/x-pen", value = "URL for the product on Cannabis Reports.")
  private String url = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/images/products/f/full_f592eb462df530c23a98d0fb6330fc895c8cfe18.jpg", value = "URL for the main photo of the product.")
  private String image = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/lab-tests/1/140c73d2606fded84e6a14ca07aed77eb1e73827.pdf", value = "URL for the PDF containing lab testing information for this product.")
  private String labTest = null;
  @ApiModelProperty(example = "0mg", value = "THC measurement for this product.")
  private String thc = null;
  @ApiModelProperty(example = "1,000mg", value = "CBD measurement for this product.")
  private String cbd = null;
  @ApiModelProperty(example = "", value = "Cannabis measurement for this product.")
  private String cannabis = null;
  @ApiModelProperty(example = "", value = "Hash oil measurement for this product.")
  private String hashOil = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was created, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar createdAt = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was updated, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar updatedAt = null;

 /**
   * Name of the product.
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Product name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Open Cannabis Product Code for the product.
   * @return ocpc
  **/
  public String getOcpc() {
    return ocpc;
  }

  public void setOcpc(String ocpc) {
    this.ocpc = ocpc;
  }

  public Product ocpc(String ocpc) {
    this.ocpc = ocpc;
    return this;
  }

 /**
   * Name and Open Cannabis Product Code of the brand that created this product.
   * @return brand
  **/
  public Object getBrand() {
    return brand;
  }

  public void setBrand(Object brand) {
    this.brand = brand;
  }

  public Product brand(Object brand) {
    this.brand = brand;
    return this;
  }

 /**
   * Type of product.
   * @return type
  **/
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Product type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Name and Open Cannabis Product Code of the strain for this product.
   * @return strain
  **/
  public Object getStrain() {
    return strain;
  }

  public void setStrain(Object strain) {
    this.strain = strain;
  }

  public Product strain(Object strain) {
    this.strain = strain;
    return this;
  }

 /**
   * Description of the product.
   * @return description
  **/
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Product description(String description) {
    this.description = description;
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

  public Product qr(String qr) {
    this.qr = qr;
    return this;
  }

 /**
   * URL for the product on Cannabis Reports.
   * @return url
  **/
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public Product url(String url) {
    this.url = url;
    return this;
  }

 /**
   * URL for the main photo of the product.
   * @return image
  **/
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public Product image(String image) {
    this.image = image;
    return this;
  }

 /**
   * URL for the PDF containing lab testing information for this product.
   * @return labTest
  **/
  public String getLabTest() {
    return labTest;
  }

  public void setLabTest(String labTest) {
    this.labTest = labTest;
  }

  public Product labTest(String labTest) {
    this.labTest = labTest;
    return this;
  }

 /**
   * THC measurement for this product.
   * @return thc
  **/
  public String getThc() {
    return thc;
  }

  public void setThc(String thc) {
    this.thc = thc;
  }

  public Product thc(String thc) {
    this.thc = thc;
    return this;
  }

 /**
   * CBD measurement for this product.
   * @return cbd
  **/
  public String getCbd() {
    return cbd;
  }

  public void setCbd(String cbd) {
    this.cbd = cbd;
  }

  public Product cbd(String cbd) {
    this.cbd = cbd;
    return this;
  }

 /**
   * Cannabis measurement for this product.
   * @return cannabis
  **/
  public String getCannabis() {
    return cannabis;
  }

  public void setCannabis(String cannabis) {
    this.cannabis = cannabis;
  }

  public Product cannabis(String cannabis) {
    this.cannabis = cannabis;
    return this;
  }

 /**
   * Hash oil measurement for this product.
   * @return hashOil
  **/
  public String getHashOil() {
    return hashOil;
  }

  public void setHashOil(String hashOil) {
    this.hashOil = hashOil;
  }

  public Product hashOil(String hashOil) {
    this.hashOil = hashOil;
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

  public Product createdAt(javax.xml.datatype.XMLGregorianCalendar createdAt) {
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

  public Product updatedAt(javax.xml.datatype.XMLGregorianCalendar updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Product {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    ocpc: ").append(toIndentedString(ocpc)).append("\n");
    sb.append("    brand: ").append(toIndentedString(brand)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    strain: ").append(toIndentedString(strain)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    qr: ").append(toIndentedString(qr)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    labTest: ").append(toIndentedString(labTest)).append("\n");
    sb.append("    thc: ").append(toIndentedString(thc)).append("\n");
    sb.append("    cbd: ").append(toIndentedString(cbd)).append("\n");
    sb.append("    cannabis: ").append(toIndentedString(cannabis)).append("\n");
    sb.append("    hashOil: ").append(toIndentedString(hashOil)).append("\n");
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

