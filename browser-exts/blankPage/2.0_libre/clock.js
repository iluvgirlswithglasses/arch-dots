
/* @global-vars */
let hrV  = document.getElementById('time-hr'),
    minV = document.getElementById('time-min'),
    secV = document.getElementById('time-sec');


/* @functions */
function start() {
    let date = new Date();
    timeToString(date);
    setTimeout(recursion, 1000 - date.getMilliseconds());
}

function recursion() {
    let date = new Date();
    timeToString(date);
    setTimeout(recursion, 1000);
}

function timeToString(date) {
    let h = date.getHours(); // 0 - 23
    let m = date.getMinutes(); // 0 - 59
    let s = date.getSeconds(); // 0 - 59
    
    h = (h < 10) ? '0' + h : '' + h;
    m = (m < 10) ? '0' + m : '' + m;
    s = (s < 10) ? '0' + s : '' + s;
    
    hrV.innerText = h; hrV.setAttribute("data-text", h);
    minV.innerText = m; minV.setAttribute("data-text", m);
    secV.innerText = s; secV.setAttribute("data-text", s);
}

start();

