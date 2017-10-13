package io.swagger.model;

import io.swagger.model.Condition;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Study  {
  
  @ApiModelProperty(example = "Trans- β -Caryophyllene: An Effective Antileishmanial Compound Found in Commercial Copaiba Oil (Copaifera spp.).", required = true, value = "Name of the study.")
  private String name = null;
  @ApiModelProperty(example = "2013", value = "Year of the study.")
  private Integer year = null;
  @ApiModelProperty(example = "10.1155/2013/761323", value = "Digital Object Identifier for the study.")
  private String doi = null;
  @ApiModelProperty(example = "23864897", value = "PubMed ID for the study.")
  private String pubMedId = null;
  @ApiModelProperty(example = "trans-b-caryophyllene-an-effective-antileishmanial-compound-found-in-commercial-copaiba-oil-copaifera-spp", value = "Slug based on the study name.")
  private String slug = null;
  @ApiModelProperty(example = "This study pointed out β -caryophyllene as an effective antileishmanial compound.", value = "Key findings for the study.")
  private String keyFindings = null;
  @ApiModelProperty(value = "")
  private List<Condition> conditions = new ArrayList<Condition>();
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was created, UTC.")
  private Date createdAt = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was updated, UTC.")
  private Date updatedAt = null;

 /**
   * Name of the study.
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Study name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Year of the study.
   * @return year
  **/
  public Integer getYear() {
    return year;
  }

  public void setYear(Integer year) {
    this.year = year;
  }

  public Study year(Integer year) {
    this.year = year;
    return this;
  }

 /**
   * Digital Object Identifier for the study.
   * @return doi
  **/
  public String getDoi() {
    return doi;
  }

  public void setDoi(String doi) {
    this.doi = doi;
  }

  public Study doi(String doi) {
    this.doi = doi;
    return this;
  }

 /**
   * PubMed ID for the study.
   * @return pubMedId
  **/
  public String getPubMedId() {
    return pubMedId;
  }

  public void setPubMedId(String pubMedId) {
    this.pubMedId = pubMedId;
  }

  public Study pubMedId(String pubMedId) {
    this.pubMedId = pubMedId;
    return this;
  }

 /**
   * Slug based on the study name.
   * @return slug
  **/
  public String getSlug() {
    return slug;
  }

  public void setSlug(String slug) {
    this.slug = slug;
  }

  public Study slug(String slug) {
    this.slug = slug;
    return this;
  }

 /**
   * Key findings for the study.
   * @return keyFindings
  **/
  public String getKeyFindings() {
    return keyFindings;
  }

  public void setKeyFindings(String keyFindings) {
    this.keyFindings = keyFindings;
  }

  public Study keyFindings(String keyFindings) {
    this.keyFindings = keyFindings;
    return this;
  }

 /**
   * Get conditions
   * @return conditions
  **/
  public List<Condition> getConditions() {
    return conditions;
  }

  public void setConditions(List<Condition> conditions) {
    this.conditions = conditions;
  }

  public Study conditions(List<Condition> conditions) {
    this.conditions = conditions;
    return this;
  }

  public Study addConditionsItem(Condition conditionsItem) {
    this.conditions.add(conditionsItem);
    return this;
  }

 /**
   * Date and time record was created, UTC.
   * @return createdAt
  **/
  public Date getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(Date createdAt) {
    this.createdAt = createdAt;
  }

  public Study createdAt(Date createdAt) {
    this.createdAt = createdAt;
    return this;
  }

 /**
   * Date and time record was updated, UTC.
   * @return updatedAt
  **/
  public Date getUpdatedAt() {
    return updatedAt;
  }

  public void setUpdatedAt(Date updatedAt) {
    this.updatedAt = updatedAt;
  }

  public Study updatedAt(Date updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Study {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    year: ").append(toIndentedString(year)).append("\n");
    sb.append("    doi: ").append(toIndentedString(doi)).append("\n");
    sb.append("    pubMedId: ").append(toIndentedString(pubMedId)).append("\n");
    sb.append("    slug: ").append(toIndentedString(slug)).append("\n");
    sb.append("    keyFindings: ").append(toIndentedString(keyFindings)).append("\n");
    sb.append("    conditions: ").append(toIndentedString(conditions)).append("\n");
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

