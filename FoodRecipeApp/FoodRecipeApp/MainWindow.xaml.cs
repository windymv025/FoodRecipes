using FoodRecipeApp.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace FoodRecipeApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private List<FoodRecipe> foodRecipes;
        private DBFoodRecipesEntities db;
        private int dishNumberInPage;
        private const int rowPerPage = 2;
        private int totalPages;
        //private BindingList<Dish> dishes;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void loadDuLieu(object sender, RoutedEventArgs e)
        {
            db = new DBFoodRecipesEntities();
            foodRecipes = db.FoodRecipes.ToList();
            dishNumberInPage = 6;
            totalPages = (foodRecipes.Count / rowPerPage) + ((foodRecipes.Count % rowPerPage) == 0 ? 0 : 1);
            LabelPage.Content = $"1/{totalPages}";
            if (dishNumberInPage == 6)
            {
                grid6.Visibility = Visibility.Visible;
                grid8.Visibility = Visibility.Collapsed;
                visibleDishInPage(1);
            }
            else
            {
                grid6.Visibility = Visibility.Collapsed;
                grid8.Visibility = Visibility.Visible;
                visibleDishInPage(1);
            }
            //dishes = DishDAO.GetAll();
            //listDish.ItemsSource = dishes;
        }

        private void phanTrang()
        {
            
        }

        private void visibleDishInPage(int page)
        {
            var dishes = foodRecipes.Skip((page - 1) * rowPerPage).Take(rowPerPage);
            if(dishNumberInPage==6)
            {

            }
            else
            {

            }
        }

        private void ListViewItem_MouseEnter(object sender, MouseEventArgs e)
        {
            //Set tooltip
            if(Tg_btn.IsChecked == true)
            {
                tt_home.Visibility = Visibility.Collapsed;
                tt_favorite.Visibility = Visibility.Collapsed;
                tt_add.Visibility = Visibility.Collapsed;
                tt_search.Visibility = Visibility.Collapsed;
                tt_contact.Visibility = Visibility.Collapsed;
            }
            else
            {
                tt_home.Visibility = Visibility.Visible;
                tt_favorite.Visibility = Visibility.Visible;
                tt_add.Visibility = Visibility.Visible;
                tt_search.Visibility = Visibility.Visible;
                tt_contact.Visibility = Visibility.Visible;
            }
        }

        private void Tg_btn_Unchecked(object sender, RoutedEventArgs e)
        {
            img_bg.Opacity = 1;
        }

        private void Tg_btn_Checked(object sender, RoutedEventArgs e)
        {
            img_bg.Opacity = 0.3;
        }

        private void bg_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Tg_btn.IsChecked = false;
        }

    }
}
