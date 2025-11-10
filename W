<!DOCTYPE html>
<html lang="ar">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>wasi3aqari - الموقع العقاري</title>
<style>
/* Reset */
* { margin: 0; padding: 0; box-sizing: border-box; font-family: Arial, sans-serif; }
body { background-color: #f7f7f7; color: #333; line-height: 1.6; }

/* Links */
a { text-decoration: none; color: #0077cc; }

/* Header */
header { background-color: #004080; color: white; padding: 20px 0; text-align: center; }
header h1 { font-size: 2rem; margin-bottom: 5px; }
header p { font-size: 1.1rem; }

/* Hero Section */
.hero {
    position: relative;
    width: 100%;
    height: 400px;
    background-image: url('https://images.unsplash.com/photo-1560184897-0c40b0c0b95f?auto=format&fit=crop&w=1350&q=80');
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
}
.hero-overlay {
    position: absolute; top: 0; left: 0; width: 100%; height: 100%;
    background-color: rgba(0,0,0,0.5);
}
.hero-content {
    position: relative; text-align: center; z-index: 2;
}
.hero-content h2 { font-size: 2.5rem; margin-bottom: 10px; }
.hero-content p { font-size: 1.2rem; }

/* Main */
main { max-width: 900px; margin: 20px auto; padding: 0 20px; }

/* Forms */
.form-container {
    background-color: white; padding: 30px; max-width: 400px;
    margin: 40px auto 50px auto; border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}
.form-container h2, .form-container h3 { text-align: center; margin-bottom: 20px; color: #004080; }
.form-container label { display: block; margin-bottom: 5px; font-weight: bold; }
.form-container input { width: 100%; padding: 10px; margin-bottom: 15px; border-radius: 5px; border: 1px solid #ccc; }
.form-container button {
    width: 100%; padding: 12px; background-color: #004080; color: white;
    border: none; border-radius: 5px; cursor: pointer; font-size: 1rem;
}
.form-container button:hover { background-color: #0066cc; }
.form-container .forgot, .form-container .login-link { text-align: center; margin-top: 10px; }

/* Footer */
footer { text-align: center; padding: 20px 0; background-color: #e6e6e6; font-size: 0.9rem; }

/* Tabs لتغيير بين Login/Register */
.tab-buttons { display: flex; justify-content: center; margin-bottom: 20px; }
.tab-buttons button {
    padding: 10px 20px; border: none; background-color: #004080; color: white; cursor: pointer; margin: 0 5px; border-radius: 5px;
}
.tab-buttons button.active { background-color: #0066cc; }
.tab-content { display: none; }
.tab-content.active { display: block; }
</style>
</head>
<body>

<header>
    <h1>wasi3aqari</h1>
    <p>وسيطك العقاري الموثوق لكل المدن</p>
</header>

<!-- Hero Section -->
<section class="hero">
    <div class="hero-overlay"></div>
    <div class="hero-content">
        <h2>مرحبا بك في wasi3aqari</h2>
        <p>اعثر على العقار المناسب لك بسهولة وأمان</p>
    </div>
</section>

<main>
    <div class="form-container">
        <div class="tab-buttons">
            <button class="active" onclick="showTab('login')">تسجيل الدخول</button>
            <button onclick="showTab('register')">تسجيل مستخدم جديد</button>
        </div>

        <!-- Login Form -->
        <div id="login" class="tab-content active">
            <form action="#" method="post">
                <label for="email">البريد الإلكتروني</label>
                <input type="email" id="email" name="email" placeholder="example@email.com" required>
                <label for="password">كلمة المرور</label>
                <input type="password" id="password" name="password" placeholder="" required>
                <button type="submit">دخول</button>
                <div class="login-link">
                    <p>لا تملك حساب؟ <a href="#" onclick="showTab('register')">تسجيل مستخدم جديد</a></p>
                </div>
            </form>
        </div>

        <!-- Register Form -->
        <div id="register" class="tab-content">
            <form action="#" method="post">
                <label for="fullname">الاسم الكامل</label>
                <input type="text" id="fullname" name="fullname" placeholder="اسمك الكامل" required>
                <label for="email2">البريد الإلكتروني</label>
                <input type="email" id="email2" name="email2" placeholder="example@email.com" required>
                <label for="password2">كلمة المرور</label>
                <input type="password" id="password2" name="password2" placeholder="" required>
                <label for="confirm-password">تأكيد كلمة المرور</label>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="" required>
                <button type="submit">تسجيل</button>
                <div class="login-link">
                    <p>هل لديك حساب؟ <a href="#" onclick="showTab('login')">تسجيل الدخول</a></p>
                </div>
            </form>
        </div>
    </div>
</main>

<footer>
    &copy; 2025 wasi3aqari. جميع الحقوق محفوظة.
</footer>

<script>
function showTab(tab) {
    document.querySelectorAll('.tab-content').forEach(c => c.classList.remove('active'));
    document.querySelectorAll('.tab-buttons button').forEach(b => b.classList.remove('active'));
    document.getElementById(tab).classList.add('active');
    document.querySelector('.tab-buttons button[onclick*="'+tab+'"]').classList.add('active');
}
</script>

</body>
</html>
