<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html lang="en"> 
<head>
<meta charset="utf-8">
<title>Paper Stack</title>
    <link href="https://fonts.googleapis.com/css?family=Asap" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
<div class="container">
	<div class="screen">
		<div class="screen__content">
				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					<br /><br /><br /><br /><br />
                    <p align="center">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Height="50px" Text="Login page" Width="200px"></asp:Label>
                    </p>
                    <br /><br /><br />
				    &nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True"></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="163px" style="text-align: center" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					
				    &nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True"></asp:Label>
					
				    &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="167px" TextMode="Password" style="text-align: left"></asp:TextBox>
					
				</div>
				
			    <div align="center">
			        <asp:Label ID="Label4" runat="server" Font-Size="Smaller" Text="In curs de conectare..."></asp:Label>
			    <br /><br />
		        <asp:Button ID="Button1" runat="server" Text="Log in" BackColor="#6600CC" Font-Size="Small" ForeColor="White" Height="50px" Width="150px" OnClick="Button1_Click" />
				</div>
								
			
		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>		
	</div>
</div>
    </form>
</body>
</html>
