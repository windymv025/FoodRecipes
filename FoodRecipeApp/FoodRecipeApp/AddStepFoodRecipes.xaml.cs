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

namespace FoodRecipeApp
{
    /// <summary>
    /// Interaction logic for AddStepFoodRecipes.xaml
    /// </summary>
    public partial class AddStepFoodRecipes : Window
    {
        public int stepNumber = 1;
        public AddStepFoodRecipes()
        {
            InitializeComponent();
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            SaveImage.Save_Image();
            SaveImage.Free_Memory();

            //check file
            //var files = SaveImage.listImageName.ToArray();
            //foreach (var file in files)
            //{
            //    MessageBox.Show(file);
            //}

            var screen = new MainWindow();
            screen.Show();
            this.Close();
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            //free memory
            SaveImage.Free_Memory();

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
                SaveImage.tempUriImage = img[0].ToString();
                ImageSource imgsource = new BitmapImage(new Uri(SaveImage.tempUriImage));
                ImageDescriptionOfRecipe.ImageSource = imgsource;
            }
        }

        private void AddStep_Click(object sender, RoutedEventArgs e)
        {
            stepNumber++;
            SaveImage.listFiles.Add(SaveImage.tempUriImage); //Thêm ảnh vào list
        }
    }
}
