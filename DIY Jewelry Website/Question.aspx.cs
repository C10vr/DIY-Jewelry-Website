using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DIY_Jewelry_Website
{
    public partial class Question : Page
    {
        // Correct answers mapping by question number
        private readonly Dictionary<int, string> _answers = new Dictionary<int, string>
        {
            {1, "C"}, // Silver
            {2, "B"}, // Two pairs of pliers
            {3, "B"}, // Lay out and plan a jewelry design
            {4, "C"}, // Sapphire
            {5, "B"}, // Purity of gold
            {6, "B"}, // Brushed
            {7, "B"}, // Use mild soap and a soft cloth
            {8, "B"}, // Wear eye protection and ensure ventilation
            {9, "B"}, // Elastic cord
            {10, "C"} // Tutorials/Courses section
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            // Prevent caching
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
            Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
            Response.Cache.SetValidUntilExpires(false);

            // Restrict access to userType = 1 only (always enforce on each load)
            var ut = Convert.ToString(Session["UserType"] ?? string.Empty);
            if (ut != "1")
            {
                pnlQuiz.Visible = false;
                pnlAccessDenied.Visible = true;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Double-check access on submit
            var ut = Convert.ToString(Session["UserType"] ?? string.Empty);
            if (ut != "1")
            {
                pnlQuiz.Visible = false;
                pnlAccessDenied.Visible = true;
                return;
            }
            int correct = 0;
            int wrong = 0;

            // Collect user answers from radio lists
            var userAnswers = new Dictionary<int, string>
            {
                {1, rblQ1.SelectedValue},
                {2, rblQ2.SelectedValue},
                {3, rblQ3.SelectedValue},
                {4, rblQ4.SelectedValue},
                {5, rblQ5.SelectedValue},
                {6, rblQ6.SelectedValue},
                {7, rblQ7.SelectedValue},
                {8, rblQ8.SelectedValue},
                {9, rblQ9.SelectedValue},
                {10, rblQ10.SelectedValue}
            };

            phAnswers.Controls.Clear();

            for (int i = 1; i <= 10; i++)
            {
                string user = userAnswers.ContainsKey(i) ? userAnswers[i] : string.Empty;
                string correctAnswer = _answers[i];

                if (!string.IsNullOrEmpty(user) && user == correctAnswer)
                {
                    correct++;
                }
                else
                {
                    wrong++;
                }

                // Show per-question feedback
                var lbl = new Label();
                lbl.Text = $"Q{i}: Your answer = {DisplayChoice(user)}, Correct = {DisplayChoice(correctAnswer)}<br/>";
                phAnswers.Controls.Add(lbl);
            }

            lblScore.Text = $"Correct: {correct} &nbsp;&nbsp; Wrong: {wrong}";
            pnlResults.Visible = true;
        }

        private string DisplayChoice(string code)
        {
            switch (code)
            {
                case "A": return "A";
                case "B": return "B";
                case "C": return "C";
                case "D": return "D";
                default: return "(no answer)";
            }
        }
    }
}
