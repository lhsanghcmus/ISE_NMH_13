﻿#pragma checksum "..\..\DashboardStudent.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "F33715959D0411FE2A3066E3AEBBF7EB4E1A69E7"
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
    /// DashboardStudent
    /// </summary>
    public partial class DashboardStudent : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 13 "..\..\DashboardStudent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border TitleBar;
        
        #line default
        #line hidden
        
        
        #line 14 "..\..\DashboardStudent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnClose;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\DashboardStudent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnMini;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\DashboardStudent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Frame GridPrincipal;
        
        #line default
        #line hidden
        
        
        #line 65 "..\..\DashboardStudent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid GridCursor;
        
        #line default
        #line hidden
        
        
        #line 66 "..\..\DashboardStudent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView ListViewMenu;
        
        #line default
        #line hidden
        
        
        #line 80 "..\..\DashboardStudent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label fullname_title;
        
        #line default
        #line hidden
        
        
        #line 83 "..\..\DashboardStudent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label class_title;
        
        #line default
        #line hidden
        
        
        #line 86 "..\..\DashboardStudent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button logout;
        
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
            System.Uri resourceLocater = new System.Uri("/GUI;component/dashboardstudent.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\DashboardStudent.xaml"
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
            
            #line 10 "..\..\DashboardStudent.xaml"
            ((GUI.DashboardStudent)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Window_Loaded_Title);
            
            #line default
            #line hidden
            return;
            case 2:
            this.TitleBar = ((System.Windows.Controls.Border)(target));
            
            #line 13 "..\..\DashboardStudent.xaml"
            this.TitleBar.MouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.TitleBar_MouseLeftButtonDown);
            
            #line default
            #line hidden
            return;
            case 3:
            this.btnClose = ((System.Windows.Controls.Button)(target));
            
            #line 14 "..\..\DashboardStudent.xaml"
            this.btnClose.Click += new System.Windows.RoutedEventHandler(this.btnClose_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.btnMini = ((System.Windows.Controls.Button)(target));
            
            #line 37 "..\..\DashboardStudent.xaml"
            this.btnMini.Click += new System.Windows.RoutedEventHandler(this.btnMini_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.GridPrincipal = ((System.Windows.Controls.Frame)(target));
            return;
            case 6:
            this.GridCursor = ((System.Windows.Controls.Grid)(target));
            return;
            case 7:
            this.ListViewMenu = ((System.Windows.Controls.ListView)(target));
            
            #line 66 "..\..\DashboardStudent.xaml"
            this.ListViewMenu.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ListViewMenu_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 8:
            this.fullname_title = ((System.Windows.Controls.Label)(target));
            return;
            case 9:
            this.class_title = ((System.Windows.Controls.Label)(target));
            return;
            case 10:
            this.logout = ((System.Windows.Controls.Button)(target));
            
            #line 86 "..\..\DashboardStudent.xaml"
            this.logout.Click += new System.Windows.RoutedEventHandler(this.btnLogout_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

