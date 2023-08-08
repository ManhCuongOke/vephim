const name = document.getElementById('tbname')
const email = document.getElementById('tbemail')
const password = document.getElementById('password')
const repassword = document.getElementById('repassword')
const canhbao = document.getElementById('canhbao')
const register = document.getElementById('register')

const dangky = document.getElementById('dangky')
const huy = document.getElementById('dangky')


// =============NAME============= //
//tên không được chứa số và kí tự đặc biệt
checkName = () => {
    var text1 = name.value;
    regex1 = /^([a-zA-Z0-9 _-]+)+$/; // Chỉ chấp nhận ký tự alphabet thường hoặc ký tự hoa
    isName = () => {
        if (regex1.test(text1)) {
            return true;// true nếu text chỉ chứa ký tự alphabet thường hoặc hoa, false trong trường hợp còn lại.
        } else {
            return false;
        }
    }


    if (name.value.trim() == '') {
        canhbao.style.display = 'block'
        canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Bạn chưa nhập tên !`
    }
    //else if (name.value.length <= 5) {
    //    canhbao.style.display = 'block'
    //    canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Tên tài khoản của bạn quá ngắn !`
    //} else {
    //    if (isName() == true) {
    //        canhbao.style.display = 'none'
    //    }
    //    else if (isName() == false) {
    //        canhbao.style.display = 'block'
    //        canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> Tên tài khoản không được chứa kí tự đặc biệt!`
    //    }
    //}



}


name.addEventListener('focus', (e) => {
    if (name.value.trim() == '') {
        /*        canhbao.style.display = 'none'*/
        name.style.background = "blue"
    }
})

name.addEventListener('blur', (e) => {
    name.style.background = "white"
    checkName();
})



// =============EMAIL============= //
checkEmail = () => {
    var text2 = email.value
    isEmail = () => {
        var regex2 = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        if (regex2.test(text2)) {
            return true
        } else {
            return false
        }
    }

    if (email.value.trim() == '') {
        canhbao.style.display = 'block'
        canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Bạn chưa nhập Email`
    }
    //else if (isEmail()) {
    //    canhbao.style.display = 'none'
    //}
    //else if (!isEmail()) {
    //    canhbao.style.display = 'block'
    //    canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> Bạn chưa nhập đúng định dạng của email!`
    //}
}

email.addEventListener('focus', (e) => {
    if (email.value.trim() == '') {
        /*        canhbao.style.display = 'none'*/
        email.style.background =  "blue"
    }
})


email.addEventListener('blur', (e) => {
    email.style.background = "white"
    checkEmail();
})

// =============PASSWORD============= //
checkPassword = () => {
    if (password.value.trim() == '') {
        canhbao.style.display = 'block'
        canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Bạn không được bỏ trống Mật Khẩu`
    }
    //else if (password.value.length <= 8) {
    //    canhbao.style.display = 'block'
    //    canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Mật khẩu của bạn quá ngắn !`
    //} else {
    //    canhbao.style.display = 'none'
    //}
}

password.addEventListener('focus', (e) => {
    if (password.value.trim() == '') {
        /*        canhbao.style.display = 'none'*/
        password.style.background = "blue"
    }
})


password.addEventListener('blur', (e) => {
    password.style.background = "white"
    checkPassword()
})

// =============REPASSWORD============= //
repassword.addEventListener('focus', (e) => {
    if (repassword.value.trim() == '') {
        /*        canhbao.style.display = 'none'*/
        repassword.style.background = "blue"
    }
})


repassword.addEventListener('blur', (e) => {
    repassword.style.background = "white"
    if (repassword.value.trim() == '') {
        canhbao.style.display = 'block'
        canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Bạn không được bỏ trống Nhập Lại Mật Khẩu`
    }
})

// =============SUBMIT============= //
register.addEventListener('submit', (e) => {
    //checkName();
    //checkEmail();
    //checkPassword();
    if (name.value.trim() == "" || email.value.trim() == "" || password.value.trim() == "" || repassword.value.trim() == "") {
        canhbao.style.display = 'block'
        canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Vui lòng điền đầy đủ thông tin`
        e.preventDefault();
    } else {
        if (repassword.value.trim() != password.value.trim()) {
            canhbao.style.display = 'block'
            canhbao.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i>  Mật Khẩu không trùng khớp !`
            e.preventDefault();
        }

    }
})