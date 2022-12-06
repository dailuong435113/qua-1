<?php
session_start();
date_default_timezone_set("Asia/Ho_Chi_Minh");
include("includes/db.php");
$date = date("Y-m-d H:i:s");
if (isset($_GET['add'])) {
    $fullName = $_GET['fullName'];
    $passport = $_GET['passport'];
    $date_of_birth = $_GET['date_of_birth'];
    $gender = $_GET['gender'];
    $nationality = $_GET['nationality'];
    $province = $_GET['province'];
    $district = $_GET['district'];
    $ward = $_GET['ward'];
    $num_of_address = $_GET['num_of_address'];
    $phone = $_GET['phone'];
    $Comorbidity1 = $_GET['Comorbidity1'];
    $Comorbidity2 = $_GET['Comorbidity2'];
    $Comorbidity3 = $_GET['Comorbidity3'];
    $Comorbidity4 = $_GET['Comorbidity4'];
    $Comorbidity5 = $_GET['Comorbidity5'];
    $Comorbidity6 = $_GET['Comorbidity6'];
    $Comorbidity7 = $_GET['Comorbidity7'];
    $Comorbidity8 = $_GET['Comorbidity8'];
    $Comorbidity9 = $_GET['Comorbidity9'];
    $Comorbidity10 = $_GET['Comorbidity10'];
    $Symtom1 = $_GET['Symtom1'];
    $Symtom2 = $_GET['Symtom2'];
    $Symtom3 = $_GET['Symtom3'];
    $Symtom4 = $_GET['Symtom4'];
    $Symtom5 = $_GET['Symtom5'];
    $Symtom6 = $_GET['Symtom6'];
    $Symtom7 = $_GET['Symtom7'];
    $Symtom8 = $_GET['Symtom8'];
    $Symtom9 = $_GET['Symtom9'];
    $Symtom10 = $_GET['Symtom10'];
    $Symtom11 = $_GET['Symtom11'];

    if ($fullName == "" && $passport == "" && $date_of_birth = "" && $gender == "" && $nationality = "" && $province = "" && $district = "" && $ward = "" && $num_of_address = "" && $phone = "") {
        echo "<script>alert('Please enter complete information')</script>";
        echo "<script>window.open('declaration.php?declaration=','_self')</script>";
    } else {
        $sql = "INSERT INTO `health_declaration`(`passport`, `fullname`, `date_of_birth`, `gender`, `nationality`, `province`, `district`, `ward`, `Number_of_houses`, `phone`, `declaration_date`) 
        VALUES ('" . $passport . "','" . $fullName . "','" . $date_of_birth . "','" . $gender . "','" . $nationality . "','" . $province . "','" . $district . "','" . $ward . "','" . $num_of_address . "','" . $phone . "','" . $date . "')";
        if (mysqli_query($conn, $sql)) {
            //Thông báo nếu thành công
            echo "<script>alert('Add employee successfully')</script>";
            echo 'Thêm thành công';
            //echo "<script>alert('Add patient success')</script>";
            if ($Comorbidity1 != "") {
                $sql_com1 = "INSERT INTO `health_declaration_comorbidity`(`passport`, `declaration_date`, `comorbidity`) VALUES ('" . $passport . "','" . $date . "','.$Comorbidity1.')";
                mysqli_query($conn, $sql_com1);
                echo $sql_com1;
            }
            if ($Comorbidity2 != "") {
                $sql_com2 = "INSERT INTO `health_declaration_comorbidity`(`passport`, `declaration_date`, `comorbidity`) VALUES ('" . $passport . "','" . $date . "','.$Comorbidity2.')";
                mysqli_query($conn, $sql_com2);
                echo $sql_com2;
            }
            if ($Comorbidity3 != "") {
                $sql_com3 = "INSERT INTO `health_declaration_comorbidity`(`passport`, `declaration_date`, `comorbidity`) VALUES ('" . $passport . "','" . $date . "','.$Comorbidity3.')";
                mysqli_query($conn, $sql_com3);
                echo $sql_com3;
            }
            if ($Comorbidity4 != "") {
                $sql_com4 = "INSERT INTO `health_declaration_comorbidity`(`passport`, `declaration_date`, `comorbidity`) VALUES ('" . $passport . "','" . $date . "','.$Comorbidity4.')";
                mysqli_query($conn, $sql_com4);
                echo $sql_com4;
            }
            if ($Comorbidity5 != "") {
                $sql_com5 = "INSERT INTO `health_declaration_comorbidity`(`passport`, `declaration_date`, `comorbidity`) VALUES ('" . $passport . "','" . $date . "','.$Comorbidity5.')";
                mysqli_query($conn, $sql_com5);
                echo $sql_com5;
            }
            if ($Comorbidity6 != "") {
                $sql_com6 = "INSERT INTO `health_declaration_comorbidity`(`passport`, `declaration_date`, `comorbidity`) VALUES ('" . $passport . "','" . $date . "','.$Comorbidity6.')";
                mysqli_query($conn, $sql_com6);
                echo $sql_com6;
            }
            if ($Comorbidity7 != "") {
                $sql_com7 = "INSERT INTO `health_declaration_comorbidity`(`passport`, `declaration_date`, `comorbidity`) VALUES ('" . $passport . "','" . $date . "','.$Comorbidity7.')";

                mysqli_query($conn, $sql_com7);
                echo $sql_com7;
            }
            if ($Comorbidity8 != "") {
                $sql_com8 = "INSERT INTO `health_declaration_comorbidity`(`passport`, `declaration_date`, `comorbidity`) VALUES ('" . $passport . "','" . $date . "','.$Comorbidity8.')";
                mysqli_query($conn, $sql_com8);
                echo $sql_com8;
            }
            if ($Comorbidity9 != "") {
                $sql_com9 = "INSERT INTO `health_declaration_comorbidity`(`passport`, `declaration_date`, `comorbidity`) VALUES ('" . $passport . "','" . $date . "','.$Comorbidity9.')";
                mysqli_query($conn, $sql_com9);
                echo $sql_com9;
            }
            if ($Comorbidity10 != "") {
                $sql_com10 = "INSERT INTO `health_declaration_comorbidity`(`passport`, `declaration_date`, `comorbidity`) VALUES ('" . $passport . "','" . $date . "','.$Comorbidity10.')";
                mysqli_query($conn, $sql_com10);
                echo $sql_com10;
            }
            if ($Symtom1 != "") {
                $sql_sym1 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom1.')";
                mysqli_query($conn, $sql_sym1);
            }
            if ($Symtom2 != "") {
                $sql_sym2 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom2.')";
                mysqli_query($conn, $sql_sym2);
            }
            if ($Symtom3 != "") {
                $sql_sym3 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom3.')";
                mysqli_query($conn, $sql_sym3);
            }
            if ($Symtom4 != "") {
                $sql_sym4 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom4.')";
                mysqli_query($conn, $sql_sym4);
            }
            if ($Symtom5 != "") {
                $sql_sym5 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom5.')";
                mysqli_query($conn, $sql_sym5);
            }
            if ($Symtom6 != "") {
                $sql_sym6 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom6.')";
                mysqli_query($conn, $sql_sym6);
            }
            if ($Symtom7 != "") {
                $sql_sym7 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom7.')";
                mysqli_query($conn, $sql_sym7);
            }
            if ($Symtom8 != "") {
                $sql_sym8 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom8.')";
                mysqli_query($conn, $sql_sym8);
            }
            if ($Symtom9 != "") {
                $sql_sym9 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom9.')";
                mysqli_query($conn, $sql_sym9);
            }
            if ($Symtom10 != "") {
                $sql_sym10 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom10.')";
                mysqli_query($conn, $sql_sym10);
            }
            if ($Symtom11 != "") {
                $sql_sym11 = "INSERT INTO `health_declaration_symtom`(`passport`, `declaration_date`, `symtom`) VALUES ('" . $passport . "','" . $date . "','.$Symtom11.')";
                mysqli_query($conn, $sql_sym11);
            }

            echo "<script>window.open('declaration.php?search=$passport','_self')</script>";
        } else {
            //Hiện thông báo khi không thành công
            echo 'Không thành công. Lỗi' . mysqli_error($conn);
        }
    }
}
