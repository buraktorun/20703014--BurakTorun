using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace BTS206_20703014_BurakTorun
{
    public partial class UyeEkle : Form
    {
        public UyeEkle()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection(@"Data Source=YUCECEASER;Initial Catalog=SporDb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");


        private void button1_Click(object sender, EventArgs e)
        {
            if (AdSoyadTb.Text==""|| TelefonTb.Text== ""|| OdemeTb.Text== ""|| YasTb.Text=="")
            {
                MessageBox.Show("Eksik Bİlgi");
            }
            else
            {
                try
                {
                    baglanti.Open();
                    string query = "insert into UyeTbl values('" + AdSoyadTb.Text + "', '" + TelefonTb.Text + "','" + CinsiyetCb.SelectedItem.ToString() + "','" + YasTb.Text + "','" + OdemeTb.Text + "','" + ZamanlamaCb.SelectedItem.ToString() + "')";
                    SqlCommand komut = new SqlCommand(query, baglanti);
                    komut.ExecuteNonQuery();
                    MessageBox.Show("Üye Başarıyla Eklendi");
                    baglanti.Close();

                    AdSoyadTb.Text = "";
                    TelefonTb.Text = "";
                    OdemeTb.Text = "";
                    YasTb.Text = "";
                    CinsiyetCb.Text = "";
                    ZamanlamaCb.Text = "";

                }
                catch(Exception Ex)
                {
                    MessageBox.Show("Ex.message");
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AdSoyadTb.Text = "";
            TelefonTb.Text = "";
            OdemeTb.Text = "";
            YasTb.Text = "";
            CinsiyetCb.Text = "";
            ZamanlamaCb.Text = "";
        }

        private void button4_Click(object sender, EventArgs e)
        {
            AnaSayfa anasayfa = new AnaSayfa();
            anasayfa.Show();
            this.Hide();
        }
    }
}
