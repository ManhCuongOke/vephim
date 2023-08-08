const numberTicket = document.getElementById("numberTicket");

function minus() {

    if (numberTicket.value <= 1) {
    } else {
        numberTicket.value--;
    }
}
function plus() {
    numberTicket.value++;
}

const menu_response = document.querySelector('#header nav ul#menu-response')
const narbar_toggle = document.querySelector('#header .container .navbar-toggle')

narbar_toggle.addEventListener('click', () => {
    if (menu_response.style.display == 'none') {
        menu_response.style.display = 'block'
    } else {
        menu_response.style.display = 'none'
    }
})

