using DogCatRecognizer_ML__NETML.Model;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;


namespace DogCatRecognizer_ML_.NET
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.Title = "Dog or cat predictor";
            
            
        }

        private async void button_Click(object sender, RoutedEventArgs e)
        {
            info.Text = "Paste here cat or dog image url !";
            result.FontWeight = FontWeight.FromOpenTypeWeight(400);

            try
            {
                using (WebClient client = new WebClient())
                {
                    client.DownloadFile(new Uri(urlText.Text), "image.png");
                    BitmapImage bitmapImage = new BitmapImage();
                    bitmapImage.BeginInit();
                    bitmapImage.CacheOption = BitmapCacheOption.OnLoad;
                    bitmapImage.CreateOptions = BitmapCreateOptions.IgnoreImageCache;
                    bitmapImage.UriSource = new Uri(Path.Combine(Environment.CurrentDirectory, "image.png"), UriKind.Absolute);
                    bitmapImage.EndInit();
                    image.Source = bitmapImage;
                }
            }
            catch (WebException)
            {
                info.Text = "Wrong URL ! Provide correct URL to image";
                result.Text = info.Text;
                return;
            }
            catch(UriFormatException)
            {
                info.Text = "Wrong URL ! Provide correct URL to image";
                result.Text = info.Text;
                return;
            }


            var modelOutput = new ModelOutput();
            result.Text = "Analyzing...";
            result.FontWeight = FontWeight.FromOpenTypeWeight(700);
            await Task.Run(() =>
            {
                var modelInput = new ModelInput();
                modelInput.ImageSource = "image.png";
                modelOutput = ConsumeModel.Predict(modelInput);
                File.Delete("image.png");
            });
            result.Text = $"I am {(modelOutput.Prediction == "dog" ? modelOutput.Score[1] * 100 : modelOutput.Score[0] * 100)}% sure that it is a {modelOutput.Prediction}";

        }
    }
}
