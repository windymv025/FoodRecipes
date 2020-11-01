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

namespace FoodRecipeApp
{
    /// <summary>
    /// Interaction logic for SplashScreen.xaml
    /// </summary>
    public partial class SplashScreen : Window
    {
        private string dataFile = "";
        System.Timers.Timer timer;
        private int count = 0;
        private int target = 30;

        public SplashScreen()
        {
            var folder = AppDomain.CurrentDomain.BaseDirectory;
            dataFile = $"{folder}CheckSplashScreen.txt";
            var checkSplashScreen = File.ReadAllText(dataFile);
            var showSplash = bool.Parse(checkSplashScreen);
            if (showSplash)
            {
                var screen = new MainWindow();
                screen.Show();

                this.Close();
            }
            else
            {
                timer = new System.Timers.Timer();
                timer.Elapsed += Timer_Elapsed;
                timer.Interval = 1000;
                timer.Start();
            }

            InitializeComponent();
        }

        private void Timer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            count++;

            if (count == target)
            {
                timer.Stop();

                Dispatcher.Invoke(() =>
                {
                    var screen = new MainWindow();
                    screen.Show();

                    this.Close();
                });
            }

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void CheckSplashScreen_Unchecked(object sender, RoutedEventArgs e)
        {

        }

        private void CheckSplashScreen_Checked(object sender, RoutedEventArgs e)
        {
            string folder = AppDomain.CurrentDomain.BaseDirectory;
            dataFile = $"{folder}CheckSplashScreen.txt";
            File.WriteAllText(dataFile, "true");
        }

        private void Skip_Click(object sender, RoutedEventArgs e)
        {
            var screen = new MainWindow();
            screen.Show();

            this.Close();
        }
    }
}
