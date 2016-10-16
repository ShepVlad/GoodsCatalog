using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GoodsCatalog
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            pictureBox3.Load(@"C:\Users\Vlad\Desktop\Vladikas\GoodsCatalog\GoodsCatalog\Img\OurCompanyImg\Wolf.jpg");
            pictureBox1.Load(@"D:\projects\GoodsCatalog\GoodsCatalog\Img\Background-img.jpg");
        }

        private void label3_Click(object sender, EventArgs e)
        {
            //Случайно нажал удалять боюсь
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            //Случайно нажал удалять боюсь
        }
    }
}
