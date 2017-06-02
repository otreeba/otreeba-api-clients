/*
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


package io.swagger.client.model;

import java.util.Objects;
import com.google.gson.annotations.SerializedName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.joda.time.DateTime;

/**
 * Edible
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2017-06-02T19:53:28.884Z")
public class Edible {
  @SerializedName("name")
  private String name = null;

  @SerializedName("ocpc")
  private String ocpc = null;

  @SerializedName("brand")
  private Object brand = null;

  @SerializedName("type")
  private String type = null;

  @SerializedName("strain")
  private Object strain = null;

  @SerializedName("description")
  private String description = null;

  @SerializedName("qr")
  private String qr = null;

  @SerializedName("url")
  private String url = null;

  @SerializedName("image")
  private String image = null;

  @SerializedName("labTest")
  private String labTest = null;

  @SerializedName("thc")
  private String thc = null;

  @SerializedName("cbd")
  private String cbd = null;

  @SerializedName("cannabis")
  private String cannabis = null;

  @SerializedName("hashOil")
  private String hashOil = null;

  @SerializedName("createdAt")
  private DateTime createdAt = null;

  @SerializedName("updatedAt")
  private DateTime updatedAt = null;

  public Edible name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Name of the edible.
   * @return name
  **/
  @ApiModelProperty(example = "Moxey&#39;s Mints - Ginger", required = true, value = "Name of the edible.")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Edible ocpc(String ocpc) {
    this.ocpc = ocpc;
    return this;
  }

   /**
   * Open Cannabis Product Code for the edible.
   * @return ocpc
  **/
  @ApiModelProperty(example = "0000000000NJKLWH2HNZ00000", value = "Open Cannabis Product Code for the edible.")
  public String getOcpc() {
    return ocpc;
  }

  public void setOcpc(String ocpc) {
    this.ocpc = ocpc;
  }

  public Edible brand(Object brand) {
    this.brand = brand;
    return this;
  }

   /**
   * Name and Open Cannabis Product Code of the brand that created this edible.
   * @return brand
  **/
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Mr. Moxey&#39;s Mints&quot;,&quot;ocpc&quot;:&quot;0000000000NJKLW0000000000&quot;}", value = "Name and Open Cannabis Product Code of the brand that created this edible.")
  public Object getBrand() {
    return brand;
  }

  public void setBrand(Object brand) {
    this.brand = brand;
  }

  public Edible type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Type of edible.
   * @return type
  **/
  @ApiModelProperty(example = "Mint", value = "Type of edible.")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Edible strain(Object strain) {
    this.strain = strain;
    return this;
  }

   /**
   * Name and Open Cannabis Product Code of the strain for this edible.
   * @return strain
  **/
  @ApiModelProperty(example = "{&quot;name&quot;:&quot;Confidential Cheese&quot;,&quot;ocpc&quot;:&quot;TTUYNUF3TP000000000000000&quot;}", value = "Name and Open Cannabis Product Code of the strain for this edible.")
  public Object getStrain() {
    return strain;
  }

  public void setStrain(Object strain) {
    this.strain = strain;
  }

  public Edible description(String description) {
    this.description = description;
    return this;
  }

   /**
   * Description of the edible.
   * @return description
  **/
  @ApiModelProperty(example = "null", value = "Description of the edible.")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Edible qr(String qr) {
    this.qr = qr;
    return this;
  }

   /**
   * URL for QR that leads to page on Cannabis Reports.
   * @return qr
  **/
  @ApiModelProperty(example = "https://www.cannabisreports.com/edible-reports/qr-code/mr-moxeys-mints/moxeys-mints-ginger", value = "URL for QR that leads to page on Cannabis Reports.")
  public String getQr() {
    return qr;
  }

  public void setQr(String qr) {
    this.qr = qr;
  }

  public Edible url(String url) {
    this.url = url;
    return this;
  }

   /**
   * URL for the edible on Cannabis Reports.
   * @return url
  **/
  @ApiModelProperty(example = "https://www.cannabisreports.com/edible-reports/mr-moxeys-mints/moxeys-mints-ginger", value = "URL for the edible on Cannabis Reports.")
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public Edible image(String image) {
    this.image = image;
    return this;
  }

   /**
   * URL for the main photo of the edible.
   * @return image
  **/
  @ApiModelProperty(example = "https://www.cannabisreports.com/images/edibles/b/full_bf53ef28bb19d97624cab43e12614b3affbf1a31.jpg", value = "URL for the main photo of the edible.")
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public Edible labTest(String labTest) {
    this.labTest = labTest;
    return this;
  }

   /**
   * URL for the PDF containing lab testing information for this edible.
   * @return labTest
  **/
  @ApiModelProperty(example = "https://www.cannabisreports.com/lab-tests/b/bf53ef28bb19d97624cab43e12614b3affbf1a31.pdf", value = "URL for the PDF containing lab testing information for this edible.")
  public String getLabTest() {
    return labTest;
  }

  public void setLabTest(String labTest) {
    this.labTest = labTest;
  }

  public Edible thc(String thc) {
    this.thc = thc;
    return this;
  }

   /**
   * THC measurement for this edible.
   * @return thc
  **/
  @ApiModelProperty(example = "20mg", value = "THC measurement for this edible.")
  public String getThc() {
    return thc;
  }

  public void setThc(String thc) {
    this.thc = thc;
  }

  public Edible cbd(String cbd) {
    this.cbd = cbd;
    return this;
  }

   /**
   * CBD measurement for this edible.
   * @return cbd
  **/
  @ApiModelProperty(example = "100mg", value = "CBD measurement for this edible.")
  public String getCbd() {
    return cbd;
  }

  public void setCbd(String cbd) {
    this.cbd = cbd;
  }

  public Edible cannabis(String cannabis) {
    this.cannabis = cannabis;
    return this;
  }

   /**
   * Cannabis measurement for this edible.
   * @return cannabis
  **/
  @ApiModelProperty(example = "0mg", value = "Cannabis measurement for this edible.")
  public String getCannabis() {
    return cannabis;
  }

  public void setCannabis(String cannabis) {
    this.cannabis = cannabis;
  }

  public Edible hashOil(String hashOil) {
    this.hashOil = hashOil;
    return this;
  }

   /**
   * Hash oil measurement for this edible.
   * @return hashOil
  **/
  @ApiModelProperty(example = "0mg", value = "Hash oil measurement for this edible.")
  public String getHashOil() {
    return hashOil;
  }

  public void setHashOil(String hashOil) {
    this.hashOil = hashOil;
  }

  public Edible createdAt(DateTime createdAt) {
    this.createdAt = createdAt;
    return this;
  }

   /**
   * Date and time record was created, UTC.
   * @return createdAt
  **/
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was created, UTC.")
  public DateTime getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(DateTime createdAt) {
    this.createdAt = createdAt;
  }

  public Edible updatedAt(DateTime updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }

   /**
   * Date and time record was updated, UTC.
   * @return updatedAt
  **/
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was updated, UTC.")
  public DateTime getUpdatedAt() {
    return updatedAt;
  }

  public void setUpdatedAt(DateTime updatedAt) {
    this.updatedAt = updatedAt;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Edible edible = (Edible) o;
    return Objects.equals(this.name, edible.name) &&
        Objects.equals(this.ocpc, edible.ocpc) &&
        Objects.equals(this.brand, edible.brand) &&
        Objects.equals(this.type, edible.type) &&
        Objects.equals(this.strain, edible.strain) &&
        Objects.equals(this.description, edible.description) &&
        Objects.equals(this.qr, edible.qr) &&
        Objects.equals(this.url, edible.url) &&
        Objects.equals(this.image, edible.image) &&
        Objects.equals(this.labTest, edible.labTest) &&
        Objects.equals(this.thc, edible.thc) &&
        Objects.equals(this.cbd, edible.cbd) &&
        Objects.equals(this.cannabis, edible.cannabis) &&
        Objects.equals(this.hashOil, edible.hashOil) &&
        Objects.equals(this.createdAt, edible.createdAt) &&
        Objects.equals(this.updatedAt, edible.updatedAt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, ocpc, brand, type, strain, description, qr, url, image, labTest, thc, cbd, cannabis, hashOil, createdAt, updatedAt);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
  
}

