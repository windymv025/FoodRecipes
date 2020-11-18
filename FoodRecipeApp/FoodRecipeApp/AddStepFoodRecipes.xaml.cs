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

        //biến sử dụng
        private string tempUriImage; //Ảnh được load
        private List<string> listFiles = new List<string>(); //List files ảnh sẽ được lưu
        private List<string> listImageName = new List<string>(); //List name ảnh đã được lưu theo thứ tự 1->n
        
        //hàm dùng để lưu ảnh được tải vào thư mục images
        private void Save_Image()
        {
            var currentFolder = AppDomain.CurrentDomain.BaseDirectory.ToString();
            string uriImage = "";

            for (int i = 0; i < currentFolder.Length - 10; i++)
            {
                uriImage += currentFolder[i];
            }
            var files = listFiles.ToArray();
            foreach (var file in files)
            {
                var info = new FileInfo(file);
                var newName = $"{Guid.NewGuid()}{info.Extension}";
                listImageName.Add(newName);
                File.Copy(file, $"{uriImage}Images\\{newName}");
            }
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            Save_Image();

            //var files = listImageName.ToArray();
            //foreach(var file in files)
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
            listFiles.Clear();
            tempUriImage = null;
            listImageName.Clear();


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
                tempUriImage = img[0].ToString();
                ImageSource imgsource = new BitmapImage(new Uri(tempUriImage));
                ImageDescriptionOfRecipe.ImageSource = imgsource;
            }
        }

        private void AddStep_Click(object sender, RoutedEventArgs e)
        {
            stepNumber++;
            listFiles.Add(tempUriImage);
           // var nextStep = new StackPanel();
            //nextStep.Height = 250;
            
           // StepByStep.Children.Add(nextStep);
        }
    }
}
