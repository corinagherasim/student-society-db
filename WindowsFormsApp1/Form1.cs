using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnAfisare_Click(object sender, EventArgs e)
        {
            if (cbSelect.SelectedItem == "voluntari")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM voluntari";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "voluntari");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "voluntari";
            }
            if (cbSelect.SelectedItem == "voluntari sortati dupa nume")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM voluntari order by nume_voluntar asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "voluntari");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "voluntari";
            }
            if (cbSelect.SelectedItem == "departamente")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM departamente";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "departamente");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "departamente";
            }
            if (cbSelect.SelectedItem == "departamente sortate dupa nume")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM departamente order by nume_departament asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "departamente");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "departamente";
            }
            if (cbSelect.SelectedItem == "director")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM director";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "director");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "director";
            }
            if (cbSelect.SelectedItem == "directori sortati dupa id_departament")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM director order by id_departament desc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "director");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "director";
            }
            if (cbSelect.SelectedItem == "orase")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM orase";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "orase");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "orase";
            }
            if (cbSelect.SelectedItem == "orase sortate dupa nume")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM orase order by nume_oras asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "orase");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "orase";
            }
            if (cbSelect.SelectedItem == "asociatii_partenere")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM asociatii_partenere";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "asociatii_partenere");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "asociatii_partenere";
            }
            if (cbSelect.SelectedItem == "asociatii partenere sortate dupa nume")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM asociatii_partenere order by nume_asoc asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "asociatii_partenere");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "asociatii_partenere";
            }
            if (cbSelect.SelectedItem == "taskuri")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM taskuri";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "taskuri");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "taskuri";
            }
            if (cbSelect.SelectedItem == "taskuri sortate dupa id_proiect")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM taskuri order by id_proiect asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "taskuri");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "taskuri";
            }
            if (cbSelect.SelectedItem == "proiecte")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM proiecte";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "proiecte");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "proiecte";
            }
            if (cbSelect.SelectedItem == "proiecte sortate dupa nume")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM proiecte order by nume_proiect asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "proiecte");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "proiecte";
            }
            if (cbSelect.SelectedItem == "sponsori")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM sponsori";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "sponsori");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "sponsori";
            }
            if (cbSelect.SelectedItem == "sponsori sortati dupa domeniu")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM sponsori order by domeniu asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "sponsori");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "sponsori";
            }
            if (cbSelect.SelectedItem == "contracte")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM contracte";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "contracte");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "contracte";
            }
            if (cbSelect.SelectedItem == "contracte sortate dupa id_proiect")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM contracte order by id_proiect asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "contracte");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "contracte";
            }
            if (cbSelect.SelectedItem == "jocuri_hr")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM jocuri_hr";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "jocuri_hr");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "jocuri_hr";
            }
            if (cbSelect.SelectedItem == "jocuri sortate dupa nume")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM jocuri_hr order by nume_joc asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "jocuri_hr");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "jocuri_hr";
            }
            if (cbSelect.SelectedItem == "joaca")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM joaca";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "joaca");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "joaca";
            }
            if (cbSelect.SelectedItem == "jucat sortat dupa id_proiect")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM joaca order by id_proiect asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "joaca");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "joaca";
            }
            if (cbSelect.SelectedItem == "activitati")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM activitati";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "activitati");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "activitati";
            }
            if (cbSelect.SelectedItem == "activitati sortate dupa id_voluntar")
            {
                DataSet result = new DataSet();
                string s = "SELECT * FROM activitati order by id_voluntar asc";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "activitati");
                conn.Close();
                dgvTabel.DataSource = result;
                dgvTabel.DataMember = "activitati";
            }

            else { }
        }

        private void cbSelect_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnStergere_Click(object sender, EventArgs e)
        {
            if (cbSelect.SelectedItem == "sterge din voluntari")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string s = "DELETE FROM voluntari where id_voluntar=" + IDvol + "";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "voluntari");
                conn.Close();
                dgvTabel.DataSource = result;

            }
            if (cbSelect.SelectedItem == "sterge din taskuri")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string s = "DELETE FROM taskuri where id_task=" + IDvol + "";
                MessageBox.Show("Acest task a fost șters și din activitati");
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "taskuri");
                conn.Close();
                dgvTabel.DataSource = result;

            }

            if (cbSelect.SelectedItem == "sterge din proiecte")
            {
                DataSet result  = new DataSet();
                string IDvol = tbIDvol.Text;
                string s = "DELETE FROM proiecte where id_proiect=" + IDvol + "";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "proiecte");
                conn.Close();
                dgvTabel.DataSource = result;

            }

            if (cbSelect.SelectedItem == "sterge din asociatii partenere")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string s = "DELETE FROM asociatii_partenere where id_asociatiepart=" + IDvol + "";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "asociatii_partenere");
                conn.Close();
                dgvTabel.DataSource = result;

            }

            if (cbSelect.SelectedItem == "sterge din sponsori")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string s = "DELETE FROM sponsori where id_sponsor=" + IDvol + "";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "sponsori");
                conn.Close();
                dgvTabel.DataSource = result;

            }


            if (cbSelect.SelectedItem == "sterge din orase")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string s = "DELETE FROM orase where id_oras=" + IDvol + "";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "orase");
                conn.Close();
                dgvTabel.DataSource = result;

            }


            if (cbSelect.SelectedItem == "sterge din activitati")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string IDup = tbIDup.Text;
                string s = "DELETE FROM activitati where id_task=" + IDvol + " AND id_voluntar=" + IDup + "";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "activitati");
                conn.Close();
                dgvTabel.DataSource = result;

            }

            if (cbSelect.SelectedItem == "sterge din departamente")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string s = "DELETE FROM orase where id_departament=" + IDvol + "";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "departamente");
                conn.Close();
                dgvTabel.DataSource = result;

            }

            if (cbSelect.SelectedItem == "sterge din director")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string s = "DELETE FROM director where id_departament=" + IDvol +"";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "director");
                conn.Close();
                dgvTabel.DataSource = result;

            }

            if (cbSelect.SelectedItem == "sterge din jocuri")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string s = "DELETE FROM jocuri_hr where id_joc=" + IDvol + "";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "jocuri_hr");
                conn.Close();
                dgvTabel.DataSource = result;

            }


        }

        private void btnEditare_Click(object sender, EventArgs e)
        {
            if (cbSelect.SelectedItem == "editeaza departament voluntar")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string IDup = tbIDup.Text;
                string s = "UPDATE voluntari SET id_departament=" + IDup + " WHERE id_voluntar=" + IDvol + "";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306;database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "voluntari");
                conn.Close();
                dgvTabel.DataSource = result;

            }


            if (cbSelect.SelectedItem == "editeaza voluntar de la activitati")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string IDup = tbIDup.Text;
                string IDupp = tbIDupp.Text;
                string s = "UPDATE activitati SET id_voluntar=" + IDup + " WHERE id_task=" + IDvol + " AND id_voluntar=" + IDupp + " ";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306;database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "activitati");
                conn.Close();
                dgvTabel.DataSource = result;

            }

            if (cbSelect.SelectedItem == "editeaza jocurile jucate la proiecte")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string IDup = tbIDup.Text;
                string IDupp = tbIDupp.Text;
                string s = "UPDATE joaca SET id_joc=" + IDup + " WHERE id_proiect=" + IDvol + " AND id_joc=" + IDupp + " ";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306;database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "activitati");
                conn.Close();
                dgvTabel.DataSource = result;

            }

            if (cbSelect.SelectedItem == "editeaza director")
            {
                DataSet result = new DataSet();
                string IDvol = tbIDvol.Text;
                string IDup = tbIDup.Text;
                string s = "UPDATE director SET id_voluntar=" + IDup + " WHERE id_departament=" + IDvol + "";
                MySqlConnection conn = new MySqlConnection("server=localhost;port=3306;database=asmi;uid=root;password=BazaDeDate2022;");
                MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
                conn.Open();
                cmd.Fill(result, "director");
                conn.Close();
                dgvTabel.DataSource = result;

            }


        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void btnCerere_Click(object sender, EventArgs e)
        {
            DataSet result = new DataSet();
            string IDvol = tbIDvol.Text;
            string s = "SELECT vol.id_voluntar, prenume_voluntar, nume_voluntar FROM voluntari vol JOIN activitati act ON vol.id_voluntar = act.id_voluntar JOIN taskuri tas ON act.id_task = tas.id_task WHERE upper(tas.nume_task) like ('%MANAGER%') AND tas.id_proiect = " + IDvol + "";
            MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
            MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
            conn.Open();
            cmd.Fill(result, "voluntari");
            conn.Close();
            dgvTabel.DataSource = result;
            dgvTabel.DataMember = "voluntari";
        }

        private void btnCerereHaving_Click(object sender, EventArgs e)
        {
            DataSet result = new DataSet();
            string s = "SELECT vol.id_voluntar, nume_voluntar, prenume_voluntar, id_departament, COUNT(id_task) numar_taskuri FROM voluntari vol JOIN activitati act on vol.id_voluntar = act.id_voluntar GROUP BY vol.id_voluntar, nume_voluntar, prenume_voluntar, id_departament HAVING COUNT(id_task) > 3 ";
            MySqlConnection conn = new MySqlConnection("server=localhost;port=3306; database=asmi;uid=root;password=BazaDeDate2022;");
            MySqlDataAdapter cmd = new MySqlDataAdapter(s, conn);
            conn.Open();
            cmd.Fill(result, "voluntari");
            conn.Close();
            dgvTabel.DataSource = result;
            dgvTabel.DataMember = "voluntari";
        }

    }
}
