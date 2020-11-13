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
        public static List<Dish> GetDishInPage(int page, int dishNumberInPage)
        {
            DBFoodRecipesEntities db = new DBFoodRecipesEntities();
            List<FoodRecipe> foodRecipes = db.FoodRecipes.ToList();
            var dishes = foodRecipes.Skip((page - 1) * dishNumberInPage).Take(dishNumberInPage).ToList();
            var list = new List<Dish>();

            foreach (var fr in foodRecipes)
            {
                var dish = new Dish();
                var steps = fr.FoodCookingSteps.ToList();

                dish.ImageDish = steps[steps.Count - 1].ImageStep;
                dish.ID = fr.ID;
                dish.NameDish = fr.NameFood;

                list.Add(dish);
            }
            return list;
        }
    }
}
