<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="assets/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
    <title>쪽지 보내기</title>
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
        rel="stylesheet">
    <style type="text/css">
        body {
            font-family: Nunito, sans-serif;
            position: relative;
            background: white;
            font-size: 14px;
            color: black;
        }

        ul {
            margin: 0;
            padding: 0;
        }

        li {
            display: inline-block;
            text-decoration: unset;
        }

        a {
            text-decoration: none;
        }

        .btn {
            background-color: #292929;
            border-color: transparent;
            -webkit-print-color-adjust: exact;
            letter-spacing: 0.4px;
            border-radius: 4px;
            font-weight: 800;
            font-size: 14px;
            line-height: 19px;
            color: #FFFFFF;
            cursor: pointer;
            padding: 7px 13px;
            -webkit-box-shadow: 1px 11px 20px 0px rgba(233, 179, 14, 0.12);
            box-shadow: 1px 11px 20px 0px rgba(233, 179, 14, 0.12);
            text-transform: capitalize;

        }

        .btn:focus {
            outline: none;
        }

        .text-center {
            text-align: center
        }

        .template-width {
            width: 724px;
            padding: 0 0 20px;
        }


        @media (max-width: 767px) {
            .template-width {
                width: 550px;
            }

        }

        @media (max-width: 576px) {
            .template-width {
                width: 420px;
            }

            .header {
                display: block;
            }

            .header td {
                display: block;
                text-align: center;
            }
        }

        @media (max-width: 480px) {
            .template-width {
                width: 300px;
            }
        }
    </style>
</head>

<body style="margin: 80px auto;">
    <table class="template-width" align="center" border="0" cellpadding="0" cellspacing="0"
        style="background-color: #fff;  box-shadow: 0px 0px 14px -4px rgba(0, 0, 0, 0.2705882353);">
        <tbody>

            <tr>
                <td class="success-img" style="text-align: center;">
                   <h2
                        style="margin: 0 auto; width: 90%; margin-top:50px; 
                        font-size:calc(18px + (22 - 18) * ((100vw - 320px) / (1920 - 320)));">
                        쪽지 보내기</h2>
                    <h3 style="width: 70%;margin: 0 auto 15px;line-height: 1.2;color: #9a9a9a;font-weight: 400;">회원에게 보낼 쪽지를 작성하세요</h3>
                </td>
            </tr>

            
            <tr>
                <td style="padding: 0 30px 30px; text-align: center;">
                    <textarea style="width: 100%;  margin-bottom: 20px; border-color: #cecece;" rows="20"></textarea>
                    <a href="#" class="btn">쪽지 보내기</a>
                </td>
            </tr>
        </tbody>
    </table>
</body>

</html>

