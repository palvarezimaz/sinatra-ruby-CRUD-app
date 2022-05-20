// const pass = document.getElementById('password').value;
// const confirmPass = document.getElementById('confirm-password').value;

// confirmPass.addEventListener('change', passwordValidation);

// function passwordValidation(e) {
//   if (pass != confirmPass) {
//     document.getElementById('password-validation').style.color = 'red';
//     document.getElementById('password-validation').innerHTML =
//       "Passwords don't match";
//   }
//   // pass.textContent = e.target.value;
// }
// document
//   .qetElementById('confirm_pass')
//   .addEventListener('onkeyup', validate_password());

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

// function wrong_pass_alert() {
//   if (
//     document.getElementById('pass').value != '' &&
//     document.getElementById('confirm_pass').value != ''
//   ) {
//     alert('Your response is submitted');
//   } else {
//     alert('Please fill all the fields');
//   }
// }

////// Nav bar
// When the user scrolls the page, execute myFunction
window.onscroll = function () {
  scrollFunction();
};

// Get the navbar
var topnav = document.getElementById('myTopnav');

// Get the offset position of the navbar
var sticky = topnav.offsetTop;

// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
function scrollFunction() {
  if (window.pageYOffset >= sticky) {
    topnav.classList.add('sticky');
  } else {
    topnav.classList.remove('sticky');
  }
}

/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
  var x = document.getElementById('myTopnav');
  if (x.className === 'topnav') {
    x.classList.add('responsive');
  } else {
    x.className = 'topnav';
  }
}
