<?php
        session_start();
        $username = 'guest';
        if(isset($_GET['username'])) {
                $username = $_GET['username'];
        }
        $_SESSION['login_user']= $username;
        echo "Login as $username".PHP_EOL;
?>
