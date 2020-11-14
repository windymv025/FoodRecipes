using FoodRecipeApp.Models;
using FoodRecipeApp.ViewModels;
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
        //public List<FoodRecipe> foodRecipes;
        //public DBFoodRecipesEntities db;
        //private int dishNumberInPage = 6;
        //private const int rowPerPage = 2;
        //private int totalPages;
        //private int page = 1;
        //private BindingList<Dish> dishes;
        HomeViewModel homeViewModel;

        public MainWindow()
        {
            InitializeComponent();

            homeViewModel = new HomeViewModel()
            {
                foodRecipes = FoodRecipeDao.GetAll(),
                PagingInfo = new PagingInfo()
            };
        }

        private void loadDuLieu(object sender, RoutedEventArgs e)
        {

            //Doc tu file log bien dishNumberInPage
            totalPages = (foodRecipes.Count / dishNumberInPage) + ((foodRecipes.Count % dishNumberInPage) == 0 ? 0 : 1);
            LabelPage.Content = $"1/{totalPages}";

            if (dishNumberInPage == 6)
            {
                grid6.Visibility = Visibility.Visible;
                grid8.Visibility = Visibility.Collapsed;
                //visibleDishInPage(page);
            }
            else
            {
                grid6.Visibility = Visibility.Collapsed;
                grid8.Visibility = Visibility.Visible;
               //visibleDishInPage(page);
            }
        }

        private List<Dish> getDishInPage(int page, int dishNumberInPage)
        {
            //if (foodRecipes != null)
            //{
            //    var dishes = foodRecipes.Skip((page - 1) * dishNumberInPage).Take(dishNumberInPage).ToList();
            //    var list = new List<Dish>();

            //    foreach (var fr in foodRecipes)
            //    {
            //        var dish = new Dish();
            //        var steps = fr.FoodCookingSteps.ToList();

            //        dish.ImageDish = steps[steps.Count - 1].ImageStep;
            //        dish.ID = fr.ID;
            //        dish.NameDish = fr.NameFood;

            //        list.Add(dish);
            //    }

            //    return list;
            //}
            return null;
        }

        private void visibleDishInPage(int page)
        {
            //var dishes = getDishInPage(page, dishNumberInPage);
            //if (dishes == null)
            //    return;

            //if (dishNumberInPage == 6)
            //{
            //    img_mon6_1.Source = new BitmapImage(new Uri(dishes[0].ImageDish));
            //    lb_mon6_1.Content = dishes[0].NameDish;

            //    img_mon6_2.Source = new BitmapImage(new Uri(dishes[1].ImageDish));
            //    lb_mon6_2.Content = dishes[1].NameDish;

            //    img_mon6_3.Source = new BitmapImage(new Uri(dishes[2].ImageDish));
            //    lb_mon6_3.Content = dishes[2].NameDish;

            //    img_mon6_4.Source = new BitmapImage(new Uri(dishes[3].ImageDish));
            //    lb_mon6_4.Content = dishes[3].NameDish;

            //    img_mon6_5.Source = new BitmapImage(new Uri(dishes[4].ImageDish));
            //    lb_mon6_5.Content = dishes[4].NameDish;

            //    img_mon6_6.Source = new BitmapImage(new Uri(dishes[5].ImageDish));
            //    lb_mon6_6.Content = dishes[5].NameDish;
            //}
            //else
            //{
            //    img_mon8_1.Source = new BitmapImage(new Uri(dishes[0].ImageDish));
            //    lb_mon8_1.Content = dishes[0].NameDish;

            //    img_mon8_2.Source = new BitmapImage(new Uri(dishes[1].ImageDish));
            //    lb_mon8_2.Content = dishes[1].NameDish;

            //    img_mon8_3.Source = new BitmapImage(new Uri(dishes[2].ImageDish));
            //    lb_mon8_3.Content = dishes[2].NameDish;

            //    img_mon8_4.Source = new BitmapImage(new Uri(dishes[3].ImageDish));
            //    lb_mon8_4.Content = dishes[3].NameDish;

            //    img_mon8_5.Source = new BitmapImage(new Uri(dishes[4].ImageDish));
            //    lb_mon8_5.Content = dishes[4].NameDish;

            //    img_mon8_6.Source = new BitmapImage(new Uri(dishes[5].ImageDish));
            //    lb_mon8_6.Content = dishes[5].NameDish;

            //    img_mon8_7.Source = new BitmapImage(new Uri(dishes[6].ImageDish));
            //    lb_mon8_7.Content = dishes[6].NameDish;

            //    img_mon8_8.Source = new BitmapImage(new Uri(dishes[7].ImageDish));
            //    lb_mon8_8.Content = dishes[7].NameDish;
            //}
        }

        private void ListViewItem_MouseEnter(object sender, MouseEventArgs e)
        {
            //Set tooltip
            if (Tg_btn.IsChecked == true)
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
            contact_screen.Opacity = 1;
        }

        private void Tg_btn_Checked(object sender, RoutedEventArgs e)
        {
            img_bg.Opacity = 0.3;
            contact_screen.Opacity = 0.3;
        }

        private void bg_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Tg_btn.IsChecked = false;
        }

        private void img_contact_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {

            grid6.Visibility = Visibility.Collapsed;
            grid8.Visibility = Visibility.Collapsed;
            bg.Visibility = Visibility.Collapsed;
            contact_screen.Visibility = Visibility.Visible;
            Tg_btn.IsChecked = false;
        }

        private void cbb6_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            dishNumberInPage = 6;
            grid6.Visibility = Visibility.Visible;
            grid8.Visibility = Visibility.Collapsed;
            //visibleDishInPage(page);
        }

        private void cbb8_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            dishNumberInPage = 8;
            grid6.Visibility = Visibility.Collapsed;
            grid8.Visibility = Visibility.Visible;
            //visibleDishInPage(page);
        }

        private void btnNext_Click(object sender, RoutedEventArgs e)
        {
            //if (page < totalPages)
            //{
            //    page++;
            //    visibleDishInPage(page);
            //}
            //else
            //{
            //    page = 1;
            //    visibleDishInPage(page);
            //}
        }

        private void btnPrev_Click(object sender, RoutedEventArgs e)
        {
            //if (page > 1)
            //{
            //    page--;
            //    visibleDishInPage(page);
            //}
            //else
            //{
            //    page = totalPages;
            //    visibleDishInPage(page);
            //}
        }

        //event btn Home
        private void Image_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //if grid 6 or 8, now default 6
            grid6.Visibility = Visibility.Visible;
            grid8.Visibility = Visibility.Collapsed;
            bg.Visibility = Visibility.Visible;
            contact_screen.Visibility = Visibility.Collapsed;
            Tg_btn.IsChecked = false;
        }
    }
}
