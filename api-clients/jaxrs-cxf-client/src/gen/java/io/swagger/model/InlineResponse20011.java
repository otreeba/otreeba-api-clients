package io.swagger.model;

import io.swagger.model.InlineResponse20011Meta;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class InlineResponse20011  {
  
  @ApiModelProperty(example = "null", value = "")
  private InlineResponse20011Meta meta = null;

 /**
   * Get meta
   * @return meta
  **/
  public InlineResponse20011Meta getMeta() {
    return meta;
  }

  public void setMeta(InlineResponse20011Meta meta) {
    this.meta = meta;
  }

  public InlineResponse20011 meta(InlineResponse20011Meta meta) {
    this.meta = meta;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20011 {\n");
    
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

