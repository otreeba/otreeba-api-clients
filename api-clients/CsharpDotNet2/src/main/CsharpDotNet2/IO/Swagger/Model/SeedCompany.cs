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
  public class SeedCompany {
    /// <summary>
    /// Name of the seed company.
    /// </summary>
    /// <value>Name of the seed company.</value>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Open Cannabis Product Code for the seed company.
    /// </summary>
    /// <value>Open Cannabis Product Code for the seed company.</value>
    [DataMember(Name="ocpc", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ocpc")]
    public string Ocpc { get; set; }

    /// <summary>
    /// URL for QR that leads to page on Cannabis Reports.
    /// </summary>
    /// <value>URL for QR that leads to page on Cannabis Reports.</value>
    [DataMember(Name="qr", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "qr")]
    public string Qr { get; set; }

    /// <summary>
    /// URL for seed company on Cannabis Reports.
    /// </summary>
    /// <value>URL for seed company on Cannabis Reports.</value>
    [DataMember(Name="url", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "url")]
    public string Url { get; set; }

    /// <summary>
    /// URL for logo for seed company.
    /// </summary>
    /// <value>URL for logo for seed company.</value>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public string Image { get; set; }

    /// <summary>
    /// Object of countries that this seed company has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'}
    /// </summary>
    /// <value>Object of countries that this seed company has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'}</value>
    [DataMember(Name="lineage", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lineage")]
    public Object Lineage { get; set; }

    /// <summary>
    /// OCPCs of the strains from this seed company.
    /// </summary>
    /// <value>OCPCs of the strains from this seed company.</value>
    [DataMember(Name="strains", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "strains")]
    public List<string> Strains { get; set; }

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
      sb.Append("class SeedCompany {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Ocpc: ").Append(Ocpc).Append("\n");
      sb.Append("  Qr: ").Append(Qr).Append("\n");
      sb.Append("  Url: ").Append(Url).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  Lineage: ").Append(Lineage).Append("\n");
      sb.Append("  Strains: ").Append(Strains).Append("\n");
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
