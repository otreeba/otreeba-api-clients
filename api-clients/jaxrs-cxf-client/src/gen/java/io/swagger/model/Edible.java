package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Edible  {
  
  @ApiModelProperty(example = "Moxey&#39;s Mints - Ginger", required = true, value = "Name of the edible.")
  private String name = null;
  @ApiModelProperty(example = "0000000000NJKLWH2HNZ00000", value = "Open Cannabis Product Code for the edible.")
  private String ocpc = null;
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Mr. Moxey&#39;s Mints&quot;,&quot;ocpc&quot;:&quot;0000000000NJKLW0000000000&quot;}", value = "Name and Open Cannabis Product Code of the brand that created this edible.")
  private Object brand = null;
  @ApiModelProperty(example = "Mint", value = "Type of edible.")
  private String type = null;
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Confidential Cheese&quot;,&quot;ocpc&quot;:&quot;TTUYNUF3TP000000000000000&quot;}", value = "Name and Open Cannabis Product Code of the strain for this edible.")
  private Object strain = null;
  @ApiModelProperty(example = "null", value = "Description of the edible.")
  private String description = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/edible-reports/qr-code/mr-moxeys-mints/moxeys-mints-ginger", value = "URL for QR that leads to page on Cannabis Reports.")
  private String qr = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/edible-reports/mr-moxeys-mints/moxeys-mints-ginger", value = "URL for the edible on Cannabis Reports.")
  private String url = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/images/edibles/b/full_bf53ef28bb19d97624cab43e12614b3affbf1a31.jpg", value = "URL for the main photo of the edible.")
  private String image = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/lab-tests/b/bf53ef28bb19d97624cab43e12614b3affbf1a31.pdf", value = "URL for the PDF containing lab testing information for this edible.")
  private String labTest = null;
  @ApiModelProperty(example = "20mg", value = "THC measurement for this edible.")
  private String thc = null;
  @ApiModelProperty(example = "100mg", value = "CBD measurement for this edible.")
  private String cbd = null;
  @ApiModelProperty(example = "0mg", value = "Cannabis measurement for this edible.")
  private String cannabis = null;
  @ApiModelProperty(example = "0mg", value = "Hash oil measurement for this edible.")
  private String hashOil = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was created, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar createdAt = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was updated, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar updatedAt = null;

 /**
   * Name of the edible.
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Edible name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Open Cannabis Product Code for the edible.
   * @return ocpc
  **/
  public String getOcpc() {
    return ocpc;
  }

  public void setOcpc(String ocpc) {
    this.ocpc = ocpc;
  }

  public Edible ocpc(String ocpc) {
    this.ocpc = ocpc;
    return this;
  }

 /**
   * Name and Open Cannabis Product Code of the brand that created this edible.
   * @return brand
  **/
  public Object getBrand() {
    return brand;
  }

  public void setBrand(Object brand) {
    this.brand = brand;
  }

  public Edible brand(Object brand) {
    this.brand = brand;
    return this;
  }

 /**
   * Type of edible.
   * @return type
  **/
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Edible type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Name and Open Cannabis Product Code of the strain for this edible.
   * @return strain
  **/
  public Object getStrain() {
    return strain;
  }

  public void setStrain(Object strain) {
    this.strain = strain;
  }

  public Edible strain(Object strain) {
    this.strain = strain;
    return this;
  }

 /**
   * Description of the edible.
   * @return description
  **/
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Edible description(String description) {
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

  public Edible qr(String qr) {
    this.qr = qr;
    return this;
  }

 /**
   * URL for the edible on Cannabis Reports.
   * @return url
  **/
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public Edible url(String url) {
    this.url = url;
    return this;
  }

 /**
   * URL for the main photo of the edible.
   * @return image
  **/
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public Edible image(String image) {
    this.image = image;
    return this;
  }

 /**
   * URL for the PDF containing lab testing information for this edible.
   * @return labTest
  **/
  public String getLabTest() {
    return labTest;
  }

  public void setLabTest(String labTest) {
    this.labTest = labTest;
  }

  public Edible labTest(String labTest) {
    this.labTest = labTest;
    return this;
  }

 /**
   * THC measurement for this edible.
   * @return thc
  **/
  public String getThc() {
    return thc;
  }

  public void setThc(String thc) {
    this.thc = thc;
  }

  public Edible thc(String thc) {
    this.thc = thc;
    return this;
  }

 /**
   * CBD measurement for this edible.
   * @return cbd
  **/
  public String getCbd() {
    return cbd;
  }

  public void setCbd(String cbd) {
    this.cbd = cbd;
  }

  public Edible cbd(String cbd) {
    this.cbd = cbd;
    return this;
  }

 /**
   * Cannabis measurement for this edible.
   * @return cannabis
  **/
  public String getCannabis() {
    return cannabis;
  }

  public void setCannabis(String cannabis) {
    this.cannabis = cannabis;
  }

  public Edible cannabis(String cannabis) {
    this.cannabis = cannabis;
    return this;
  }

 /**
   * Hash oil measurement for this edible.
   * @return hashOil
  **/
  public String getHashOil() {
    return hashOil;
  }

  public void setHashOil(String hashOil) {
    this.hashOil = hashOil;
  }

  public Edible hashOil(String hashOil) {
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

  public Edible createdAt(javax.xml.datatype.XMLGregorianCalendar createdAt) {
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

  public Edible updatedAt(javax.xml.datatype.XMLGregorianCalendar updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Edible {\n");
    
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

