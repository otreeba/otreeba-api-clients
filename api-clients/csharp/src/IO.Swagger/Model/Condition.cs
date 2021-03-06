/* 
 * Otreeba Open Cannabis API
 *
 * This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).
 *
 * OpenAPI spec version: 1.0.0
 * Contact: api@otreeba.com
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Swagger.Client.SwaggerDateConverter;

namespace IO.Swagger.Model
{
    /// <summary>
    /// Condition
    /// </summary>
    [DataContract]
    public partial class Condition :  IEquatable<Condition>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Condition" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected Condition() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="Condition" /> class.
        /// </summary>
        /// <param name="Name">Name of the condition. (required).</param>
        /// <param name="Slug">Slug based on the condition name..</param>
        /// <param name="Description">Description of the condition..</param>
        /// <param name="CreatedAt">Date and time record was created, UTC..</param>
        /// <param name="UpdatedAt">Date and time record was updated, UTC..</param>
        public Condition(string Name = default(string), string Slug = default(string), string Description = default(string), DateTime? CreatedAt = default(DateTime?), DateTime? UpdatedAt = default(DateTime?))
        {
            // to ensure "Name" is required (not null)
            if (Name == null)
            {
                throw new InvalidDataException("Name is a required property for Condition and cannot be null");
            }
            else
            {
                this.Name = Name;
            }
            this.Slug = Slug;
            this.Description = Description;
            this.CreatedAt = CreatedAt;
            this.UpdatedAt = UpdatedAt;
        }
        
        /// <summary>
        /// Name of the condition.
        /// </summary>
        /// <value>Name of the condition.</value>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// Slug based on the condition name.
        /// </summary>
        /// <value>Slug based on the condition name.</value>
        [DataMember(Name="slug", EmitDefaultValue=false)]
        public string Slug { get; set; }

        /// <summary>
        /// Description of the condition.
        /// </summary>
        /// <value>Description of the condition.</value>
        [DataMember(Name="description", EmitDefaultValue=false)]
        public string Description { get; set; }

        /// <summary>
        /// Date and time record was created, UTC.
        /// </summary>
        /// <value>Date and time record was created, UTC.</value>
        [DataMember(Name="createdAt", EmitDefaultValue=false)]
        public DateTime? CreatedAt { get; set; }

        /// <summary>
        /// Date and time record was updated, UTC.
        /// </summary>
        /// <value>Date and time record was updated, UTC.</value>
        [DataMember(Name="updatedAt", EmitDefaultValue=false)]
        public DateTime? UpdatedAt { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class Condition {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Slug: ").Append(Slug).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  CreatedAt: ").Append(CreatedAt).Append("\n");
            sb.Append("  UpdatedAt: ").Append(UpdatedAt).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="obj">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object obj)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            return this.Equals(obj as Condition);
        }

        /// <summary>
        /// Returns true if Condition instances are equal
        /// </summary>
        /// <param name="other">Instance of Condition to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Condition other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Name == other.Name ||
                    this.Name != null &&
                    this.Name.Equals(other.Name)
                ) && 
                (
                    this.Slug == other.Slug ||
                    this.Slug != null &&
                    this.Slug.Equals(other.Slug)
                ) && 
                (
                    this.Description == other.Description ||
                    this.Description != null &&
                    this.Description.Equals(other.Description)
                ) && 
                (
                    this.CreatedAt == other.CreatedAt ||
                    this.CreatedAt != null &&
                    this.CreatedAt.Equals(other.CreatedAt)
                ) && 
                (
                    this.UpdatedAt == other.UpdatedAt ||
                    this.UpdatedAt != null &&
                    this.UpdatedAt.Equals(other.UpdatedAt)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            // credit: http://stackoverflow.com/a/263416/677735
            unchecked // Overflow is fine, just wrap
            {
                int hash = 41;
                // Suitable nullity checks etc, of course :)
                if (this.Name != null)
                    hash = hash * 59 + this.Name.GetHashCode();
                if (this.Slug != null)
                    hash = hash * 59 + this.Slug.GetHashCode();
                if (this.Description != null)
                    hash = hash * 59 + this.Description.GetHashCode();
                if (this.CreatedAt != null)
                    hash = hash * 59 + this.CreatedAt.GetHashCode();
                if (this.UpdatedAt != null)
                    hash = hash * 59 + this.UpdatedAt.GetHashCode();
                return hash;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
