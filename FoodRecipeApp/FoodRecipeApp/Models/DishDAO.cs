using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodRecipeApp.Models
{
    class DishDAO
    {
        public static BindingList<Dish> GetAll()
        {
            DBFoodRecipesEntities db = new DBFoodRecipesEntities();
            List<FoodRecipe> foodRecipes = db.FoodRecipes.ToList();
            var bindingList = new BindingList<Dish>();

            foreach(var fr in foodRecipes)
            {
                var dish = new Dish();
                var steps = fr.FoodCookingSteps.ToList();

                dish.ImageDish = steps[steps.Count - 1].ImageStep;
                dish.ID = fr.ID;
                dish.NameDish = fr.NameFood;

                bindingList.Add(dish);
            }
            return bindingList;
        }
    }
}
