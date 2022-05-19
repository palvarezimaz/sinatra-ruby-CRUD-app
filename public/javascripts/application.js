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
