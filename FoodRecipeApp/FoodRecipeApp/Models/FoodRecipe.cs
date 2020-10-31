//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FoodRecipeApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class FoodRecipe
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public FoodRecipe()
        {
            this.FoodCookingSteps = new HashSet<FoodCookingStep>();
        }
    
        public int ID { get; set; }
        public string NameFood { get; set; }
        public string DishDescription { get; set; }
        public string CookingIngredients { get; set; }
        public string ulrVideo { get; set; }
    
        public virtual FavoriteFood FavoriteFood { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FoodCookingStep> FoodCookingSteps { get; set; }
    }
}
