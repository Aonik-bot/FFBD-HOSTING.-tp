-- সব পুরানো অ্যাডমিন ডিলিট করুন
DELETE FROM users WHERE role = 'super_admin' OR is_admin = 1 OR is_super_admin = 1;

-- আপনার নতুন অ্যাডমিন অ্যাকাউন্ট তৈরি করুন
INSERT INTO users (
    full_name,
    username, 
    email, 
    password_hash, 
    coins, 
    role, 
    status, 
    is_admin, 
    is_super_admin, 
    admin_permissions,
    created_at
) VALUES (
    'AONIK VIP',
    'admin',
    'onikislam3455@gmail.com',
    'pbkdf2:sha256:260000$f6919ada5de563dca6c69bcfa0ddcfef$3672d8970deb8e4ae1326c71478997a8a72453dfd3a84507a8236fc9e9d73f15',
    1000,
    'super_admin',
    'active',
    1,
    1,
    'manage_users,manage_coins,manage_files,manage_settings,manage_announcements,manage_broadcasts,view_logs',
    CURRENT_TIMESTAMP
);

-- কনফর্মেশন চেক করুন
SELECT id, full_name, username, email, role FROM users WHERE username = 'admin';