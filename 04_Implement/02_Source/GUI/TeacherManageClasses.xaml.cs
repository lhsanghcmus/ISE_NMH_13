﻿using System;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using DTO;
using BUS;
namespace GUI
{
    /// <summary>
    /// Interaction logic for test2.xaml
    /// </summary>
    public sealed partial class TeacherManageClasses : Page
    {
        private List<StudentDTO> users = new List<StudentDTO>();
        private List<StudentDTO> users2 = new List<StudentDTO>();
        public TeacherManageClasses()
        {
            users.Add(new StudentDTO { Id ="1612556",NameClass="12C1",SchoolYear="2018-2019",Name="Nguyen Hoang Sang", Type="Student", Status="Active",DateofBith="16/8/1998",Gender="Male",Email="test@gmail.com",Password="123",Phone="0123456789"});
            users.Add(new StudentDTO { Id = "1612556", Name = "Nguyen Hoang Sang", Type = "Student", Status = "Active" });
            users.Add(new StudentDTO { Id = "1612557", Name = "Le Hoang Sang", Type = "Student", Status = "Active" });
            users.Add(new StudentDTO { Id = "1512383", Name = "Nguyen Thuy Nhien", Type = "Student", Status = "Active" });
            users.Add(new StudentDTO { Id = "1612553", Name = "Tran Ngoc Quang", Type = "Student", Status = "Deactive" });
 
            users2.Add(new StudentDTO { Id = "1612556", NameClass = "12C1", SchoolYear = "2018-2019", Name = "Nguyen Hoang Sang", Type = "Student", Status = "Active", DateofBith = "16/8/1998", Gender = "Male", Email = "test@gmail.com", Password = "123", Phone = "0123456789" });
            users2.Add(new StudentDTO { Id = "1612556", Name = "Nguyen Hoang Sang", Type = "Student", Status = "Active" });
            users2.Add(new StudentDTO { Id = "1612557", Name = "Le Hoang Sang", Type = "Student", Status = "Active" });
            users2.Add(new StudentDTO { Id = "1512383", Name = "Nguyen Thuy Nhien", Type = "Student", Status = "Active" });
            users2.Add(new StudentDTO { Id = "1612553", Name = "Tran Ngoc Quang", Type = "Student", Status = "Deactive" });
            users2.Add(new StudentDTO { Id = "1234523", Name = "Nguyen Van A", Type = "Student", Status = "Active" });
            users2.Add(new StudentDTO { Id = "1612336", Name = "Nguyen Van B", Type = "Student", Status = "Active" });
            users2.Add(new StudentDTO { Id = "1621556", Name = "Nguyen Van C", Type = "Student", Status = "Active" });
            users2.Add(new StudentDTO { Id = "1235562", Name = "Nguyen Van D", Type = "Student", Status = "Active" });
            users2.Add(new StudentDTO { Id = "1343564", Name = "Nguyen Van E", Type = "Student", Status = "Deactive" });
            InitializeComponent();
        }

        private void Window_Loaded_Student(object sender, RoutedEventArgs e)
        {
            if (rb_add.IsChecked == true)
            {
                listviewUser.ItemsSource = AcademicAffairsOfficeBUS.loadStudentNotInClass("2018-2019");

                chooseClass2.ItemsSource = AcademicAffairsOfficeBUS.loadListClassToComboBox("2018-2019");
                chooseClass2.SelectedIndex = 0;



                listviewUser2.ItemsSource = AcademicAffairsOfficeBUS.LoadStudent(chooseClass2.SelectedValue.ToString(), "2018-2019", chooseStatus2.SelectedValue.ToString());
            }
            else if (rb_trans.IsChecked == true)
            {
                chooseClass.ItemsSource = AcademicAffairsOfficeBUS.loadListClassToComboBox("2018-2019");
                chooseClass.SelectedIndex = 0;

                listviewUser.ItemsSource = AcademicAffairsOfficeBUS.LoadStudent(chooseClass.SelectedValue.ToString(), "2018-2019", chooseStatus.SelectedValue.ToString());
            }
        }


        private void SelectItem(object sender, MouseButtonEventArgs e)
        {
            //Select ở bảng left
        }

        private void SelectItem2(object sender, MouseButtonEventArgs e)
        {
            //Select ở bảng right
        }

        private void ComboBox_Classes_Loaded(object sender, RoutedEventArgs e)
        {
          
        }

        private void searchUser_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(searchUser1.Text))
            {
                listviewUser.ItemsSource = AcademicAffairsOfficeBUS.loadStudentNotInClass("2018-2019");
            }
        }

        private void rb_add_Checked(object sender, RoutedEventArgs e)
        {
            comboboxLeft.Visibility = Visibility.Collapsed;
            controlLeft.Visibility = Visibility.Collapsed;
            btn_rtl.Visibility = Visibility.Collapsed;

            listviewUser.ItemsSource = AcademicAffairsOfficeBUS.loadStudentNotInClass("2018-2019");

            chooseClass2.ItemsSource = AcademicAffairsOfficeBUS.loadListClassToComboBox("2018-2019");
            chooseClass2.SelectedIndex = 0;



            listviewUser2.ItemsSource = AcademicAffairsOfficeBUS.LoadStudent(chooseClass2.SelectedValue.ToString(), "2018-2019", chooseStatus2.SelectedValue.ToString());

        }

        private void rb_trans_Checked(object sender, RoutedEventArgs e)
        {
            comboboxLeft.Visibility = Visibility.Visible;
            controlLeft.Visibility = Visibility.Visible;
            btn_rtl.Visibility = Visibility.Visible;

            chooseClass.ItemsSource = AcademicAffairsOfficeBUS.loadListClassToComboBox("2018-2019");
            chooseClass.SelectedIndex = 0;

            listviewUser.ItemsSource = AcademicAffairsOfficeBUS.LoadStudent(chooseClass.SelectedValue.ToString(), "2018-2019", chooseStatus.SelectedValue.ToString());
        }

        private void Btn_Search1_Click(object sender, RoutedEventArgs e)
        {
            listviewUser.ItemsSource = AcademicAffairsOfficeBUS.searchStudentNotInClass(searchUser1.Text, "2018-2019");
        }

        private void ChooseClass2_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (chooseStatus2.SelectedValue != null && chooseClass2.SelectedValue != null)
            {
                listviewUser2.ItemsSource = AcademicAffairsOfficeBUS.LoadStudent(chooseClass2.SelectedValue.ToString(), "2018-2019", chooseStatus2.SelectedValue.ToString());
            }
        }

        private void ChooseStatus2_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (chooseStatus2.SelectedValue != null && chooseClass2.SelectedValue != null)
            {
                listviewUser2.ItemsSource = AcademicAffairsOfficeBUS.LoadStudent(chooseClass2.SelectedValue.ToString(), "2018-2019", chooseStatus2.SelectedValue.ToString());
            }
        }

        private void Btn_Search2_Click(object sender, RoutedEventArgs e)
        {
            listviewUser2.ItemsSource = AcademicAffairsOfficeBUS.searchStudent(searchUser2.Text, chooseClass2.SelectedValue.ToString(), "2018-2019");
        }

        private void SearchUser2_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(searchUser2.Text))
            {
                listviewUser2.ItemsSource = AcademicAffairsOfficeBUS.LoadStudent(chooseClass2.SelectedValue.ToString(), "2018-2019", chooseStatus2.SelectedValue.ToString());
            }
        }

        private void Btn_ltr_Click(object sender, RoutedEventArgs e)
        {
            if (chooseStatus2.SelectedValue != null && chooseClass2.SelectedValue != null)
            {
                if (Global.listStudent != null)
                {
                    int n = Global.listStudent.Count;
                    for (int i = 0; i < n; i++)
                    {
                        if (AcademicAffairsOfficeBUS.InsertStudentToClass(Global.listStudent[i].Id, chooseClass2.SelectedValue.ToString(), "2018-2019"))
                        {

                        }
                        else
                        {
                            MessageBox.Show("Add student has ID = " + Global.listStudent[i].Id + " failed");
                        }
                    }
                    listviewUser.ItemsSource = AcademicAffairsOfficeBUS.loadStudentNotInClass("2018-2019");
                }
            }
        }

        private void ListviewUser2_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void ListviewUser_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (Global.listStudent != null)
            {
                Global.listStudent.Clear();
            }
            else
            {
                Global.listStudent = new List<StudentDTO>();
            }
            int n = listviewUser.SelectedItems.Count;
            for (int i=0;i<n;i++)
            {
                StudentDTO student = (StudentDTO)listviewUser.SelectedItems[i];
                Global.listStudent.Add(student);
            }
        }

        private void ChooseClass_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (chooseStatus.SelectedValue != null && chooseClass.SelectedValue != null)
            {
                listviewUser.ItemsSource = AcademicAffairsOfficeBUS.LoadStudent(chooseClass.SelectedValue.ToString(), "2018-2019", chooseStatus.SelectedValue.ToString());
            }
        }

        private void ChooseStatus_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (chooseStatus.SelectedValue != null && chooseClass.SelectedValue != null)
            {
                listviewUser.ItemsSource = AcademicAffairsOfficeBUS.LoadStudent(chooseClass.SelectedValue.ToString(), "2018-2019", chooseStatus.SelectedValue.ToString());
            }
        }
    }
}
