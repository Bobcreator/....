using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace WpfApp1
{
    public partial class MainWindow : Window
    {
        private List<Employee> employees;

        public MainWindow()
        {
            InitializeComponent();
            employees = new List<Employee>();
            EmployeeDataGrid.ItemsSource = employees;
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            var newEmployee = new Employee
            {
                Id = employees.Count + 1,
                Name = NameTextBox.Text,
                Position = PositionTextBox.Text,
                PhotoPath = "path/to/photo.jpg" // Укажите путь к фото
            };
            employees.Add(newEmployee);
            EmployeeDataGrid.Items.Refresh();
            ClearInputFields();
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            if (EmployeeDataGrid.SelectedItem is Employee selectedEmployee)
            {
                employees.Remove(selectedEmployee);
                EmployeeDataGrid.Items.Refresh();
            }
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            if (EmployeeDataGrid.SelectedItem is Employee selectedEmployee)
            {
                selectedEmployee.Name = NameTextBox.Text;
                selectedEmployee.Position = PositionTextBox.Text;
                EmployeeDataGrid.Items.Refresh();
                ClearInputFields();
            }
        }

        private void AddOrganizations_Click(object sender, RoutedEventArgs e)
        {
            for (int i = 1; i <= 10; i++)
            {
                var newOrganization = new Organization
                {
                    Id = employees.Count + 1,
                    Name = $"Организация {employees.Count + 1}",
                    Address = $"Адрес {employees.Count + 1}"
                };

                // Здесь вы можете добавить логику для добавления организаций в нужный список
            }
        }

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            string searchTerm = SearchTextBox.Text.ToLower();
            var filteredEmployees = employees.Where(emp => emp.Name.ToLower().Contains(searchTerm)).ToList();
            EmployeeDataGrid.ItemsSource = filteredEmployees;
        }

        private void EmployeeDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (EmployeeDataGrid.SelectedItem is Employee selectedEmployee)
            {
                NameTextBox.Text = selectedEmployee.Name;
                PositionTextBox.Text = selectedEmployee.Position;
                // Здесь можно добавить отображение фотографии
            }
        }

        private void ClearInputFields()
        {
            NameTextBox.Clear();
            PositionTextBox.Clear();
        }

        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }

    public class Employee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Position { get; set; }
        public string PhotoPath { get; set; }
    }

    public class Organization
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
    }
}