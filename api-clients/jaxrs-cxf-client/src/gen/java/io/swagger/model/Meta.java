package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Meta  {
  
  @ApiModelProperty(example = "{&quot;total&quot;:592,&quot;count&quot;:10,&quot;per_page&quot;:10,&quot;current_page&quot;:1,&quot;total_pages&quot;:60,&quot;links&quot;:{&quot;next&quot;:&quot;https://api.otreeba.com/v1/seed-companies?sort&#x3D;-createdAt&amp;count&#x3D;10&amp;page&#x3D;2&quot;}}", value = "Information about the pagination of the data.")
  private Object pagination = null;

 /**
   * Information about the pagination of the data.
   * @return pagination
  **/
  public Object getPagination() {
    return pagination;
  }

  public void setPagination(Object pagination) {
    this.pagination = pagination;
  }

  public Meta pagination(Object pagination) {
    this.pagination = pagination;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Meta {\n");
    
    sb.append("    pagination: ").append(toIndentedString(pagination)).append("\n");
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

