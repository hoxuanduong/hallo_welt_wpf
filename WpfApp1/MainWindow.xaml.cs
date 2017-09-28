using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System;
using System.Globalization;
using System.Windows.Media;
using System.IO;
using System.Reflection;
using System.Windows.Media.Imaging;
using System.Threading;
using System.Xml.Serialization;
using System.Collections.Generic;

namespace WpfApp1
{
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>


    public partial class MainWindow : Window
    {


        private ObservableCollection<Person> users;

        Xmlperson _xmlperson;

        Assembly _assembly;

        StreamReader _textStreamReader;

        private delegate void DelegateFunction1();

        private delegate void DelegateFunction2(string text);



        private void Function2(string text)
        {
            TBDispatcher.Text = text;
        }

        private void Function1()
        {
            Thread.Sleep(10000);
            string text = "this text is displayed in textbox dispatcher";
            BTDispatcher.Dispatcher.BeginInvoke(System.Windows.Threading.DispatcherPriority.Normal, new DelegateFunction2(Function2), text);
        }

        public MainWindow()
        {
            InitializeComponent();
            this.DataContext = this;
            try
            {
                _assembly = Assembly.GetExecutingAssembly();

                _textStreamReader = new StreamReader(_assembly.GetManifestResourceStream("WpfApp1.MyTextFile.txt"));
            }
            catch
            {
                MessageBox.Show("Error accessing resources!");
            }

            users = new ObservableCollection<Person>
            {
                new Person() { Name = "Duong",Age= 10},
                new Person() { Name = "Anh" ,Age= 11},
                new Person() { Name = "Bach" ,Age= 12}
            };

            _xmlperson = new Xmlperson();
            _xmlperson.Organization = "Kavokerr";
            _xmlperson.Country = "Deutschland";
            _xmlperson.persons.Add(new Person { Name = "Nobert", Age = 50 });
            _xmlperson.persons.Add(new Person { Name = "Ingrid", Age = 40 });
            _xmlperson.persons.Add(new Person { Name = "Alto", Age = 45 });
            _xmlperson.CreateFile("XMLFile1.xml");

           
        }

        
        public ObservableCollection<Person> Users
        {
            get
            {
                return users;
            }

            set
            {
                users = value;
            }
        }



        private void Hello_Click(object sender, RoutedEventArgs e)
        {
            DisplayImage.Source = new BitmapImage(new Uri("MyImage.bmp", UriKind.RelativeOrAbsolute));
            MyTextBox.Text = _textStreamReader.ReadLine();
            Writeattributeresult();
        }

        private void BTDispatcher_Click(object sender, RoutedEventArgs e)
        {
            DelegateFunction1 delfun1 = new DelegateFunction1(Function1);
            delfun1.BeginInvoke(null, null);
            
        }

        public void Writeattributeresult()
        {

            MemberInfo info = typeof(Simple2ToTest);

            foreach (object mem in info.GetCustomAttributes(true))
            {
                 System.Diagnostics.Debug.WriteLine(mem);
            }
        }
    }

    [XmlRootAttribute("TestXml", Namespace = "", IsNullable = false)]
    public class Xmlperson
    {
        [XmlElement]
        public string Organization;
        [XmlElement]
        public string Country;

        [XmlArray("Employees"), XmlArrayItem("Person", typeof(Person))]
        public List<Person> persons = new List<Person>();

        public void CreateFile(string file)
        {
            XmlSerializer serializer = new XmlSerializer(typeof(Xmlperson));
            TextWriter writer = new StreamWriter(file);

            serializer.Serialize(writer, this);
            writer.Close();
        }
    }


    public class Person : INotifyPropertyChanged
    {
        private string name;
        private int age;

        public Person()
        {

        }

        public Person(string username, int userage)
        {
            Name = username;

            Age = userage;
        }
        [XmlAttribute]
        public int Age
        {
            get {
                return age;
            }

            set {
                age = value;
                this.NotifyPropertyChanged("Age");
            }
        }
        [XmlAttribute]
        public string Name
        {
            get
            {

                return this.name;

            }
            set
            {
                if (this.name != value)
                {
                    this.name = value;
                    this.NotifyPropertyChanged("Name");
                }

            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        public void NotifyPropertyChanged(string propname)
        {
            if (this.PropertyChanged != null)
            {
                this.PropertyChanged(this, new PropertyChangedEventArgs(propname));
            }
        }


    }

    [AttributeUsage(AttributeTargets.All)]
    public class MyCustomAttribute:Attribute
    {
        private string author;

        public MyCustomAttribute(string Author)
        {
            author = Author;
        }

        private int version;

        public int Version
        {
            get { return version; }
            set
            {
                version = Version;
            }
        }

        public override string ToString()
        {

            string text = "Author: " + author;

            if(version != 0)
            {
                text += "Version: " + version;
            }
            return text;
        }
    }

    [AttributeUsage(AttributeTargets.All)]
    public class IsTestedAttribute : Attribute
    {
        public override string ToString()
        {
            return "is Tested";
        }
    }

    [MyCustom("Duong")]
    public class Simple1ToTest
    {
        public void func1()
        {
            System.Console.WriteLine("func1");
        }

        [IsTested]
        public void func2()
        {
            System.Console.WriteLine("func2");
        }

    }
    [MyCustom("Nobert", Version = 2), IsTested]
    public class Simple2ToTest
    {

        public void func1()
        {
            System.Console.WriteLine("func1");
        }

    }

}



