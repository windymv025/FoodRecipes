using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodRecipeApp.Models
{
    class FavoriteDishDAO
    {
        public static BindingList<Dish> GetAll()
        {
            DBFoodRecipesEntities db = new DBFoodRecipesEntities();
            List<FavoriteFood> favoriteFoods = db.FavoriteFoods.ToList();
            var bindingList = new BindingList<Dish>();

            foreach (var ff in favoriteFoods)
            {
                var dish = new Dish();
                var steps = ff.FoodRecipe.FoodCookingSteps.ToList();

                dish.ImageDish = steps[steps.Count - 1].ImageStep;
                dish.ID = ff.IdFoodRecipes;
                dish.NameDish = ff.FoodRecipe.NameFood;

                bindingList.Add(dish);
            }
            return bindingList;
        }
    }
}
