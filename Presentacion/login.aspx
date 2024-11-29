<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Presentacion.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: url('images/fondo.png') no-repeat center center/cover;
        }
        .card {
            max-width: 400px;
            width: 90%; /* Se ajusta en pantallas pequeñas */
            background: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
        }
        .btn-primary {
            background-color: #00CED1;
            border-color: #00CED1;
            font-weight: bold;
            color: #ffffff;
        }
        .btn-primary:hover {
            background-color: #00CED1;
            border-color: #0056b3;
        }
        .btn-spacing {
            margin-bottom: 10px;
        }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center vh-100">
    <div class="card p-4 shadow">
        <div class="text-center">
            <img src="images/logo.jpeg" alt="User Avatar" class="rounded-circle border border-primary mb-3" style="width: 80px; height: 80px;">
        </div>
        <h2 class="text-center mt-2">Login</h2>
        <form id="form1" runat="server">
            <div class="mb-3">
                <asp:TextBox ID="TxtUser" runat="server" CssClass="form-control" placeholder="Ingrese usuario"></asp:TextBox>
            </div>
            <div class="mb-3 position-relative">
                <asp:TextBox ID="TxtPass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese contraseña"></asp:TextBox>
                <span class="position-absolute top-50 end-0 translate-middle-y me-3" onclick="togglePassword()">
                    <i id="toggleIcon" class="fas fa-eye"></i>
                </span>
            </div>
            <div class="d-flex justify-content-between align-items-center mb-3">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">Remember me</label>
                </div>
                <a href="#" class="text-decoration-none text-primary">Forgot Password?</a>
            </div>
            <asp:Button ID="BtnIngresar" runat="server" Text="Ingresar" CssClass="btn btn-primary w-100 btn-spacing"/>
            <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary w-100 btn-spacing"/>
            <asp:Label ID="Mensaje" runat="server" CssClass="text-danger mt-3 text-center"></asp:Label>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script>
        function togglePassword() {
            var passwordField = document.getElementById('<%= TxtPass.ClientID %>');
            var toggleIcon = document.getElementById('toggleIcon');
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                toggleIcon.classList.remove('fa-eye');
                toggleIcon.classList.add('fa-eye-slash');
            } else {
                passwordField.type = 'password';
                toggleIcon.classList.remove('fa-eye-slash');
                toggleIcon.classList.add('fa-eye');
            }
        }
    </script>
</body>
</html>
