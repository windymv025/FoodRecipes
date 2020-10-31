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
        private BindingList<Dish> dishes;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void loadDuLieu(object sender, RoutedEventArgs e)
        {
            db = new DBFoodRecipesEntities();
            foodRecipes = db.FoodRecipes.ToList();
            dishes = DishDAO.GetAll();
            //listDish.ItemsSource = dishes;
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

        private void img_contact_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {

            //grid6.Visibility = Visibility.Collapsed;
            //grid8.Visibility = Visibility.Visible;
        }
    }
}
