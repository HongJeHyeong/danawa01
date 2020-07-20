<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- CDN - W3CSS -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- CDN - Font Awesome 4 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- CDN - Google Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- CDN - sw_topNav.css -->
    <link rel="stylesheet" href="https://storage.googleapis.com/sw-css/css/sw-1.0.0.css">

    <style>
        th {
            min-width: 100px;
        }
    </style>
</head>

<body>



    <div id="main">
        <!-- responsive template by SW ----------------------------------------------------------- -->
        <!-- Need   W3CSS  +  FONT AS4  +  sw+topnav offline ------------------------------------- -->
        <div class="sw-topnav-margin">
            &nbsp;
        </div>
        <!-- CONTENT ------------------------------------------------------------------------------------ -->
        <div class="sw-center">
            <!-- 가로복 제한 400~1200 ---------------------------------------------------------------------------------->
            <div class="sw-container-700">
                <div class="w3-container">
                    <!-- 3 main content start here!!!----------------------------------------------------------- -->
                    <!-- 2 main content start here!!!----------------------------------------------------------- -->
                    <!-- 1 main content start here!!!----------------------------------------------------------- -->

                    <form action="" method="POST" id="" name="">
                        <h4 align="center"> 주문 / 공유하기</h4>

                        <input type="text" class="w3-input" name="board_title" id="board_title" placeholder="제목을 입력하세요">
                        <br>
                        <table class="w3-table">
                            <thead class="">
                                <tr>
                                    <th scope="col">분류</th>
                                    <th scope="col">상품명</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>CPU</th>
                                    <td>
                                        코어i7-10세대 10700K (코멧레이크S) (정품)
                                        <input type="hidden" name="fk_cpu_no">

                                    </td>
                                </tr>
                                <tr>
                                    <th>쿨러</th>
                                    <td>
                                        <input type="hidden" name="fk_cooler_no">
                                        KRAKEN X63


                                    </td>
                                </tr>
                                <tr>
                                    <th>메인보드</th>
                                    <td>
                                        <input type="hidden" name="fk_mb_no">
                                        ASUS ROG STRIX Z490-A GAMING STCOM


                                    </td>
                                </tr>
                                <tr>
                                    <th>메모리</th>
                                    <td>
                                        <input type="hidden" name="fk_ram_no">
                                        DDR4 16G PC4-28800 CL16 TRIDENT Z ROYAL 실버 (8Gx2)</a>


                                    </td>
                                </tr>
                                <tr>
                                    <th>그래픽카드</th>
                                    <td>
                                        <input type="hidden" name="fk_gc_no">
                                        갤럭시 GALAX 지포스 RTX 2070 SUPER EX WHITE OC D6 8GB</a>


                                    </td>
                                </tr>
                                <tr>
                                    <th>SSD</th>
                                    <td>
                                        <input type="hidden" name="fk_ssd_no">
                                        Seagate 파이어쿠다 520 M.2 NVMe (500GB)</a>

                                    </td>
                                </tr>
                                <tr>
                                    <th>케이스</th>
                                    <td>
                                        <input type="hidden" name="fk_case_no">
                                        써멀테이크 View 71 강화유리 SNOW 에디션</a>


                                    </td>
                                </tr>
                                <tr>
                                    <th>파워</th>
                                    <td>
                                        <input type="hidden" name="fk_ssd_no">
                                        시소닉 FOCUS GOLD GX-850 WHITE Full Modular</a>


                                    </td>
                                </tr>
                                <tr>
                                    <!-- 201809 : 총 견적 합계 추가 -->
                                    <th class=""><span>견적 합계</span></th>
                                    <td class=""><span class="">2,990,000</span>원</td>
                                </tr>
                            </tbody>
                        </table>

                        <h4>Content</h4>
                        <div class="">
                            <textarea name="board_content" id="board_content" rows="3" cols="70"></textarea>
                        </div>
                        <br>
                        <div class="w3-center">
                            <input type="submit" value="주문하기">
                            <input type="button" value="공유하기">
                            <input type="button" value="삭제하기">
                            <input type="reset" value="다시쓰기">
                        </div>

                        <input type="hidden" name="no" value="">


                    </form>



                </div>
            </div>
            <!-- main content end----------------------------------------------------------------------- -->
        </div>
    </div>

    <!-- HEAD ------------------------------------------------------------------------------------ -->
    <!-- head가 맨 나중?나중에 나온 요소가 레이어 맨위로... ---------------------------------------->
    <header class="topnav w3-card-4" id="topNav">
        <a href="#" class="active">다너놔</a>
        <a href="#">견적짜기</a>
        <a href="#">견적게시판</a>
        <a href="#">공지사항</a>
        <a href="#">QNA</a>
        <a href="#">마이페이지</a>
        <a href="javascript:void(0);" class="icon" onclick="responsiveMenuPopUp()">
            <i class="fa fa-bars"></i>
        </a>
    </header>

    <script>
        /* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
        function responsiveMenuPopUp() {
            var x = document.getElementById("topNav");
            if (x.className === "topnav w3-card-4") {
                x.className += " responsive";
            } else {
                x.className = "topnav w3-card-4";
            }
        }

        window.onresize = function () {
            var x = document.getElementById("topNav");
            x.className = "topnav w3-card-4";

        }
    </script>


</body>

</html>