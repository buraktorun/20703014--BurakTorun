using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BTS206_20703014_BurakTorun
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        

        private void button2_Click(object sender, EventArgs e)
        {
            KullanıcıTb.Text = "";
            SıfreTb.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (KullanıcıTb.Text == "" || SıfreTb.Text == "")
            {
                MessageBox.Show("Eksik Bİlgi");
            }
            else if (KullanıcıTb.Text == "admin" && SıfreTb.Text == "1234") 
            {
                AnaSayfa anasayfa = new AnaSayfa();
                anasayfa.Show();
                this.Hide();
             }
            else
            {
                MessageBox.Show("Hatalı Kullanıcı yada Şifre");
            }
            
        }
    }
}
