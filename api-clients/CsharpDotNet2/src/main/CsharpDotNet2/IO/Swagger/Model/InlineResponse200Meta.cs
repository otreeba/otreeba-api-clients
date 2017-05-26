using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// Gets the Strains for a Seed Company listing from a given OCPC.
  /// </summary>
  [DataContract]
  public class InlineResponse200Meta {
    /// <summary>
    /// Gets the Strains for a Seed Company listing from a given OCPC.
    /// </summary>
    /// <value>Gets the Strains for a Seed Company listing from a given OCPC.</value>
    [DataMember(Name="pagination", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pagination")]
    public Pagination Pagination { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse200Meta {\n");
      sb.Append("  Pagination: ").Append(Pagination).Append("\n");
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
