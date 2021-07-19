<!DOCTYPE html>
<html>
<head>
    <title>kirim email</title>
</head>
<body>
    <form action="<?= base_url('email');?>" method="post">
        <input type="text" name="to" placeholder="kirim ke capa"><br>
        <input type="text" name="subject" placeholder="subjectnya apa"><br>
        <input type="text" name="message" placeholder="pesanya apah"><br>
        <input type="submit" value="Kirim">
    </form>
</body>
</html>