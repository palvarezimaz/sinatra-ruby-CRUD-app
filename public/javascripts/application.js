function validate_password() {
  var pass = document.getElementById('pass').value;
  var confirm_pass = document.getElementById('confirm_pass').value;
  if (pass != confirm_pass) {
    document.getElementById('wrong_pass_alert').style.color = 'red';
    document.getElementById('wrong_pass_alert').innerHTML =
      '☒ Use same password';
    document.getElementById('create').disabled = true;
    document.getElementById('create').style.opacity = 0.4;
  } else {
    document.getElementById('wrong_pass_alert').style.color = 'green';
    document.getElementById('wrong_pass_alert').innerHTML =
      '🗹 Password Matched';
    document.getElementById('create').disabled = false;
    document.getElementById('create').style.opacity = 1;
  }
}

function on() {
  document.getElementById('overlay').style.display = 'block';
}

function off() {
  document.getElementById('overlay').style.display = 'none';
}

////// Nav bar
window.onscroll = function () {
  scrollFunction();
};

var topnav = document.getElementById('myTopnav');
var sticky = topnav.offsetTop;

function scrollFunction() {
  if (window.pageYOffset >= sticky) {
    topnav.classList.add('sticky');
  } else {
    topnav.classList.remove('sticky');
  }
}

function myFunction() {
  var x = document.getElementById('myTopnav');
  if (x.className === 'topnav') {
    x.classList.add('responsive');
  } else {
    x.className = 'topnav';
  }
}
