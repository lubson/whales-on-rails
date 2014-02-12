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
        UcastnikRepository Rep {get; set; }
        public Form1()
        {
            InitializeComponent();
            Timer = new Stopwatch();
            Rep = new UcastnikRepository();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Timer.Start();
            var u = Rep.GetById(1);
            Timer.Stop();
            System.Console.WriteLine(u);
            System.Console.WriteLine(Timer.ElapsedMilliseconds);
            Timer.Reset();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Timer.Start();
            var u = Rep.GetAll();
            Timer.Stop();
            foreach (var ucastnik in u)
            {
                System.Console.WriteLine(ucastnik);
            }
            System.Console.WriteLine(Timer.ElapsedMilliseconds);
            Timer.Reset();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Timer.Start();
            var ucastnik = Rep.Add(new Ucastnik()
            {
                Jmeno = "Lubomir", 
                Prijmeni = "Hruban", 
                Narozen = DateTime.Now, 
                Pohlavi = 1
            });
            Timer.Stop();
            System.Console.WriteLine(Timer.ElapsedMilliseconds);
            Timer.Reset();
        }
    }
}
