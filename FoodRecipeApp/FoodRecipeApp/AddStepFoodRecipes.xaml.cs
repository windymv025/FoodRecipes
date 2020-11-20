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
using FoodRecipeApp.ViewModels;
using FoodRecipeApp.Models;
using System.ComponentModel;

namespace FoodRecipeApp
{
    /// <summary>
    /// Interaction logic for AddStepFoodRecipes.xaml
    /// </summary>
    public partial class AddStepFoodRecipes : Window
    {
        public int stepNumber = 1;
        AddRecipeViewModel viewModel;
        public AddStepFoodRecipes(FoodRecipe foodRecipe)
        {
            InitializeComponent();
            this.viewModel = new AddRecipeViewModel();
            viewModel.FoodRecipe = foodRecipe;

            this.DataContext = foodRecipe;
            stepListView.ItemsSource = viewModel.FoodCookingSteps;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            viewModel.saveAddFoodRecipe();
            var screen = new MainWindow();
            screen.Show();
            this.Close();
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            var screen = new MainWindow();
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
            }
        }

        private void AddStep_Click(object sender, RoutedEventArgs e)
        {
            if (ImageDescriptionOfRecipe.ImageSource == null && Step.Text == null)
            {
                MessageBox.Show("Hướng dẫn cần có hình ảnh minh họa.\nBạn cần nhập hướng dẫn nấu ăn cho từng bước.", "Error");
                return;
            }
            else
            {

                if (ImageDescriptionOfRecipe.ImageSource == null)
                {
                    MessageBox.Show("Hướng dẫn cần có hình ảnh minh họa.", "Error");
                    return;

                }
                if (Step.Text == null || Step.Text.Trim() == null)
                {
                    MessageBox.Show("Bạn cần nhập hướng dẫn nấu ăn cho từng bước.", "Error");
                    return;
                }
            }
            FoodCookingStep foodCookingStep = new FoodCookingStep();
            foodCookingStep.NumberStep = stepNumber;

            var uriImg = ImageDescriptionOfRecipe.ImageSource.ToString(); // uriImg = "file:///D:/......"
            string imgsource = "";

            for (int i = 8; i < uriImg.Length; i++)  // Loại bỏ file:/// để thành đường dẫn chính xác D:/....
            {
                imgsource += uriImg[i];
            }

            foodCookingStep.ImageStep = imgsource;

            foodCookingStep.Step = Step.Text;

            viewModel.FoodCookingSteps.Add(foodCookingStep);

            ImageDescriptionOfRecipe.ImageSource = null;
            Step.Text = "";
            //MessageBox.Show($"Thêm bước {stepNumber} thành công");
            StepNumber.Text = $"{++stepNumber}";

            //stepListView.Items.DeferRefresh();
        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
