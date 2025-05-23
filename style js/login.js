// Pastikan id 'togglePassword' dan 'password' sesuai di HTML
document.addEventListener('DOMContentLoaded', () => {
    const btn  = document.getElementById('togglePassword');
    const pwd  = document.getElementById('password');
    if (!btn || !pwd) return;  // safety check
  
    btn.addEventListener('click', () => {
      const isPwd = pwd.type === 'password';
      pwd.type = isPwd ? 'text' : 'password';
      btn.textContent = isPwd ? 'Sembunyikan' : 'Tampilkan';
    });
  });
  