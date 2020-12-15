<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>admin Page</title>

    <link rel="stylesheet" href="../../CSS/reset.css">
    <link rel="stylesheet" href="../../CSS/style.css">
    <link rel="stylesheet" href="../../CSS/admin/admin.css">
    <link rel="stylesheet" href="../../CSS/admin/user/user.css">
</head>
<body>
<header id="header" class="header">
       
    <div class="logo-bar">
        <h1 class="no-display">��ó</h1>
        <a href="../index.html"><div class="logo"></div></a>
        <ul>
          <li><button class="logout">�α׾ƿ�</button></li>
        </ul>
    </div>

    <nav id="nav" class="nav">
        <h1 class="no-display">�޴�</h1>
        <ul>
        <li><a href="#">�⺻����</a></li>
        <li><a href="#">��ǰ����</a></li>
        <li><a href="#">�ֹ�����</a></li>
        <li><a href="index">ȸ������</a></li>
        <li><a href="#">�Խ��ǰ���</a></li>
        <li><a href="#">��������</a></li>
        </ul>
    </nav>

</header>


<div id="body" class="body">
    <aside class="aside">
        <a href="index"><h1 class="img-button user-button">ȸ������</h1></a>
        <ul class="aside-menu">
            <li>ȸ�� ����</li>
            <ul>
                <li><a href="list.html">ȸ�� ����Ʈ</a></li>
                <li><a href="mana.html">ȸ����� ����</a></li>
                <li><a href="leave">Ż��ȸ�� ����Ʈ</a></li>
                <li><a href="point">������ ����</a></li>
            </ul>
            <li>2</li>
            <li>3</li>
        </ul>
    </aside>

    <section class="main-section">
        <main class="main">
            <div class="main-head">
                <h1>ȸ�� ����</h1>
                <span>home > ȸ������</span>
            </div>
            <div class="main-body">
                <section>
                    <h1>ȸ�� ���</h1>
                    <table class="main-table">
                        <tr>
                            <th>�ű�ȸ�� ���</th>
                            <td>���� 0��/���� 0��/�̹��� 0��/�̹��� 0��</td>
                        </tr>
                        <tr>
                            <th>ȸ�� ����</th>
                            <td>
                                <table class="inner-table">
                                    <tr>
                                        <th>ȸ������</th>
                                        <th>�ο�</th>
                                    </tr>
                                    <tr>
                                        <th>���� �ü�</th>
                                        <td>${gymLength }</td>
                                    </tr>
                                    <tr>
                                        <th>2�ܰ�</th>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <th>1�ܰ�</th>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <th>�Ϲ� ȸ��</th>
                                        <td>${userLength }<i class="fas fa-angle-double-right"></i></td>
                                        
                                    </tr>
                                    <tr>
                                        <th>���� ��û��</th>
                                        <td>0</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </section>

                <section class="table-section event-table">
                    <h1>ȸ�� �̺�Ʈ</h1>
                    <table>
                        <tr>
                            <th>����</th>
                            <td>���� 0�� / �̹� �� 0�� / �̹� �� 0��</td>
                        </tr>
                    </table>
                </section>

                <section class="table-section">
                    <h1>ȸ������ ����</h1>
                    <table>
                        <tr>
                            <th>ȸ�����Խ� ����	</th>
                            <td>
                                ������ ����&nbsp;&nbsp;	:&nbsp;&nbsp; �����ݱ�� <a href="point.html" class="point-url">�̻��</a>
                            </td>
                        </tr>
                        <tr>
                            <th>ȸ������ ���</th>
                            <td>���� ���� </td>
                        </tr>
                        <tr>
                            <th>Ż����</th>
                            <td>���Ż��</td>
                        </tr>
                    </table>
                </section> 
            </div>
        </main>
    </section>
</div>

</body>
</html>