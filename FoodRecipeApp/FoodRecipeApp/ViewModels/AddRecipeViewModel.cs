using FoodRecipeApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodRecipeApp.ViewModels
{
    class AddRecipeViewModel
    {
        public FoodRecipe FoodRecipe { get; set; }
        public List<FoodCookingStep> FoodCookingSteps { get; set; }

        public void saveAddFoodRecipe()
        {
            this.setIDFoodRecipe();
            using(DBFoodRecipesEntities db = new DBFoodRecipesEntities())
            {
                db.FoodRecipes.Add(FoodRecipe);
                foreach(FoodCookingStep step in FoodCookingSteps)
                {
                    db.FoodCookingSteps.Add(step);
                }
            }
        }
        private void setIDFoodRecipe()
        {
            using (DBFoodRecipesEntities db = new DBFoodRecipesEntities())
            {
                FoodRecipe.ID = db.FoodRecipes.Count() + 1;
            }
            foreach (FoodCookingStep step in FoodCookingSteps)
            {
                step.IdFoodRecipes = FoodRecipe.ID;
            }
        }
    }
}
