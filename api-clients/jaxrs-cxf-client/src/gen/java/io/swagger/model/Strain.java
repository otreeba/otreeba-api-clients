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

public class Strain  {
  
  @ApiModelProperty(example = "Jack Herer", required = true, value = "Name of the strain.")
  private String name = null;
  @ApiModelProperty(example = "VUJCJ4TYMG000000000000000", value = "Open Cannabis Product Code for the strain.")
  private String ocpc = null;
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Sensi Seeds&quot;,&quot;ocpc&quot;:&quot;VUJCJ00000000000000000000&quot;}", value = "Name and Open Cannabis Product Code of the seed company that created the strain.")
  private Object seedCompany = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/strain-reports/sensi-seeds/jack-herer/qr-code.svg", value = "URL for QR that leads to page on Cannabis Reports.")
  private String qr = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/strain-reports/sensi-seeds/jack-herer", value = "URL for strain on Cannabis Reports.")
  private String url = null;
  @ApiModelProperty(example = "https://www.cannabisreports.com/images/strains/a/full_ae82eef3bb2b7694df7f8bfa0da22a5d2b0f3689.jpg", value = "URL for the main photo of the strain.")
  private String image = null;
  @ApiModelProperty(example = "{&quot;Afghanistan&quot;:&quot;AF&quot;,&quot;Colombia&quot;:&quot;CO&quot;,&quot;India&quot;:&quot;IN&quot;,&quot;Mexico&quot;:&quot;MX&quot;,&quot;Thailand&quot;:&quot;TH&quot;}", value = "Object of countries that this strain has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'}")
  private Object lineage = null;
  @ApiModelProperty(example = "{&quot;names&quot;:&quot;(Northern Lights #5 x Skunk #1) x Haze&quot;,&quot;ucpc&quot;:&quot;(VUJCJ4MPQ2000000000000000 x VUJCJY6ZUC000000000000000) x 9XVU7WJQCD000000000000000&quot;}", value = "Names of the parents of the strains and their associated Open Cannabis Product Codes.")
  private Object genetics = null;
  @ApiModelProperty(example = "null", value = "Open Cannabis Product Codes of the children of this strain.")
  private List<String> children = new ArrayList<String>();
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was created, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar createdAt = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was updated, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar updatedAt = null;

 /**
   * Name of the strain.
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Strain name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Open Cannabis Product Code for the strain.
   * @return ocpc
  **/
  public String getOcpc() {
    return ocpc;
  }

  public void setOcpc(String ocpc) {
    this.ocpc = ocpc;
  }

  public Strain ocpc(String ocpc) {
    this.ocpc = ocpc;
    return this;
  }

 /**
   * Name and Open Cannabis Product Code of the seed company that created the strain.
   * @return seedCompany
  **/
  public Object getSeedCompany() {
    return seedCompany;
  }

  public void setSeedCompany(Object seedCompany) {
    this.seedCompany = seedCompany;
  }

  public Strain seedCompany(Object seedCompany) {
    this.seedCompany = seedCompany;
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

  public Strain qr(String qr) {
    this.qr = qr;
    return this;
  }

 /**
   * URL for strain on Cannabis Reports.
   * @return url
  **/
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public Strain url(String url) {
    this.url = url;
    return this;
  }

 /**
   * URL for the main photo of the strain.
   * @return image
  **/
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public Strain image(String image) {
    this.image = image;
    return this;
  }

 /**
   * Object of countries that this strain has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'}
   * @return lineage
  **/
  public Object getLineage() {
    return lineage;
  }

  public void setLineage(Object lineage) {
    this.lineage = lineage;
  }

  public Strain lineage(Object lineage) {
    this.lineage = lineage;
    return this;
  }

 /**
   * Names of the parents of the strains and their associated Open Cannabis Product Codes.
   * @return genetics
  **/
  public Object getGenetics() {
    return genetics;
  }

  public void setGenetics(Object genetics) {
    this.genetics = genetics;
  }

  public Strain genetics(Object genetics) {
    this.genetics = genetics;
    return this;
  }

 /**
   * Open Cannabis Product Codes of the children of this strain.
   * @return children
  **/
  public List<String> getChildren() {
    return children;
  }

  public void setChildren(List<String> children) {
    this.children = children;
  }

  public Strain children(List<String> children) {
    this.children = children;
    return this;
  }

  public Strain addChildrenItem(String childrenItem) {
    this.children.add(childrenItem);
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

  public Strain createdAt(javax.xml.datatype.XMLGregorianCalendar createdAt) {
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

  public Strain updatedAt(javax.xml.datatype.XMLGregorianCalendar updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Strain {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    ocpc: ").append(toIndentedString(ocpc)).append("\n");
    sb.append("    seedCompany: ").append(toIndentedString(seedCompany)).append("\n");
    sb.append("    qr: ").append(toIndentedString(qr)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    lineage: ").append(toIndentedString(lineage)).append("\n");
    sb.append("    genetics: ").append(toIndentedString(genetics)).append("\n");
    sb.append("    children: ").append(toIndentedString(children)).append("\n");
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

