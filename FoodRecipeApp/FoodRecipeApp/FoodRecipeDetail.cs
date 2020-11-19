using FoodRecipeApp.Models;
using FoodRecipeApp.ViewModels;
using System;
using System.Collections.Generic;
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
    /// Interaction logic for FoodRecipeDetail.xaml
    /// </summary>
    public partial class FoodRecipeDetail : Window
    {
        DetailViewModel detailViewModel;
        public FoodRecipeDetail(FoodRecipe foodRecipe)
        {
            InitializeComponent();

            this.detailViewModel = new DetailViewModel(foodRecipe);

            var html = "<html><head><meta content='IE=Edge' http-equiv='X-UA-Compatible'/></head><body><iframe width='560' height='315' src='https://www.youtube.com/embed/{0}' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe></body></html>";

            if (detailViewModel.FoodRecipe.ulrVideo.Contains("="))
            {
                video.NavigateToString(string.Format(html, detailViewModel.FoodRecipe.ulrVideo.Split('=')[1]));
            }
            else
            {
                var str = detailViewModel.FoodRecipe.ulrVideo.Split('/');
                video.NavigateToString(string.Format(html, str[str.Length - 1]));
            }

            if(detailViewModel.isFavoriteFood())
            {
                favorite.Source= new BitmapImage(new Uri("/Assets/heart.png", UriKind.Relative));
            }
            else
            {
                favorite.Source = new BitmapImage(new Uri("/Assets/heart2.png", UriKind.Relative));
            }

            this.DataContext = detailViewModel.FoodRecipe;
            //foodStepListView.ItemsSource = detailViewModel.FoodCookingSteps;
        }

        private void favorite_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if(detailViewModel.isFavoriteFood())
            {
                detailViewModel.deleteFavoriteFood();
                favorite.Source = new BitmapImage(new Uri("/Assets/heart2.png", UriKind.Relative));

            }
            else
            {
                detailViewModel.addFavoriteFood();
                favorite.Source = new BitmapImage(new Uri("/Assets/heart.png", UriKind.Relative));
            }
        }
    }
}
