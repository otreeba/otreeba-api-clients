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
  public class Flower {
    /// <summary>
    /// Name of the flowers.
    /// </summary>
    /// <value>Name of the flowers.</value>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Open Cannabis Product Code for the flowers.
    /// </summary>
    /// <value>Open Cannabis Product Code for the flowers.</value>
    [DataMember(Name="ocpc", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ocpc")]
    public string Ocpc { get; set; }

    /// <summary>
    /// Name and Open Cannabis Product Code of the brand that created these flowers.
    /// </summary>
    /// <value>Name and Open Cannabis Product Code of the brand that created these flowers.</value>
    [DataMember(Name="brand", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "brand")]
    public Object Brand { get; set; }

    /// <summary>
    /// Type of flowers.
    /// </summary>
    /// <value>Type of flowers.</value>
    [DataMember(Name="type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "type")]
    public string Type { get; set; }

    /// <summary>
    /// Name and Open Cannabis Product Code of the strain for these flowers.
    /// </summary>
    /// <value>Name and Open Cannabis Product Code of the strain for these flowers.</value>
    [DataMember(Name="strain", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "strain")]
    public Object Strain { get; set; }

    /// <summary>
    /// Description of the flowers.
    /// </summary>
    /// <value>Description of the flowers.</value>
    [DataMember(Name="description", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "description")]
    public string Description { get; set; }

    /// <summary>
    /// URL for QR that leads to page on Cannabis Reports.
    /// </summary>
    /// <value>URL for QR that leads to page on Cannabis Reports.</value>
    [DataMember(Name="qr", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "qr")]
    public string Qr { get; set; }

    /// <summary>
    /// URL for the flowers on Cannabis Reports.
    /// </summary>
    /// <value>URL for the flowers on Cannabis Reports.</value>
    [DataMember(Name="url", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "url")]
    public string Url { get; set; }

    /// <summary>
    /// URL for the main photo of the flowers.
    /// </summary>
    /// <value>URL for the main photo of the flowers.</value>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public string Image { get; set; }

    /// <summary>
    /// URL for the PDF containing lab testing information for these flowers.
    /// </summary>
    /// <value>URL for the PDF containing lab testing information for these flowers.</value>
    [DataMember(Name="labTest", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "labTest")]
    public string LabTest { get; set; }

    /// <summary>
    /// THC measurement for these flowers.
    /// </summary>
    /// <value>THC measurement for these flowers.</value>
    [DataMember(Name="thc", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "thc")]
    public string Thc { get; set; }

    /// <summary>
    /// CBD measurement for these flowers.
    /// </summary>
    /// <value>CBD measurement for these flowers.</value>
    [DataMember(Name="cbd", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cbd")]
    public string Cbd { get; set; }

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
      sb.Append("class Flower {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Ocpc: ").Append(Ocpc).Append("\n");
      sb.Append("  Brand: ").Append(Brand).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Strain: ").Append(Strain).Append("\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  Qr: ").Append(Qr).Append("\n");
      sb.Append("  Url: ").Append(Url).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  LabTest: ").Append(LabTest).Append("\n");
      sb.Append("  Thc: ").Append(Thc).Append("\n");
      sb.Append("  Cbd: ").Append(Cbd).Append("\n");
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
