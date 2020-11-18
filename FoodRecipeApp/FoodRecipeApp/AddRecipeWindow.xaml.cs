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

namespace FoodRecipeApp
{
    /// <summary>
    /// Interaction logic for AddRecipeWindow.xaml
    /// </summary>
    public partial class AddRecipeWindow : Window
    {
        public AddRecipeWindow()
        {
            InitializeComponent();
        }

        private void AddStep_Click(object sender, RoutedEventArgs e)
        {
            var screen = new AddStepFoodRecipes();
            screen.Show();
            this.Close();
        }

        private void InsertFoodImage_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog open = new OpenFileDialog();
            open.Multiselect = false;
            open.Filter = "Image Files(*.jpg; *.jpeg; *.gif; *.bmp)|*.jpg; *.jpeg; *.gif; *.bmp";

            var currentFolder = AppDomain.CurrentDomain.BaseDirectory.ToString();
            string uriImage = "";

            for(int i = 0; i < currentFolder.Length - 10; i++)
            {
                uriImage += currentFolder[i];
            }

            if (open.ShowDialog() == true)
            {
                var img = open.FileNames;

                foreach (var file in img)
                {
                    var info = new FileInfo(file);
                    var newName = $"{Guid.NewGuid()}{info.Extension}";
                    Debug.WriteLine(newName);
                    File.Copy(file, $"{uriImage}Images\\{newName}");
                }

                ImageSource imgsource = new BitmapImage(new Uri(img[0].ToString()));
                ImageDescriptionOfRecipe.ImageSource = imgsource;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            var screen = new MainWindow();
            screen.Show();
            this.Close();
        }
    }
}
