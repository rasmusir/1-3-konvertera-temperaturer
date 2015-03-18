using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_3_konvertera_temperaturer
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Convert_Click(object sender, EventArgs e)
        {
            TablePlaceHolder.Visible = true;

            var step = int.Parse(StepTextBox.Text);
            var start = int.Parse(StartTextBox.Text);
            var end = int.Parse(EndTextBox.Text);

            var hr = new TableHeaderRow();
            var hc = new TableHeaderCell();
            var hf = new TableHeaderCell();
            hc.Text = "C&deg;";
            hf.Text = "F&deg;";
            hr.Cells.Add(hc);
            hr.Cells.Add(hf);
            Table.Rows.Add(hr);


            for (int t = start; t<=end; t+= step)
            {
                var row = new TableRow();
                var c = new TableCell();
                var f = new TableCell();

                if (CtoF.Checked)
                {
                    f.Text = Model.TemperatureConverter.CelsiusToFarenhiet(t).ToString();
                    c.Text = t.ToString();
                }
                else
                {
                    f.Text = t.ToString();
                    c.Text = Model.TemperatureConverter.FarenheitToCelsius(t).ToString();
                }

                row.Cells.Add(c);
                row.Cells.Add(f);
                Table.Rows.Add(row);
            }
        }
    }
}