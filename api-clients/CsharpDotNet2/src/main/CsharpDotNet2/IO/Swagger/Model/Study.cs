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
  public class Study {
    /// <summary>
    /// Name of the study.
    /// </summary>
    /// <value>Name of the study.</value>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Year of the study.
    /// </summary>
    /// <value>Year of the study.</value>
    [DataMember(Name="year", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "year")]
    public int? Year { get; set; }

    /// <summary>
    /// Digital Object Identifier for the study.
    /// </summary>
    /// <value>Digital Object Identifier for the study.</value>
    [DataMember(Name="doi", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "doi")]
    public string Doi { get; set; }

    /// <summary>
    /// PubMed ID for the study.
    /// </summary>
    /// <value>PubMed ID for the study.</value>
    [DataMember(Name="pubMedId", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pubMedId")]
    public string PubMedId { get; set; }

    /// <summary>
    /// Slug based on the study name.
    /// </summary>
    /// <value>Slug based on the study name.</value>
    [DataMember(Name="slug", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "slug")]
    public string Slug { get; set; }

    /// <summary>
    /// Key findings for the study.
    /// </summary>
    /// <value>Key findings for the study.</value>
    [DataMember(Name="keyFindings", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "keyFindings")]
    public string KeyFindings { get; set; }

    /// <summary>
    /// Gets or Sets Conditions
    /// </summary>
    [DataMember(Name="conditions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "conditions")]
    public List<Condition> Conditions { get; set; }

    /// <summary>
    /// Date and time record was created, UTC.
    /// </summary>
    /// <value>Date and time record was created, UTC.</value>
    [DataMember(Name="createdAt", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "createdAt")]
    public DateTime? CreatedAt { get; set; }

    /// <summary>
    /// Date and time record was updated, UTC.
    /// </summary>
    /// <value>Date and time record was updated, UTC.</value>
    [DataMember(Name="updatedAt", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "updatedAt")]
    public DateTime? UpdatedAt { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Study {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Year: ").Append(Year).Append("\n");
      sb.Append("  Doi: ").Append(Doi).Append("\n");
      sb.Append("  PubMedId: ").Append(PubMedId).Append("\n");
      sb.Append("  Slug: ").Append(Slug).Append("\n");
      sb.Append("  KeyFindings: ").Append(KeyFindings).Append("\n");
      sb.Append("  Conditions: ").Append(Conditions).Append("\n");
      sb.Append("  CreatedAt: ").Append(CreatedAt).Append("\n");
      sb.Append("  UpdatedAt: ").Append(UpdatedAt).Append("\n");
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
