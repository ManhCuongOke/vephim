const name = document.getElementById('tbname')
const email = document.getElementById('tbemail')
const password = document.getElementById('password')
const repassword = document.getElementById('repassword')
const canhbao = document.getElementById('canhbao')
const login = document.getElementById('login')

name.addEventListener('focus', (e) => {
    if (name.value.trim() == '') {
/*        canhbao.style.display = 'none'*/
    }
})


// =============NAME============= //
//tên không được chứa số và kí tự đặc biệt
text = name.val();
regex = /^[a-zA-Z]+$/; // Chỉ chấp nhận ký tự alphabet thường hoặc ký tự hoa
if (regex.test(text)) {
    return true;// true nếu text chỉ chứa ký tự alphabet thường hoặc hoa, false trong trường hợp còn lại.
} else {
    return false;
}


name.addEventListener('blur', (e) => {
    if (name.value.trim() == '') {
        canhbao.style.display = 'block'
        canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Bạn chưa nhập tên !`
    }
})


// =============PASSWORD============= //
password.addEventListener('focus', (e) => {
    if (password.value.trim() == '') {
/*        canhbao.style.display = 'none'*/
    }
})


password.addEventListener('blur', (e) => {
    if (password.value.trim() == '') {
        canhbao.style.display = 'block'
        canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Bạn không được bỏ trống Mật Khẩu`
    }
})



login.addEventListener('submit', (e) => {
    if (name.value.trim() == '' || password.value.trim() =='' ) {
        canhbao.style.display = 'block'
        canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Vui lòng điền đầy đủ thông tin`
        e.preventDefault();
    }
})


