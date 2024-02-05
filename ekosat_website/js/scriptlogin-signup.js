let showl = document.getElementById("show-lock");
let showu = document.getElementById("show-unlock");
let password = document.getElementById("tboxPassword");
const lock = document.querySelector('#lock');
const unlock = document.querySelector('#unlock');
showl.onclick = function () {
    if (password.type == "password") {
        password.type = "text";
        lock.classList.add('lock-unlock');
        unlock.classList.remove('lock-unlock');
    }
}
showu.onclick = function () {
    if (password.type == "text") {
        password.type = "password";
        unlock.classList.add('lock-unlock');
        lock.classList.remove('lock-unlock');
    }
}