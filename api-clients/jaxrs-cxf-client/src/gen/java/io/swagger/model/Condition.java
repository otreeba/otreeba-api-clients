package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Condition  {
  
  @ApiModelProperty(example = "Fibromyalgia", required = true, value = "Name of the condition.")
  private String name = null;
  @ApiModelProperty(example = "fibromyalgia", value = "Slug based on the condition name.")
  private String slug = null;
  @ApiModelProperty(example = "Fibromyalgia, an illness characterized by chronic pain combined with some form of psychiatric diagnosis, still lacks an observable underlying pathology. The disease picture of fibromyalgia usually includes widespread chronic pains in muscles and connective tissue, joint stiffness, general weakness, exhaustion, depression, anxiety, and insomnia. “Nearly 2 percent of the general population in the United States suffers from fibromyalgia, the majority of them being middle-aged females.”", value = "Description of the condition.")
  private String description = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was created, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar createdAt = null;
  @ApiModelProperty(example = "2014-04-09 09:29:57", value = "Date and time record was updated, UTC.")
  private javax.xml.datatype.XMLGregorianCalendar updatedAt = null;

 /**
   * Name of the condition.
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Condition name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Slug based on the condition name.
   * @return slug
  **/
  public String getSlug() {
    return slug;
  }

  public void setSlug(String slug) {
    this.slug = slug;
  }

  public Condition slug(String slug) {
    this.slug = slug;
    return this;
  }

 /**
   * Description of the condition.
   * @return description
  **/
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Condition description(String description) {
    this.description = description;
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

  public Condition createdAt(javax.xml.datatype.XMLGregorianCalendar createdAt) {
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

  public Condition updatedAt(javax.xml.datatype.XMLGregorianCalendar updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Condition {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    slug: ").append(toIndentedString(slug)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
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

