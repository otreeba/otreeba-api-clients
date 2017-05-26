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

public class SeedCompany  {
  
  @ApiModelProperty(example = "Sensi Seeds", required = true, value = "Name of the seed company.")
  private String name = null;
  @ApiModelProperty(example = "VUJCJ00000000000000000000", value = "Open Cannabis Product Code for the seed company.")
  private String ocpc = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/strain-reports/sensi-seeds/qr-code.svg", value = "URL for QR that leads to page on Cannabis Reports.")
  private String qr = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/strain-reports/sensi-seeds", value = "URL for seed company on Cannabis Reports.")
  private String url = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/images/profile/1/full_15fda07a135540c1de6afbb38dafe2113a11a7a4.jpg", value = "URL for logo for seed company.")
  private String image = null;
  @ApiModelProperty(example = "{&quot;Afghanistan&quot;:&quot;AF&quot;,&quot;Canada&quot;:&quot;CA&quot;,&quot;Colombia&quot;:&quot;CO&quot;,&quot;Hungary&quot;:&quot;HU&quot;,&quot;India&quot;:&quot;IN&quot;}", value = "Object of countries that this seed company has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'}")
  private Object lineage = null;
  @ApiModelProperty(example = "null", value = "OCPCs of the strains from this seed company.")
  private List<String> strains = new ArrayList<String>();
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was created, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar createdAt = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was updated, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar updatedAt = null;

 /**
   * Name of the seed company.
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public SeedCompany name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Open Cannabis Product Code for the seed company.
   * @return ocpc
  **/
  public String getOcpc() {
    return ocpc;
  }

  public void setOcpc(String ocpc) {
    this.ocpc = ocpc;
  }

  public SeedCompany ocpc(String ocpc) {
    this.ocpc = ocpc;
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

  public SeedCompany qr(String qr) {
    this.qr = qr;
    return this;
  }

 /**
   * URL for seed company on Cannabis Reports.
   * @return url
  **/
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public SeedCompany url(String url) {
    this.url = url;
    return this;
  }

 /**
   * URL for logo for seed company.
   * @return image
  **/
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public SeedCompany image(String image) {
    this.image = image;
    return this;
  }

 /**
   * Object of countries that this seed company has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'}
   * @return lineage
  **/
  public Object getLineage() {
    return lineage;
  }

  public void setLineage(Object lineage) {
    this.lineage = lineage;
  }

  public SeedCompany lineage(Object lineage) {
    this.lineage = lineage;
    return this;
  }

 /**
   * OCPCs of the strains from this seed company.
   * @return strains
  **/
  public List<String> getStrains() {
    return strains;
  }

  public void setStrains(List<String> strains) {
    this.strains = strains;
  }

  public SeedCompany strains(List<String> strains) {
    this.strains = strains;
    return this;
  }

  public SeedCompany addStrainsItem(String strainsItem) {
    this.strains.add(strainsItem);
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

  public SeedCompany createdAt(javax.xml.datatype.XMLGregorianCalendar createdAt) {
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

  public SeedCompany updatedAt(javax.xml.datatype.XMLGregorianCalendar updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SeedCompany {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    ocpc: ").append(toIndentedString(ocpc)).append("\n");
    sb.append("    qr: ").append(toIndentedString(qr)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    lineage: ").append(toIndentedString(lineage)).append("\n");
    sb.append("    strains: ").append(toIndentedString(strains)).append("\n");
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

