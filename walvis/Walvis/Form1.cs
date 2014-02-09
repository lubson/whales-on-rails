using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Model;
using DataLayer;
using System.Diagnostics;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        Stopwatch Timer { get; set; }
        public Form1()
        {
            InitializeComponent();
            Timer = new Stopwatch();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //Timer.Start();
            //var u = UcastnikRepository.GetById(1);
            //System.Console.WriteLine(u);
            //Timer.Stop();
            //System.Console.WriteLine(Timer.ElapsedMilliseconds);
            //Timer.Reset();

            //Timer.Start();
            //var l = UcastnikRepository.GetAll();
            //System.Console.WriteLine(Timer.ElapsedMilliseconds);
            //Timer.Stop();

            UcastnikRepository.Add(null);
        }
    }
}
