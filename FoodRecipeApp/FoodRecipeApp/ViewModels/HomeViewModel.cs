using FoodRecipeApp.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.Remoting;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace FoodRecipeApp.ViewModels
{
    public class FoodRecipeDao
    {
        public static List<FoodRecipe> GetAll()
        {
            List<FoodRecipe> foodRecipes;
            using(DBFoodRecipesEntities db = new DBFoodRecipesEntities())
            {
                foodRecipes = db.FoodRecipes.ToList();
            }
            return foodRecipes;
        }
    }
    public class FavoriteFoodDao
    {
        public static List<FoodRecipe> GetAll()
        {
            List<FoodRecipe> resulf;
            using (DBFoodRecipesEntities db = new DBFoodRecipesEntities())
            {
                var favoriteFoods = from f in db.FavoriteFoods
                                    select f.FoodRecipe;
                resulf = favoriteFoods.ToList();
            }

            return resulf;
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
    public class LogFile
    {
        public int NumberOfDishInPerPage { get; set; }
        public int TypeSort { get; set; }
        private const string FILE_NAME = "logfile.log";
        public LogFile()
        {
            TypeSort = -1;
            NumberOfDishInPerPage = 6;
        }
        public void readLog()
        {
            if (!File.Exists(FILE_NAME))
            {
                NumberOfDishInPerPage = 6;
                TypeSort = -1;
            }
            else
            {
                using (FileStream f = new FileStream(FILE_NAME, FileMode.Open, FileAccess.Read))
                {
                    if(!f.CanRead)
                    {
                        NumberOfDishInPerPage = 6;
                        TypeSort = -1;
                    }
                    else
                    {
                        NumberOfDishInPerPage = f.ReadByte();
                        TypeSort = f.ReadByte();
                    }
                    f.Close();
                }
            }
        }
        public void writeLog()
        {
            if (File.Exists(FILE_NAME))
                File.Delete(FILE_NAME);
            using (FileStream f = new FileStream(FILE_NAME, FileMode.OpenOrCreate, FileAccess.Write))
            {
                f.WriteByte((byte)NumberOfDishInPerPage);
                f.WriteByte((byte)TypeSort);
                f.Close();
            }
        }
    }

    class HomeViewModel
    {
        public List<FoodRecipe> FoodRecipes { get; set; }
        public PagingInfo PagingInfo { get; set; }
        public LogFile LogFile { get; set; }

        public List<FoodRecipe> loadPage(int pageNumber, int numDishInPage)
        {
            if (pageNumber > PagingInfo.TotalPage)
                pageNumber = 1;
            if (pageNumber < 1)
                pageNumber = PagingInfo.TotalPage;

            PagingInfo.NumberOfDishInPerPage = numDishInPage;
            PagingInfo.CurrentPage = pageNumber;

            List<FoodRecipe> resulf = FoodRecipes.Skip((pageNumber - 1) * PagingInfo.NumberOfDishInPerPage).Take(PagingInfo.NumberOfDishInPerPage).ToList();
            
            return resulf;
        }
        public void sortAscendingName()
        {
            var listAsc = from foodRecipe in FoodRecipes
                          orderby foodRecipe.NameFood
                          select foodRecipe;

            this.FoodRecipes = listAsc.ToList();
        }
        public void sortDescendingName()
        {
            var listAsc = from foodRecipe in FoodRecipes
                          orderby foodRecipe.NameFood descending
                          select foodRecipe;

            this.FoodRecipes = listAsc.ToList();
        }

        public void loadLogFile()
        {
            LogFile.readLog();
            PagingInfo.NumberOfDishInPerPage = LogFile.NumberOfDishInPerPage;
            if(LogFile.TypeSort == 0)
            {
                this.sortAscendingName();
            }
            else
            {
                if (LogFile.TypeSort == 1)
                    this.sortDescendingName();
            }
        }

        public void saveLogfile()
        {
            LogFile.writeLog();
        }
        
    }
}
