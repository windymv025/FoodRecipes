﻿using FoodRecipeApp.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodRecipeApp.ViewModels
{
    class AddRecipeViewModel
    {
        public FoodRecipe FoodRecipe { get; set; }
        public List<FoodCookingStep> FoodCookingSteps { get; set; }

        public AddRecipeViewModel()
        {
            this.FoodRecipe = new FoodRecipe();
            FoodCookingSteps = new List<FoodCookingStep>();
        }

        public void saveAddFoodRecipe()
        {
            //FoodRecipe.FoodImage = "Images/" + saveImage(FoodRecipe.FoodImage);

            this.setIDFoodRecipe();
            using(DBFoodRecipesEntities db = new DBFoodRecipesEntities())
            {
                db.FoodRecipes.Add(FoodRecipe);
                foreach(FoodCookingStep step in FoodCookingSteps)
                {

           //         step.ImageStep = "Images/" + saveImage(step.ImageStep);
                    db.FoodCookingSteps.Add(step);
                }
                db.SaveChanges();
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
        private string saveImage(string file)
        {
            var currentFolder = AppDomain.CurrentDomain.BaseDirectory;

            string detail = file.Split('.')[file.Split('.').Length - 1];

            var info = new FileInfo(file);
            var newName = $"{Guid.NewGuid()}{info.Extension}";

            Directory.CreateDirectory(currentFolder + "Images");

            File.Copy(file, $"{currentFolder}Images\\{newName}");

            return newName;
        }
    }
}
