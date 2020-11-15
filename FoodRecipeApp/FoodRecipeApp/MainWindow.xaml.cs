using FoodRecipeApp.Models;
using FoodRecipeApp.ViewModels;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
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
            
        }

        private void loadDuLieu(object sender, RoutedEventArgs e)
        {

            //Doc tu file log bien dishNumberInPage
            homeViewModel = new HomeViewModel();
            homeViewModel.FoodRecipes = FoodRecipeDao.GetAll();
            homeViewModel.PagingInfo = new PagingInfo(2, 6, homeViewModel.FoodRecipes.Count);
            

            //this.DataContext = homeViewModel.loadPage(1, homeViewModel.PagingInfo.NumberOfDishInPerPage);
            dishListView.ItemsSource = homeViewModel.loadPage(1, homeViewModel.PagingInfo.NumberOfDishInPerPage);
            //if (homeViewModel.PagingInfo.NumberOfDishInPerPage == 6)
            //{
            //    //grid6.Visibility = Visibility.Visible;
            //    //grid8.Visibility = Visibility.Collapsed;
            //    //visibleDishInPage(homeViewModel.PagingInfo.CurrentPage);
            //}
            //else
            //{
            //    //grid6.Visibility = Visibility.Collapsed;
            //    //grid8.Visibility = Visibility.Visible;
            //    //visibleDishInPage(homeViewModel.PagingInfo.CurrentPage);
            //}

        }

        

        //private void visibleDishInPage(int page)
        //{
        //    var dishes = homeViewModel.loadPage(page, homeViewModel.PagingInfo.NumberOfDishInPerPage);
        //    if (dishes == null)
        //        return;

        //    //MessageBox.Show(dishes[0].FoodImage);
        //    //var bitMap = 

        //    if (homeViewModel.PagingInfo.NumberOfDishInPerPage == 6)
        //    {
        //        img_mon6_1.Source = new BitmapImage(new Uri(dishes[0].FoodImage, UriKind.Relative));
        //        lb_mon6_1.Content = dishes[0].NameFood;

        //        img_mon6_2.Source = new BitmapImage(new Uri(dishes[1].FoodImage, UriKind.Relative));
        //        lb_mon6_2.Content = dishes[1].NameFood;

        //        img_mon6_3.Source = new BitmapImage(new Uri(dishes[2].FoodImage, UriKind.Relative));
        //        lb_mon6_3.Content = dishes[2].NameFood;

        //        img_mon6_4.Source = new BitmapImage(new Uri(dishes[3].FoodImage, UriKind.Relative));
        //        lb_mon6_4.Content = dishes[3].NameFood;

        //        img_mon6_5.Source = new BitmapImage(new Uri(dishes[4].FoodImage, UriKind.Relative));
        //        lb_mon6_5.Content = dishes[4].NameFood;

        //        img_mon6_6.Source = new BitmapImage(new Uri(dishes[5].FoodImage, UriKind.Relative));
        //        lb_mon6_6.Content = dishes[5].NameFood;
        //    }
        //    else
        //    {
        //        img_mon8_1.Source = new BitmapImage(new Uri(dishes[0].FoodImage, UriKind.Relative));
        //        lb_mon8_1.Content = dishes[0].NameFood;

        //        img_mon8_2.Source = new BitmapImage(new Uri(dishes[1].FoodImage, UriKind.Relative));
        //        lb_mon8_2.Content = dishes[1].NameFood;

        //        img_mon8_3.Source = new BitmapImage(new Uri(dishes[2].FoodImage, UriKind.Relative));
        //        lb_mon8_3.Content = dishes[2].NameFood;

        //        img_mon8_4.Source = new BitmapImage(new Uri(dishes[3].FoodImage, UriKind.Relative));
        //        lb_mon8_4.Content = dishes[3].NameFood;

        //        img_mon8_5.Source = new BitmapImage(new Uri(dishes[4].FoodImage, UriKind.Relative));
        //        lb_mon8_5.Content = dishes[4].NameFood;

        //        img_mon8_6.Source = new BitmapImage(new Uri(dishes[5].FoodImage, UriKind.Relative));
        //        lb_mon8_6.Content = dishes[5].NameFood;

        //        img_mon8_7.Source = new BitmapImage(new Uri(dishes[6].FoodImage, UriKind.Relative));
        //        lb_mon8_7.Content = dishes[6].NameFood;

        //        img_mon8_8.Source = new BitmapImage(new Uri(dishes[7].FoodImage, UriKind.Relative));
        //        lb_mon8_8.Content = dishes[7].NameFood;
        //    }
        //}

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

            //grid6.Visibility = Visibility.Collapsed;
            //grid8.Visibility = Visibility.Collapsed;
            bg.Visibility = Visibility.Collapsed;
            contact_screen.Visibility = Visibility.Visible;
            Tg_btn.IsChecked = false;
        }

        private void cbb6_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //dishNumberInPage = 6;
            homeViewModel.PagingInfo.NumberOfDishInPerPage = 6;
            //grid6.Visibility = Visibility.Visible;
            //grid8.Visibility = Visibility.Collapsed;
            homeViewModel.PagingInfo.CurrentPage = 1;
            //visibleDishInPage(1);
            //dishListView.ItemsSource = homeViewModel.loadPage(homeViewModel.PagingInfo.CurrentPage, homeViewModel.PagingInfo.NumberOfDishInPerPage);
        }

        private void cbb8_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //dishNumberInPage = 8;
            homeViewModel.PagingInfo.NumberOfDishInPerPage = 8;

            //grid6.Visibility = Visibility.Collapsed;
            //grid8.Visibility = Visibility.Visible;
            //visibleDishInPage(page);
            homeViewModel.PagingInfo.CurrentPage = 1;
            //visibleDishInPage(1);
            this.DataContext = homeViewModel.loadPage(homeViewModel.PagingInfo.CurrentPage, homeViewModel.PagingInfo.NumberOfDishInPerPage);
        }

        private void btnNext_Click(object sender, RoutedEventArgs e)
        {
            this.DataContext = homeViewModel.nextPage();

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
            this.DataContext = homeViewModel.previousPage();
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
            //grid6.Visibility = Visibility.Visible;
            //grid8.Visibility = Visibility.Collapsed;
            bg.Visibility = Visibility.Visible;
            contact_screen.Visibility = Visibility.Collapsed;
            Tg_btn.IsChecked = false;
        }

        private void dishListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
