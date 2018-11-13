<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="USAAProject.AboutPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .center
        {
            text-align: center;
        }
        .rounded
        {
            border-bottom-left-radius: 5%;
            border-bottom-right-radius: 5%;
            border-top-left-radius: 5%;
            border-top-right-radius: 5%;
            background-color: white;
            padding: 10px;
        }
    </style>
    <p>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
</p>
<div>
    &nbsp;
    <div class="rounded">
    <h1 class="center">About Six Sigma</h1>
    <p>
Six Sigma is a rigorous process that focuses on developing and delivering near-perfect products and services under near-perfect conditions. It is named after a statistical term which measures how far a process is from perfection. Six Sigma enhances productivity and profitability by improving an organization’s processes. It uses data to solve problems, eliminate defects and reduce the amount of variation in a process. The target amount of variation is 3.4 defects per million opportunities. This is the equivalent of products and services that are free of defects 99.9997% of the time.
        </p>
        </div>
        <br />
    <div class="rounded">
<h3 class="center">How Six Sigma Works</h3>
The Six Sigma methodology is typically applied to business processes in a five-step cycle referred to by the acronym DMAIC. This cycle includes:
        <br />
        <br />
        <p><strong>Define</strong> – The process begins when the project team creates a charter that defines the scope of the project, who is on the team, the process the team will be improving and the project’s objective. The team gathers customer data and uses this information to determine the critical to quality (CTQ) customer requirements. The team will then focus on these CTQs.
    </p>
        <p><strong>Measure</strong> – This phase begins by selecting the key measurement for the project that captures the output of the process and connects it to customer needs. Data is then collected on the process and analyzed for variation. Variation in the process is what Six Sigma seeks to eliminate. This data provides a process Sigma, or the current amount of variation in the process. The goal is to reduce variation until the process meets the Six Sigma standard.
    </p>
    <p>
<strong>Analyze</strong> – This phase seeks to identify the possible causes of variation in the process. This phase uses process mapping and additional data gathering to develop hypotheses about the potential causes of variation. These hypotheses can be used to determine the root causes of process variation. This phase includes quantifying the financial benefit of eliminating defects from the process.
        </p>
    <p>
<strong>Improve</strong> – This phase focuses on finding solutions to addressing root causes of problems and reducing or eliminating process variation. This phase requires creative thinking and constant refining of the solution through analysis. When a solution is developed, it is tested with a small-scale pilot program and if it is financially viable, it is applied to the entire process.
        </p>
    <p>
<strong>Control</strong> – This phase documents the new process and its controls. The project team also creates a timetable for implementing the plan. After the process is implemented, this project team will continue to monitor it for several months to ensure that the new process meets productivity and financial expectations. Finally, the team assesses what it learned during the project and looks for other areas in which this learning can be applied.
        </p>
        </div>
    <br />
    <div class="rounded">
<h3 class="center">Benefits of Six Sigma</h3>
When practiced sensibly, Six Sigma is more than just a statistical methodology to improve processes. Former General Electric CEO Jack Welch describes Six Sigma as, “One of the greatest management innovations in the past quarter century, and an extremely powerful way to boost a company’s competitiveness.”

Six Sigma can enhance operational efficiency, increase productivity and lower costs. It can improve designs and get products to market faster and with fewer defects. Most importantly, the Six Sigma approach to quality improvement can be contagious. Once employees are exposed to it by participating in a Six Sigma project, they carry the quality mindset with them for the rest of their career. Six Sigma not only improves processes, it creates lifelong leaders and innovators.
                
        </div>
    <br />
    <div class="rounded">
<h3 class="center">Belt Levels Explained</h3>
    <p>Six Sigma professionals exist at every level – each with a different role to play. While implementations and roles may vary, here is a basic guide to who does what.

At the project level, there are black belts, master black belts, green belts, yellow belts and white belts. These people conduct projects and implement improvements.

        <p><strong>Black Belt: </strong>
Leads problem-solving projects. Trains and coaches project teams.
            </p>
        <p><strong>Green Belt: </strong>
Assists with data collection and analysis for Black Belt projects. Leads Green Belt projects or teams.
            </p>
        <p><strong>Master Black Belt: </strong>
Trains and coaches Black Belts and Green Belts. Functions more at the Six Sigma program level by developing key metrics and the strategic direction. Acts as an organization’s Six Sigma technologist and internal consultant.
            </p>
        <p><strong>Yellow Belt: </strong>
Participates as a project team member. Reviews process improvements that support the project.
            </p>
        <p><strong>White Belt: </strong>
Can work on local problem-solving teams that support overall projects, but may not be part of a Six Sigma project team. Understands basic Six Sigma concepts from an awareness perspective.
            </p>
        <p>
Every project needs organizational support. Six Sigma executives and champions set the direction for selecting and deploying projects. They ensure, at a high level, that projects succeed, add value and fit within the organizational plan.
            </p>
        <p><strong>Champions: </strong>
Translate the company’s vision, mission, goals and metrics to create an organizational deployment plan and identify individual projects. Identify resources and remove roadblocks.
            </p>
        <p><strong>Executives: </strong>
Provide overall alignment by establishing the strategic focus of the Six Sigma program within the context of the organization’s culture and vision.</p>
            </div>
    </div>
</asp:Content>
