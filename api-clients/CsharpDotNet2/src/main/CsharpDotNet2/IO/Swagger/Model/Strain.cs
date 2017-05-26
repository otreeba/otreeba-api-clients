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
  public class Strain {
    /// <summary>
    /// Name of the strain.
    /// </summary>
    /// <value>Name of the strain.</value>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Open Cannabis Product Code for the strain.
    /// </summary>
    /// <value>Open Cannabis Product Code for the strain.</value>
    [DataMember(Name="ocpc", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ocpc")]
    public string Ocpc { get; set; }

    /// <summary>
    /// Name and Open Cannabis Product Code of the seed company that created the strain.
    /// </summary>
    /// <value>Name and Open Cannabis Product Code of the seed company that created the strain.</value>
    [DataMember(Name="seedCompany", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "seedCompany")]
    public Object SeedCompany { get; set; }

    /// <summary>
    /// URL for QR that leads to page on Cannabis Reports.
    /// </summary>
    /// <value>URL for QR that leads to page on Cannabis Reports.</value>
    [DataMember(Name="qr", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "qr")]
    public string Qr { get; set; }

    /// <summary>
    /// URL for strain on Cannabis Reports.
    /// </summary>
    /// <value>URL for strain on Cannabis Reports.</value>
    [DataMember(Name="url", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "url")]
    public string Url { get; set; }

    /// <summary>
    /// URL for the main photo of the strain.
    /// </summary>
    /// <value>URL for the main photo of the strain.</value>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public string Image { get; set; }

    /// <summary>
    /// Object of countries that this strain has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'}
    /// </summary>
    /// <value>Object of countries that this strain has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'}</value>
    [DataMember(Name="lineage", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lineage")]
    public Object Lineage { get; set; }

    /// <summary>
    /// Names of the parents of the strains and their associated Open Cannabis Product Codes.
    /// </summary>
    /// <value>Names of the parents of the strains and their associated Open Cannabis Product Codes.</value>
    [DataMember(Name="genetics", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "genetics")]
    public Object Genetics { get; set; }

    /// <summary>
    /// Open Cannabis Product Codes of the children of this strain.
    /// </summary>
    /// <value>Open Cannabis Product Codes of the children of this strain.</value>
    [DataMember(Name="children", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "children")]
    public List<string> Children { get; set; }

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
      sb.Append("class Strain {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Ocpc: ").Append(Ocpc).Append("\n");
      sb.Append("  SeedCompany: ").Append(SeedCompany).Append("\n");
      sb.Append("  Qr: ").Append(Qr).Append("\n");
      sb.Append("  Url: ").Append(Url).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  Lineage: ").Append(Lineage).Append("\n");
      sb.Append("  Genetics: ").Append(Genetics).Append("\n");
      sb.Append("  Children: ").Append(Children).Append("\n");
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
