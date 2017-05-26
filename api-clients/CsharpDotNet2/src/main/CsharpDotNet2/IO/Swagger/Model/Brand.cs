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
  public class Brand {
    /// <summary>
    /// Name of the brand.
    /// </summary>
    /// <value>Name of the brand.</value>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Open Cannabis Product Code for the brand.
    /// </summary>
    /// <value>Open Cannabis Product Code for the brand.</value>
    [DataMember(Name="ocpc", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ocpc")]
    public string Ocpc { get; set; }

    /// <summary>
    /// URL for brand on Otreeba.
    /// </summary>
    /// <value>URL for brand on Otreeba.</value>
    [DataMember(Name="link", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "link")]
    public string Link { get; set; }

    /// <summary>
    /// URL for QR that leads to page on Cannabis Reports.
    /// </summary>
    /// <value>URL for QR that leads to page on Cannabis Reports.</value>
    [DataMember(Name="qr", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "qr")]
    public string Qr { get; set; }

    /// <summary>
    /// URL for brand on Cannabis Reports.
    /// </summary>
    /// <value>URL for brand on Cannabis Reports.</value>
    [DataMember(Name="url", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "url")]
    public string Url { get; set; }

    /// <summary>
    /// URL for logo for brand.
    /// </summary>
    /// <value>URL for logo for brand.</value>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public string Image { get; set; }

    /// <summary>
    /// OCPCs of the flowers from this brand.
    /// </summary>
    /// <value>OCPCs of the flowers from this brand.</value>
    [DataMember(Name="flowers", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "flowers")]
    public List<string> Flowers { get; set; }

    /// <summary>
    /// OCPCs of the extracts from this brand.
    /// </summary>
    /// <value>OCPCs of the extracts from this brand.</value>
    [DataMember(Name="extracts", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "extracts")]
    public List<string> Extracts { get; set; }

    /// <summary>
    /// OCPCs of the edibles from this brand.
    /// </summary>
    /// <value>OCPCs of the edibles from this brand.</value>
    [DataMember(Name="edibles", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "edibles")]
    public List<string> Edibles { get; set; }

    /// <summary>
    /// OCPCs of the products from this brand.
    /// </summary>
    /// <value>OCPCs of the products from this brand.</value>
    [DataMember(Name="products", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "products")]
    public List<string> Products { get; set; }

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
      sb.Append("class Brand {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Ocpc: ").Append(Ocpc).Append("\n");
      sb.Append("  Link: ").Append(Link).Append("\n");
      sb.Append("  Qr: ").Append(Qr).Append("\n");
      sb.Append("  Url: ").Append(Url).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  Flowers: ").Append(Flowers).Append("\n");
      sb.Append("  Extracts: ").Append(Extracts).Append("\n");
      sb.Append("  Edibles: ").Append(Edibles).Append("\n");
      sb.Append("  Products: ").Append(Products).Append("\n");
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
