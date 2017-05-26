package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Extract  {
  
  @ApiModelProperty(example = "Confidential Cheese - Wax", required = true, value = "Name of the extract.")
  private String name = null;
  @ApiModelProperty(example = "TTUYNUF3TP6DZTPWPG3200000", value = "Open Cannabis Product Code for the extract.")
  private String ocpc = null;
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Kaizen Medicinal&quot;,&quot;ocpc&quot;:&quot;00000000006DZTP0000000000&quot;}", value = "Name and Open Cannabis Product Code of the brand that created these extract.")
  private Object brand = null;
  @ApiModelProperty(example = "wax", value = "Type of extract.")
  private String type = null;
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Confidential Cheese&quot;,&quot;ocpc&quot;:&quot;TTUYNUF3TP000000000000000&quot;}", value = "Name and Open Cannabis Product Code of the strain for these extract.")
  private Object strain = null;
  @ApiModelProperty(example = "null", value = "Description of the extract.")
  private String description = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/extract-reports/qr-code/kaizen-medicinal/dna-genetics/confidential-cheese/wax.png", value = "URL for QR that leads to page on Cannabis Reports.")
  private String qr = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/extract-reports/kaizen-medicinal/dna-genetics/confidential-cheese/wax", value = "URL for the extract on Cannabis Reports.")
  private String url = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/images/extracts/2/full_2172a2e37b3711da4666899be1dddc1157d60190.jpg", value = "URL for the main photo of the extract.")
  private String image = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/lab-tests/c/cc7b037528c7661dafde2a1e36f3c6d3ffcccb40.pdf", value = "URL for the PDF containing lab testing information for these extract.")
  private String labTest = null;
  @ApiModelProperty(example = "87.92%", value = "THC measurement for these extract.")
  private String thc = null;
  @ApiModelProperty(example = "0.22%", value = "CBD measurement for these extract.")
  private String cbd = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was created, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar createdAt = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was updated, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar updatedAt = null;

 /**
   * Name of the extract.
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Extract name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Open Cannabis Product Code for the extract.
   * @return ocpc
  **/
  public String getOcpc() {
    return ocpc;
  }

  public void setOcpc(String ocpc) {
    this.ocpc = ocpc;
  }

  public Extract ocpc(String ocpc) {
    this.ocpc = ocpc;
    return this;
  }

 /**
   * Name and Open Cannabis Product Code of the brand that created these extract.
   * @return brand
  **/
  public Object getBrand() {
    return brand;
  }

  public void setBrand(Object brand) {
    this.brand = brand;
  }

  public Extract brand(Object brand) {
    this.brand = brand;
    return this;
  }

 /**
   * Type of extract.
   * @return type
  **/
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Extract type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Name and Open Cannabis Product Code of the strain for these extract.
   * @return strain
  **/
  public Object getStrain() {
    return strain;
  }

  public void setStrain(Object strain) {
    this.strain = strain;
  }

  public Extract strain(Object strain) {
    this.strain = strain;
    return this;
  }

 /**
   * Description of the extract.
   * @return description
  **/
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Extract description(String description) {
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

  public Extract qr(String qr) {
    this.qr = qr;
    return this;
  }

 /**
   * URL for the extract on Cannabis Reports.
   * @return url
  **/
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public Extract url(String url) {
    this.url = url;
    return this;
  }

 /**
   * URL for the main photo of the extract.
   * @return image
  **/
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public Extract image(String image) {
    this.image = image;
    return this;
  }

 /**
   * URL for the PDF containing lab testing information for these extract.
   * @return labTest
  **/
  public String getLabTest() {
    return labTest;
  }

  public void setLabTest(String labTest) {
    this.labTest = labTest;
  }

  public Extract labTest(String labTest) {
    this.labTest = labTest;
    return this;
  }

 /**
   * THC measurement for these extract.
   * @return thc
  **/
  public String getThc() {
    return thc;
  }

  public void setThc(String thc) {
    this.thc = thc;
  }

  public Extract thc(String thc) {
    this.thc = thc;
    return this;
  }

 /**
   * CBD measurement for these extract.
   * @return cbd
  **/
  public String getCbd() {
    return cbd;
  }

  public void setCbd(String cbd) {
    this.cbd = cbd;
  }

  public Extract cbd(String cbd) {
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

  public Extract createdAt(javax.xml.datatype.XMLGregorianCalendar createdAt) {
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

  public Extract updatedAt(javax.xml.datatype.XMLGregorianCalendar updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Extract {\n");
    
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

