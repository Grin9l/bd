<?php
ini_set('error_reporting', E_ALL);         //выводить все ошибки на экран
ini_set('display_errors', 1);
//print_r($_POST);                        // print_r выводит весь массив

$mysqli = new mysqli ("localhost", "root","", "mvc_site");
$mysqli->query ("SET NAMES 'utf8'");
////////////////////////////////////////////////
for($q = 1; $q <= 10; $q++){
    $mysqli->query ("INSERT INTO `users` (`name`,`email`,`password`) VALUES ('User_$q', 'mail@$q.ru','".md5($q)."')");
}



$result_set = $mysqli->query ("SELECT * FROM  `users` ");
printResult($result_set);
///////////////////////////////////////////////////////////////////
echo '<br>';
echo '<br>';
$result_set = $mysqli->query ("SELECT `id`,`email` FROM  `users` WHERE `id` > 4");
printResult($result_set);
//////////////////////////////////////////////////////////////////////
echo '<br>';
echo '<br>';
$result_set = $mysqli->query ("SELECT * FROM  `users` WHERE `id` > 2 ORDER BY `id` ASC LIMIT 1,4");
printResult($result_set);
/////////////////////////////////////////
echo '<br>';
echo '<br>';
$result_set = $mysqli->query ("SELECT * FROM  `users` WHERE `name` LIKE '%ser%'");
printResult($result_set);
/////////////////////////////////////
echo '<br>';
echo '<br>';
$result_set = $mysqli->query ("SELECT COUNT(`id`) FROM  `users` ");
printResult($result_set);
///////////////////////////////////////////////
$mysqli->close();




function printResult ($result_set){    ////////////эта функция выводит из БД записи которые мы укажем
    echo 'Количество записей равно - '.$result_set->num_rows.'<br>---------------------------------<br>';
    while (($row = $result_set->fetch_assoc()) != false){
         print_r($row);           //вывести всю строку
       // echo $row['password'] ;        //вывести только по одному индетификатору
        echo '<br>';
    }
}
