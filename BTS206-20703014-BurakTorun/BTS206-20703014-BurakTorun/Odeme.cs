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
    public partial class Odeme : Form
    {
        public Odeme()
        {
            InitializeComponent();
        }

        SqlConnection baglanti = new SqlConnection(@"Data Source=YUCECEASER;Initial Catalog=SporDb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        private void FillName()
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select UAdSoyad from UyeTbl",baglanti);
            SqlDataReader rdr;
            rdr = komut.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("UAdSoyad", typeof(string));
            dt.Load(rdr);
            AdSoyadCb.ValueMember = "UAdSOyad";
            AdSoyadCb.DataSource = dt;
            baglanti.Close();
        }

        private void uyeler()
        {
            baglanti.Open();
            string query = "select * from OdemeTbl";
            SqlDataAdapter sda = new SqlDataAdapter(query, baglanti);
            SqlCommandBuilder builder = new SqlCommandBuilder();
            var ds = new DataSet();
            sda.Fill(ds);
            OdemeDGV.DataSource = ds.Tables[0];
            baglanti.Close();
        }

        private void AdFiltrele()
        {
            baglanti.Open();
            string query = "select * from OdemeTbl where OUye= '"+AraTb.Text+"'";
            SqlDataAdapter sda = new SqlDataAdapter(query, baglanti);
            SqlCommandBuilder builder = new SqlCommandBuilder();
            var ds = new DataSet();
            sda.Fill(ds);
            OdemeDGV.DataSource = ds.Tables[0];
            baglanti.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            AdSoyadCb.Text = "";
            OdemeTb.Text = "";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            AnaSayfa anasayfa = new AnaSayfa();
            anasayfa.Show();
            this.Hide();
        }

        private void Odeme_Load(object sender, EventArgs e)
        {
            FillName();
            uyeler();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (AdSoyadCb.Text == "" || OdemeTb.Text == "")
            {
                MessageBox.Show("Eksik Bİlgi");
            }
            else
            {
                string odemeperiyot = Periyot.Value.Month.ToString() + Periyot.Value.Year.ToString();
                baglanti.Open();
                SqlDataAdapter sda = new SqlDataAdapter("select count(*) from OdemeTbl where OUye='" + AdSoyadCb.SelectedValue.ToString() + "' and OAy='" + odemeperiyot + "'", baglanti);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows[0][0].ToString()=="1")
                {
                    MessageBox.Show("Zaten Ödeme Yapıldı");
                }
                else
                {
                    string query="insert into OdemeTbl values ('"+odemeperiyot+"','"+AdSoyadCb.SelectedValue.ToString()+"','"+OdemeTb.Text+"')";
                    SqlCommand komut = new SqlCommand(query,baglanti);
                    komut.ExecuteNonQuery();
                    MessageBox.Show("Tutar Başarıyla Ödendi");
               }
                baglanti.Close();
                uyeler();
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            AdFiltrele();
            AraTb.Text = "";

        }

        private void button5_Click(object sender, EventArgs e)
        {
            uyeler();
        }
    }
}
