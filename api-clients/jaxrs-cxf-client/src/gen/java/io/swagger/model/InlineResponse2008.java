package io.swagger.model;

import io.swagger.model.InlineResponse2008Meta;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class InlineResponse2008  {
  
  @ApiModelProperty(example = "null", value = "")
  private InlineResponse2008Meta meta = null;

 /**
   * Get meta
   * @return meta
  **/
  public InlineResponse2008Meta getMeta() {
    return meta;
  }

  public void setMeta(InlineResponse2008Meta meta) {
    this.meta = meta;
  }

  public InlineResponse2008 meta(InlineResponse2008Meta meta) {
    this.meta = meta;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2008 {\n");
    
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
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

