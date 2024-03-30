using System;
using InfoMovie.Views;
using Xamarin.Forms;
using System.IO;
using InfoMovie.Helpers;

namespace InfoMovie
{
    public partial class App : Application
    {
        private static DataBase dataBase;

        public static DataBase DataBase
        {
            get
            {
                if (dataBase == null)
                {
                    dataBase = new DataBase();
                }

                return dataBase;
            }

        }

        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new SearchPage());
        }

        protected override void OnStart()
        {

        }

        protected override void OnSleep()
        {

        }

        protected override void OnResume()
        {

        }
    }
}
