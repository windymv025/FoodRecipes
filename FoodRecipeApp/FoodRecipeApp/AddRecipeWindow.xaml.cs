using Microsoft.Win32;
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
using System.Windows.Shapes;

using System.IO;
using System.Diagnostics;
using FoodRecipeApp.Models;
using FoodRecipeApp.ViewModels;

namespace FoodRecipeApp
{
    /// <summary>
    /// Interaction logic for AddRecipeWindow.xaml
    /// </summary>
    public partial class AddRecipeWindow : Window
    {
        AddRecipeViewModel viewModel;
        public AddRecipeWindow()
        {
            InitializeComponent();
            viewModel = new AddRecipeViewModel();
        }

        private void AddStep_Click(object sender, RoutedEventArgs e)
        {
            viewModel.FoodRecipe.NameFood = FoodName.Text.Trim();
            viewModel.FoodRecipe.ulrVideo = FoodLinkYoutube.Text.Trim();
            viewModel.FoodRecipe.DishDescription = FoodDesciption.Text.Trim();

            var screen = new AddStepFoodRecipes(viewModel.FoodRecipe);
            screen.Show();
            this.Close();
        }

        private void InsertFoodImage_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog open = new OpenFileDialog();
            open.Multiselect = false;
            open.Filter = "Image Files(*.jpg; *.jpeg; *.gif; *.bmp)|*.jpg; *.jpeg; *.gif; *.bmp";

            if (open.ShowDialog() == true)
            {
                var img = open.FileNames;
                ImageSource imgsource = new BitmapImage(new Uri(img[0]));
                ImageDescriptionOfRecipe.ImageSource = imgsource;
                viewModel.FoodRecipe.FoodImage = img[0];
            }
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            var screen = new MainWindow();
            screen.Show();
            this.Close();
        }
    }
}
