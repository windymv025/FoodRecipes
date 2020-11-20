using FoodRecipeApp.ViewModels;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace FoodRecipeApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        HomeViewModel homeViewModel;

        public MainWindow()
        {
            InitializeComponent();

        }

        private void loadDuLieu(object sender, RoutedEventArgs e)
        {

            homeViewModel = new HomeViewModel();
            homeViewModel.FoodRecipes = FoodRecipeDao.GetAll();
            homeViewModel.LogFile = new LogFile();
            homeViewModel.PagingInfo = new PagingInfo(2, homeViewModel.LogFile.NumberOfDishInPerPage, homeViewModel.FoodRecipes.Count);


            homeViewModel.loadLogFile();

            btnSapxep.SelectedIndex = homeViewModel.LogFile.TypeSort;

            if (homeViewModel.LogFile.NumberOfDishInPerPage == 6)
                btnSoLuong.SelectedIndex = 0;
            else
            {
                if (homeViewModel.LogFile.NumberOfDishInPerPage == 8)
                    btnSoLuong.SelectedIndex = 1;
            }
            if (homeViewModel.PagingInfo.NumberOfDishInPerPage == 6)
            {
                grid6.Visibility = Visibility.Visible;
                grid8.Visibility = Visibility.Collapsed;
                visibleDishInPage(homeViewModel.PagingInfo.CurrentPage);
                LabelPage.Content = $"{homeViewModel.PagingInfo.CurrentPage}/{homeViewModel.PagingInfo.TotalPage}";
            }
            else
            {
                grid6.Visibility = Visibility.Collapsed;
                grid8.Visibility = Visibility.Visible;
                visibleDishInPage(homeViewModel.PagingInfo.CurrentPage);
                LabelPage.Content = $"{homeViewModel.PagingInfo.CurrentPage}/{homeViewModel.PagingInfo.TotalPage}";
            }

        }



        private void visibleDishInPage(int page)
        {
            var dishes = homeViewModel.loadPage(page, homeViewModel.PagingInfo.NumberOfDishInPerPage);
            if(homeViewModel.PagingInfo.TotalPage==0)
            {
                homeViewModel.PagingInfo.CurrentPage = 0;
            }    
            LabelPage.Content = $"{homeViewModel.PagingInfo.CurrentPage}/{homeViewModel.PagingInfo.TotalPage}";

            if (homeViewModel.PagingInfo.NumberOfDishInPerPage == 6)
            {
                if (dishes.Count >= 1)
                {
                    img_mon6_1.Visibility = Visibility.Visible;
                    lb_mon6_1.Visibility = Visibility.Visible;

                    img_mon6_1.Source = new BitmapImage(new Uri(dishes[0].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon6_1.Content = dishes[0].NameFood;
                }
                else
                {
                    img_mon6_1.Visibility = Visibility.Collapsed;
                    lb_mon6_1.Visibility = Visibility.Collapsed;
                }

                if (dishes.Count >= 2)
                {
                    img_mon6_2.Visibility = Visibility.Visible;
                    lb_mon6_2.Visibility = Visibility.Visible;

                    img_mon6_2.Source = new BitmapImage(new Uri(dishes[1].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon6_2.Content = dishes[1].NameFood;
                }
                else
                {
                    img_mon6_2.Visibility = Visibility.Collapsed;
                    lb_mon6_2.Visibility = Visibility.Collapsed;
                }

                if (dishes.Count >= 3)
                {
                    img_mon6_3.Visibility = Visibility.Visible;
                    lb_mon6_3.Visibility = Visibility.Visible;

                    img_mon6_3.Source = new BitmapImage(new Uri(dishes[2].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon6_3.Content = dishes[2].NameFood;

                }
                else
                {
                    img_mon6_3.Visibility = Visibility.Collapsed;
                    lb_mon6_3.Visibility = Visibility.Collapsed;
                }

                if (dishes.Count >= 4)
                {
                    img_mon6_4.Visibility = Visibility.Visible;
                    lb_mon6_4.Visibility = Visibility.Visible;

                    img_mon6_4.Source = new BitmapImage(new Uri(dishes[3].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon6_4.Content = dishes[3].NameFood;

                }
                else
                {
                    img_mon6_4.Visibility = Visibility.Collapsed;
                    lb_mon6_4.Visibility = Visibility.Collapsed;
                }


                if (dishes.Count >= 5)
                {
                    img_mon6_5.Visibility = Visibility.Visible;
                    lb_mon6_5.Visibility = Visibility.Visible;

                    img_mon6_5.Source = new BitmapImage(new Uri(dishes[4].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon6_5.Content = dishes[4].NameFood;

                }
                else
                {
                    img_mon6_5.Visibility = Visibility.Collapsed;
                    lb_mon6_5.Visibility = Visibility.Collapsed;
                }


                if (dishes.Count == 6)
                {
                    img_mon6_6.Visibility = Visibility.Visible;
                    lb_mon6_6.Visibility = Visibility.Visible;

                    img_mon6_6.Source = new BitmapImage(new Uri(dishes[5].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon6_6.Content = dishes[5].NameFood;

                }
                else
                {
                    img_mon6_6.Visibility = Visibility.Collapsed;
                    lb_mon6_6.Visibility = Visibility.Collapsed;
                }

            }
            else
            {
                if (dishes.Count >= 1)
                {
                    img_mon8_1.Visibility = Visibility.Visible;
                    lb_mon8_1.Visibility = Visibility.Visible;

                    img_mon8_1.Source = new BitmapImage(new Uri(dishes[0].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon8_1.Content = dishes[0].NameFood;

                }
                else
                {
                    img_mon8_1.Visibility = Visibility.Collapsed;
                    lb_mon8_1.Visibility = Visibility.Collapsed;
                }


                if (dishes.Count >= 2)
                {
                    img_mon8_2.Visibility = Visibility.Visible;
                    lb_mon8_2.Visibility = Visibility.Visible;

                    img_mon8_2.Source = new BitmapImage(new Uri(dishes[1].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon8_2.Content = dishes[1].NameFood;
                }
                else
                {
                    img_mon8_2.Visibility = Visibility.Collapsed;
                    lb_mon8_2.Visibility = Visibility.Collapsed;
                }

                if (dishes.Count >= 3)
                {
                    img_mon8_3.Visibility = Visibility.Visible;
                    lb_mon8_3.Visibility = Visibility.Visible;

                    img_mon8_3.Source = new BitmapImage(new Uri(dishes[2].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon8_3.Content = dishes[2].NameFood;

                }
                else
                {
                    img_mon8_3.Visibility = Visibility.Collapsed;
                    lb_mon8_3.Visibility = Visibility.Collapsed;
                }

                if (dishes.Count >= 4)
                {
                    img_mon8_4.Visibility = Visibility.Visible;
                    lb_mon8_4.Visibility = Visibility.Visible;

                    img_mon8_4.Source = new BitmapImage(new Uri(dishes[3].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon8_4.Content = dishes[3].NameFood;

                }
                else
                {
                    img_mon8_4.Visibility = Visibility.Collapsed;
                    lb_mon8_4.Visibility = Visibility.Collapsed;
                }


                if (dishes.Count >= 5)
                {
                    img_mon8_5.Visibility = Visibility.Visible;
                    lb_mon8_5.Visibility = Visibility.Visible;

                    img_mon8_5.Source = new BitmapImage(new Uri(dishes[4].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon8_5.Content = dishes[4].NameFood;

                }
                else
                {
                    img_mon8_5.Visibility = Visibility.Collapsed;
                    lb_mon8_5.Visibility = Visibility.Collapsed;
                }


                if (dishes.Count >= 6)
                {
                    img_mon8_6.Visibility = Visibility.Visible;
                    lb_mon8_6.Visibility = Visibility.Visible;

                    img_mon8_6.Source = new BitmapImage(new Uri(dishes[5].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon8_6.Content = dishes[5].NameFood;

                }
                else
                {
                    img_mon8_6.Visibility = Visibility.Collapsed;
                    lb_mon8_6.Visibility = Visibility.Collapsed;
                }

                if (dishes.Count >= 7)
                {
                    img_mon8_7.Visibility = Visibility.Visible;
                    lb_mon8_7.Visibility = Visibility.Visible;

                    img_mon8_7.Source = new BitmapImage(new Uri(dishes[6].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon8_7.Content = dishes[6].NameFood;

                }
                else
                {
                    img_mon8_7.Visibility = Visibility.Collapsed;
                    lb_mon8_7.Visibility = Visibility.Collapsed;
                }

                if (dishes.Count == 8)
                {
                    img_mon8_8.Visibility = Visibility.Visible;
                    lb_mon8_8.Visibility = Visibility.Visible;

                    img_mon8_8.Source = new BitmapImage(new Uri(dishes[7].FoodImage, UriKind.RelativeOrAbsolute));
                    lb_mon8_8.Content = dishes[7].NameFood;

                }
                else
                {
                    img_mon8_8.Visibility = Visibility.Collapsed;
                    lb_mon8_8.Visibility = Visibility.Collapsed;
                }
            }
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
            homeViewModel.PagingInfo = new PagingInfo(2, 6, homeViewModel.FoodRecipes.Count);
            homeViewModel.LogFile.NumberOfDishInPerPage = 6;

            grid6.Visibility = Visibility.Visible;
            grid8.Visibility = Visibility.Collapsed;
            homeViewModel.PagingInfo.CurrentPage = 1;
            visibleDishInPage(homeViewModel.PagingInfo.CurrentPage);

        }

        private void cbb8_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            homeViewModel.PagingInfo = new PagingInfo(2, 8, homeViewModel.FoodRecipes.Count);
            homeViewModel.LogFile.NumberOfDishInPerPage = 8;

            grid6.Visibility = Visibility.Collapsed;
            grid8.Visibility = Visibility.Visible;
            homeViewModel.PagingInfo.CurrentPage = 1;
            visibleDishInPage(homeViewModel.PagingInfo.CurrentPage);
        }

        private void btnNext_Click(object sender, RoutedEventArgs e)
        {
            visibleDishInPage(homeViewModel.PagingInfo.CurrentPage + 1);
        }

        private void btnPrev_Click(object sender, RoutedEventArgs e)
        {
            visibleDishInPage(homeViewModel.PagingInfo.CurrentPage - 1);
        }

        //event btn Home
        private void Image_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //if grid 6 or 8, now default 6
            homeViewModel.FoodRecipes = FoodRecipeDao.GetAll();
            btnSapxep.SelectedIndex = homeViewModel.LogFile.TypeSort;

            homeViewModel.PagingInfo = new PagingInfo(2, homeViewModel.LogFile.NumberOfDishInPerPage, homeViewModel.FoodRecipes.Count);
            LabelPage.Content = $"{homeViewModel.PagingInfo.CurrentPage}/{homeViewModel.PagingInfo.TotalPage}";

            if (homeViewModel.PagingInfo.NumberOfDishInPerPage == 6)
            {
                grid6.Visibility = Visibility.Visible;
                grid8.Visibility = Visibility.Collapsed;
                btnSoLuong.SelectedIndex = 0;
            }
            else
            {
                grid6.Visibility = Visibility.Collapsed;
                grid8.Visibility = Visibility.Visible;
                btnSoLuong.SelectedIndex = 1;
            }

            visibleDishInPage(homeViewModel.PagingInfo.CurrentPage);


            bg.Visibility = Visibility.Visible;
            contact_screen.Visibility = Visibility.Collapsed;
            Tg_btn.IsChecked = false;
        }

        private void btnSapxep_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (btnSapxep.SelectedIndex == 0)
            {
                homeViewModel.LogFile.TypeSort = 0;
                homeViewModel.sortAscendingName();
                homeViewModel.PagingInfo.CurrentPage = 1;
                visibleDishInPage(homeViewModel.PagingInfo.CurrentPage);
            }
            else
            {
                if (btnSapxep.SelectedIndex == 1)
                {
                    homeViewModel.LogFile.TypeSort = 1;
                    homeViewModel.sortDescendingName();
                    homeViewModel.PagingInfo.CurrentPage = 1;
                    visibleDishInPage(homeViewModel.PagingInfo.CurrentPage);
                }
                else
                {
                    visibleDishInPage(homeViewModel.PagingInfo.CurrentPage);
                }
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (btnSapxep.SelectedIndex == -1)
                homeViewModel.LogFile.TypeSort = -1;
            homeViewModel.saveLogfile();
        }

        //even Favorite Food
        private void ListViewItem_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            homeViewModel.FoodRecipes = FavoriteFoodDao.GetAll();
            homeViewModel.PagingInfo = new PagingInfo(2, 6, homeViewModel.FoodRecipes.Count);

            grid6.Visibility = Visibility.Visible;
            grid8.Visibility = Visibility.Collapsed;
            visibleDishInPage(1);

            bg.Visibility = Visibility.Visible;
            contact_screen.Visibility = Visibility.Collapsed;
            Tg_btn.IsChecked = false;

            btnSoLuong.SelectedIndex = 0;
            btnSapxep.SelectedIndex = -1;
            homeViewModel.LogFile.TypeSort = -1;

            LabelPage.Content = $"{homeViewModel.PagingInfo.CurrentPage}/{homeViewModel.PagingInfo.TotalPage}";

        }


        private void grid6_1_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 0]);
            detail.Show();
        }

        private void grid6_2_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 1]);
            detail.Show();
        }
        private void grid6_3_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 2]);
            detail.Show();
        }
        private void grid6_4_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 3]);
            detail.Show();
        }
        private void grid6_5_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 4]);
            detail.Show();
        }
        private void grid6_6_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 5]);
            detail.Show();
        }

        private void grid8_1_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 0]);
            detail.Show();
        }
        private void grid8_2_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 1]);
            detail.Show();
        }
        private void grid8_3_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 2]);
            detail.Show();
        }
        private void grid8_4_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 3]);
            detail.Show();
        }
        private void grid8_5_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 4]);
            detail.Show();
        }
        private void grid8_6_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 5]);
            detail.Show();
        }
        private void grid8_7_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 6]);
            detail.Show();
        }
        private void grid8_8_Event(object sender, MouseButtonEventArgs e)
        {
            var detail = new FoodRecipeDetail(homeViewModel.FoodRecipes[(homeViewModel.PagingInfo.CurrentPage - 1) * homeViewModel.PagingInfo.NumberOfDishInPerPage + 7]);
            detail.Show();
        }

        private void ListViewItem_PreviewMouseLeftButtonDown_1(object sender, MouseButtonEventArgs e)
        {
            searchBox.Visibility = Visibility.Visible;
            searchImg.Visibility = Visibility.Visible;
        }

        private void searchImg_Click(object sender, RoutedEventArgs e)
        {
            string name = searchBox.Text.Trim();
            if (name.Contains("\n"))
            {
                name = name.Replace('\n', ' ');
            }
            homeViewModel.FoodRecipes = FoodRecipeDao.GetAllWithName(name);
            homeViewModel.PagingInfo = new PagingInfo(2, 6, homeViewModel.FoodRecipes.Count);

            grid6.Visibility = Visibility.Visible;
            grid8.Visibility = Visibility.Collapsed;
            visibleDishInPage(1);

            bg.Visibility = Visibility.Visible;
            contact_screen.Visibility = Visibility.Collapsed;
            Tg_btn.IsChecked = false;

            btnSoLuong.SelectedIndex = 0;
            btnSapxep.SelectedIndex = -1;
            homeViewModel.LogFile.TypeSort = -1;

            LabelPage.Content = $"{homeViewModel.PagingInfo.CurrentPage}/{homeViewModel.PagingInfo.TotalPage}";
        }

        private void addDish_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            AddRecipeWindow addRecipe = new AddRecipeWindow();
            addRecipe.Show();
            this.Close();

        }

        private void searchBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            string name = searchBox.Text.Trim();
            if (name.Contains("\n"))
            {
                name = name.Replace('\n', ' ');
            }
            homeViewModel.FoodRecipes = FoodRecipeDao.GetAllWithName(name);
            homeViewModel.PagingInfo = new PagingInfo(2, 6, homeViewModel.FoodRecipes.Count);

            grid6.Visibility = Visibility.Visible;
            grid8.Visibility = Visibility.Collapsed;
            visibleDishInPage(1);

            bg.Visibility = Visibility.Visible;
            contact_screen.Visibility = Visibility.Collapsed;
            Tg_btn.IsChecked = false;

            btnSoLuong.SelectedIndex = 0;
            btnSapxep.SelectedIndex = -1;
            homeViewModel.LogFile.TypeSort = -1;

            LabelPage.Content = $"{homeViewModel.PagingInfo.CurrentPage}/{homeViewModel.PagingInfo.TotalPage}";
        }
    }
}
