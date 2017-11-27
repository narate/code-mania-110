<?php
        session_start();
        $username = 'guest';
        if(isset($_SESSION['login_user'])) {
                $username = $_SESSION['login_user'];
        }
        echo "Welcome $username to code mania 110".PHP_EOL;
?>
