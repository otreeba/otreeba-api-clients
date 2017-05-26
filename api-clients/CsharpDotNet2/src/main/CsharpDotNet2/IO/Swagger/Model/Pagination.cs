using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class Pagination {
    /// <summary>
    /// Total number of results available.
    /// </summary>
    /// <value>Total number of results available.</value>
    [DataMember(Name="total", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "total")]
    public int? Total { get; set; }

    /// <summary>
    /// Number of results to return. Default 10. Max 50.
    /// </summary>
    /// <value>Number of results to return. Default 10. Max 50.</value>
    [DataMember(Name="count", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "count")]
    public int? Count { get; set; }

    /// <summary>
    /// Number of results per page.
    /// </summary>
    /// <value>Number of results per page.</value>
    [DataMember(Name="per_page", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "per_page")]
    public int? PerPage { get; set; }

    /// <summary>
    /// Page of results.
    /// </summary>
    /// <value>Page of results.</value>
    [DataMember(Name="current_page", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "current_page")]
    public int? CurrentPage { get; set; }

    /// <summary>
    /// Total number of pages of results.
    /// </summary>
    /// <value>Total number of pages of results.</value>
    [DataMember(Name="total_pages", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "total_pages")]
    public int? TotalPages { get; set; }

    /// <summary>
    /// Links to the previous and/or next pages of results.
    /// </summary>
    /// <value>Links to the previous and/or next pages of results.</value>
    [DataMember(Name="links", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "links")]
    public Object Links { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Pagination {\n");
      sb.Append("  Total: ").Append(Total).Append("\n");
      sb.Append("  Count: ").Append(Count).Append("\n");
      sb.Append("  PerPage: ").Append(PerPage).Append("\n");
      sb.Append("  CurrentPage: ").Append(CurrentPage).Append("\n");
      sb.Append("  TotalPages: ").Append(TotalPages).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
