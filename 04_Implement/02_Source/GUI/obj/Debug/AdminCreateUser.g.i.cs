﻿#pragma checksum "..\..\AdminCreateUser.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "63B7302F719D63879C47C6BC146513AC605B1626"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using GUI;
using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Transitions;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace GUI {
    
    
    /// <summary>
    /// AdminCreateUser
    /// </summary>
    public partial class AdminCreateUser : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 11 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MaterialDesignThemes.Wpf.Transitions.TransitioningContent TrainsitionigContentSlide;
        
        #line default
        #line hidden
        
        
        #line 14 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox chooseClass;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox id_adduser;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox birthofday_adduser;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox email_adduser;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox gender_adduser;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox phone_adduser;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnDoneOfAddUser;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox password_adduser;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox passwordconfirm_adduser;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\AdminCreateUser.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox chooseYear;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/GUI;component/admincreateuser.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\AdminCreateUser.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.TrainsitionigContentSlide = ((MaterialDesignThemes.Wpf.Transitions.TransitioningContent)(target));
            return;
            case 2:
            this.chooseClass = ((System.Windows.Controls.ComboBox)(target));
            
            #line 14 "..\..\AdminCreateUser.xaml"
            this.chooseClass.Loaded += new System.Windows.RoutedEventHandler(this.ComboBox_Classes_Loaded);
            
            #line default
            #line hidden
            return;
            case 3:
            this.id_adduser = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.birthofday_adduser = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.email_adduser = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.gender_adduser = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.phone_adduser = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.btnDoneOfAddUser = ((System.Windows.Controls.Button)(target));
            
            #line 27 "..\..\AdminCreateUser.xaml"
            this.btnDoneOfAddUser.Click += new System.Windows.RoutedEventHandler(this.btnDoneofAddUser_click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.password_adduser = ((System.Windows.Controls.PasswordBox)(target));
            return;
            case 10:
            this.passwordconfirm_adduser = ((System.Windows.Controls.PasswordBox)(target));
            return;
            case 11:
            this.chooseYear = ((System.Windows.Controls.ComboBox)(target));
            
            #line 39 "..\..\AdminCreateUser.xaml"
            this.chooseYear.Loaded += new System.Windows.RoutedEventHandler(this.ComboBox_Years_Loaded);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

