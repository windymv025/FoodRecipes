﻿using FoodRecipeApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodRecipeApp.ViewModels
{
    public class FoodRecipeDao
    {
        public static List<FoodRecipe> GetAll()
        {
            List<FoodRecipe> foodRecipes;
            using(DBFoodRecipesEntities db = new DBFoodRecipesEntities)
            {
                foodRecipes = db.FoodRecipes.ToList();
            }
            return foodRecipes;
        }
    }
    public class PagingInfo
    {
        public int CurrentPage { get; set; }
        public int TotalPage { get; set; }
        public int RowsPerPage { get; set; }
        public int NumberOfDishInPerPage { get; set; }

        public PagingInfo(int rowsPerpage, int numberOfDishInPerPage, int totalDish)
        {
            CurrentPage = 1;
            RowsPerPage = rowsPerpage;
            NumberOfDishInPerPage = numberOfDishInPerPage;
            TotalPage = totalDish / numberOfDishInPerPage +
                ((totalDish % numberOfDishInPerPage) == 0 ? 0 : 1);
        }
    }

    class HomeViewModel
    {
        public List<FoodRecipe> FoodRecipes { get; set; }
        public PagingInfo PagingInfo { get; set; }
    }
}
