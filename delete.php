<?php

session_start();

require "functions.php";

if (!isset($_SESSION["userId"])) {
    http_response_code(500);
    echo "You're not logged in";
    exit();
}

$user = getUserById($_SESSION["userId"]);
if (!$user) {
    http_response_code(500);
    echo "Something went wrong";
    exit();
}

if (!isset($_GET["id"])) {
    http_response_code(400);
    echo "No ID";
    exit();
}

$product = getProductById($_GET["id"]);
if (!$product) {
    http_response_code(404);
    echo "No Product";
    exit();
}

$owner = getUserById($product["owner"]);
if (!$owner) {
    http_response_code(500);
    echo "Something went wrong";
    exit();
}

if ($user["id"] !== $owner["id"]) {
    http_response_code(403);
    echo "You're not allowed to do this";
    exit();
}

mysqli_query(conn(), "DELETE FROM `products` WHERE `id`=" . $product["id"]);
header("Location: profile.php");
