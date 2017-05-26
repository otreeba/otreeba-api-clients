package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Pagination  {
  
  @ApiModelProperty(example = "64", value = "Total number of results available.")
  private Integer total = null;
  @ApiModelProperty(example = "10", value = "Number of results to return. Default 10. Max 50.")
  private Integer count = null;
  @ApiModelProperty(example = "10", value = "Number of results per page.")
  private Integer perPage = null;
  @ApiModelProperty(example = "1", value = "Page of results.")
  private Integer currentPage = null;
  @ApiModelProperty(example = "1", value = "Total number of pages of results.")
  private Integer totalPages = null;
  @ApiModelProperty(example = "{&quot;previous&quot;:&quot;https://api.otreeba.com/v1/seed-companies/VUJCJ00000000000000000000/strains?page&#x3D;1&quot;,&quot;next&quot;:&quot;https://api.otreeba.com/v1/seed-companies/VUJCJ00000000000000000000/strains?page&#x3D;3&quot;}", value = "Links to the previous and/or next pages of results.")
  private Object links = null;

 /**
   * Total number of results available.
   * @return total
  **/
  public Integer getTotal() {
    return total;
  }

  public void setTotal(Integer total) {
    this.total = total;
  }

  public Pagination total(Integer total) {
    this.total = total;
    return this;
  }

 /**
   * Number of results to return. Default 10. Max 50.
   * @return count
  **/
  public Integer getCount() {
    return count;
  }

  public void setCount(Integer count) {
    this.count = count;
  }

  public Pagination count(Integer count) {
    this.count = count;
    return this;
  }

 /**
   * Number of results per page.
   * @return perPage
  **/
  public Integer getPerPage() {
    return perPage;
  }

  public void setPerPage(Integer perPage) {
    this.perPage = perPage;
  }

  public Pagination perPage(Integer perPage) {
    this.perPage = perPage;
    return this;
  }

 /**
   * Page of results.
   * @return currentPage
  **/
  public Integer getCurrentPage() {
    return currentPage;
  }

  public void setCurrentPage(Integer currentPage) {
    this.currentPage = currentPage;
  }

  public Pagination currentPage(Integer currentPage) {
    this.currentPage = currentPage;
    return this;
  }

 /**
   * Total number of pages of results.
   * @return totalPages
  **/
  public Integer getTotalPages() {
    return totalPages;
  }

  public void setTotalPages(Integer totalPages) {
    this.totalPages = totalPages;
  }

  public Pagination totalPages(Integer totalPages) {
    this.totalPages = totalPages;
    return this;
  }

 /**
   * Links to the previous and/or next pages of results.
   * @return links
  **/
  public Object getLinks() {
    return links;
  }

  public void setLinks(Object links) {
    this.links = links;
  }

  public Pagination links(Object links) {
    this.links = links;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Pagination {\n");
    
    sb.append("    total: ").append(toIndentedString(total)).append("\n");
    sb.append("    count: ").append(toIndentedString(count)).append("\n");
    sb.append("    perPage: ").append(toIndentedString(perPage)).append("\n");
    sb.append("    currentPage: ").append(toIndentedString(currentPage)).append("\n");
    sb.append("    totalPages: ").append(toIndentedString(totalPages)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
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

