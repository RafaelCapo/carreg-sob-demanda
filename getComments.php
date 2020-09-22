<?php
    header('Content-Type: application/json');

    if (isset($_POST['page'])) {
        $page = $_POST['page'];
        
        $max = 3;
        $ofs = ($page * $max) - $max;

        $options = array(\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION, \PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");

        $pdo = new PDO('mysql: host=localhost; dbname=bd-comment-video', 'root', '', $options);

        $sql = 'SELECT * FROM comments LIMIT :mx OFFSET :of';

        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':mx', $max, PDO::PARAM_INT);
        $stmt->bindValue(':of', $ofs, PDO::PARAM_INT);
        $stmt->execute();

        if ($stmt->rowCount()) {
            $comments = $stmt->fetchAll(PDO::FETCH_ASSOC);

            echo json_encode(array('status' => 'sucess', 'data' => $comments));
        } else {
            echo json_encode(array('status' => 'error', 'data' => 'Não há nenhum comentário!'));
        }
    }
    