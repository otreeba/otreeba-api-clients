package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Flower  {
  
  @ApiModelProperty(example = "Half Dome Haze - Flowers", required = true, value = "Name of the flowers.")
  private String name = null;
  @ApiModelProperty(example = "9XVU7JDFUGLTE2ATJ7CD00000", value = "Open Cannabis Product Code for the flowers.")
  private String ocpc = null;
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Advantage Healing&quot;,&quot;ocpc&quot;:&quot;0000000000LTE2A0000000000&quot;}", value = "Name and Open Cannabis Product Code of the brand that created these flowers.")
  private Object brand = null;
  @ApiModelProperty(example = "flowers", value = "Type of flowers.")
  private String type = null;
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Half Dome Haze&quot;,&quot;ocpc&quot;:&quot;9XVU7JDFUG000000000000000&quot;}", value = "Name and Open Cannabis Product Code of the strain for these flowers.")
  private Object strain = null;
  @ApiModelProperty(example = "null", value = "Description of the flowers.")
  private String description = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/flower-reports/advantage-healing/unknown-breeder/half-dome-haze/flowers/qr-code.svg", value = "URL for QR that leads to page on Cannabis Reports.")
  private String qr = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/flower-reports/advantage-healing/unknown-breeder/half-dome-haze/flowers", value = "URL for the flowers on Cannabis Reports.")
  private String url = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/images/flowers/c/full_c4b27703dedbccd4a9f4bb0ca89bf4520aa4aca0.jpg", value = "URL for the main photo of the flowers.")
  private String image = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/lab-tests/c/c702502526ef743651e29f14ccfa84423fadfdf0.pdf", value = "URL for the PDF containing lab testing information for these flowers.")
  private String labTest = null;
  @ApiModelProperty(example = "27.50%", value = "THC measurement for these flowers.")
  private String thc = null;
  @ApiModelProperty(example = "0.05%", value = "CBD measurement for these flowers.")
  private String cbd = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was created, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar createdAt = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was updated, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar updatedAt = null;

 /**
   * Name of the flowers.
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Flower name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Open Cannabis Product Code for the flowers.
   * @return ocpc
  **/
  public String getOcpc() {
    return ocpc;
  }

  public void setOcpc(String ocpc) {
    this.ocpc = ocpc;
  }

  public Flower ocpc(String ocpc) {
    this.ocpc = ocpc;
    return this;
  }

 /**
   * Name and Open Cannabis Product Code of the brand that created these flowers.
   * @return brand
  **/
  public Object getBrand() {
    return brand;
  }

  public void setBrand(Object brand) {
    this.brand = brand;
  }

  public Flower brand(Object brand) {
    this.brand = brand;
    return this;
  }

 /**
   * Type of flowers.
   * @return type
  **/
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Flower type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Name and Open Cannabis Product Code of the strain for these flowers.
   * @return strain
  **/
  public Object getStrain() {
    return strain;
  }

  public void setStrain(Object strain) {
    this.strain = strain;
  }

  public Flower strain(Object strain) {
    this.strain = strain;
    return this;
  }

 /**
   * Description of the flowers.
   * @return description
  **/
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Flower description(String description) {
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

  public Flower qr(String qr) {
    this.qr = qr;
    return this;
  }

 /**
   * URL for the flowers on Cannabis Reports.
   * @return url
  **/
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public Flower url(String url) {
    this.url = url;
    return this;
  }

 /**
   * URL for the main photo of the flowers.
   * @return image
  **/
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public Flower image(String image) {
    this.image = image;
    return this;
  }

 /**
   * URL for the PDF containing lab testing information for these flowers.
   * @return labTest
  **/
  public String getLabTest() {
    return labTest;
  }

  public void setLabTest(String labTest) {
    this.labTest = labTest;
  }

  public Flower labTest(String labTest) {
    this.labTest = labTest;
    return this;
  }

 /**
   * THC measurement for these flowers.
   * @return thc
  **/
  public String getThc() {
    return thc;
  }

  public void setThc(String thc) {
    this.thc = thc;
  }

  public Flower thc(String thc) {
    this.thc = thc;
    return this;
  }

 /**
   * CBD measurement for these flowers.
   * @return cbd
  **/
  public String getCbd() {
    return cbd;
  }

  public void setCbd(String cbd) {
    this.cbd = cbd;
  }

  public Flower cbd(String cbd) {
    this.cbd = cbd;
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

  public Flower createdAt(javax.xml.datatype.XMLGregorianCalendar createdAt) {
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

  public Flower updatedAt(javax.xml.datatype.XMLGregorianCalendar updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Flower {\n");
    
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

