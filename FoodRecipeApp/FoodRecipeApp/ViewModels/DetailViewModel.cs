using FoodRecipeApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodRecipeApp.ViewModels
{
    public class FoodCookingStepDao
    {
        public static List<FoodCookingStep> Get(FoodRecipe foodRecipe)
        {
            List<FoodCookingStep> resulf;
            using (DBFoodRecipesEntities db = new DBFoodRecipesEntities())
            {
                var foodCookingSteps = from f in db.FoodCookingSteps
                                       select f;
                var list = from step in foodCookingSteps
                           where step.IdFoodRecipes == foodRecipe.ID
                           select step;

                resulf = list.ToList();
            }

            return resulf;
        }
    }
    class DetailViewModel
    {
        public FoodRecipe FoodRecipe { get; set; }
        public List<FoodCookingStep> FoodCookingSteps { get; set; }
        public DetailViewModel()
        {

        }
        public DetailViewModel(FoodRecipe foodRecipe)
        {
            this.FoodRecipe = foodRecipe;
            this.FoodCookingSteps = FoodCookingStepDao.Get(foodRecipe);
        }
        public void deleteFavoriteFood()
        {
            using (DBFoodRecipesEntities db = new DBFoodRecipesEntities())
            {
                var favoriteFood = from f in db.FavoriteFoods
                                   where f.IdFoodRecipes == this.FoodRecipe.ID
                                   select f;

                db.FavoriteFoods.Remove(favoriteFood.ToList()[0]);
                db.SaveChanges();
            }
        }
        public void addFavoriteFood()
        {
            using (DBFoodRecipesEntities db = new DBFoodRecipesEntities())
            {

                db.FavoriteFoods.Add(new FavoriteFood() { IdFoodRecipes = FoodRecipe.ID });
                db.SaveChanges();
            }
        }
        public bool isFavoriteFood()
        {
            bool resulf = false;
            int count = 0;
            using (DBFoodRecipesEntities db = new DBFoodRecipesEntities())
            {
                var list = from f in db.FavoriteFoods
                           where f.IdFoodRecipes == this.FoodRecipe.ID
                           select f;
                count = list.Count();
            }
            if (count == 0)
            {
                resulf = false;
            }
            else
            {
                resulf = true;
            }
            return resulf;
        }
    }
}
