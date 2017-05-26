package io.swagger.model;

import io.swagger.model.InlineResponse2006Meta;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class InlineResponse2006  {
  
  @ApiModelProperty(example = "null", value = "")
  private InlineResponse2006Meta meta = null;

 /**
   * Get meta
   * @return meta
  **/
  public InlineResponse2006Meta getMeta() {
    return meta;
  }

  public void setMeta(InlineResponse2006Meta meta) {
    this.meta = meta;
  }

  public InlineResponse2006 meta(InlineResponse2006Meta meta) {
    this.meta = meta;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2006 {\n");
    
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

