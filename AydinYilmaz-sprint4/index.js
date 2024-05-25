/*
jQuery examples
- When we move the mouse cursor over the login and register buttons, the button colors change. When the mouse is removed, the button returns to its previous color.
- Care is taken to ensure that the e-mail information received when becoming a member is in the appropriate e-mail format.
- Make sure that the password received when signing up and the confirm password are the same. If they are not the same, an error message will be received.
- Contact us page serves as a means of communication. And here the suitability of the e-mail in the desired format is checked.

jQuery Widget example
- Added a datepicker to the registration page that retrieves the user's date of birth.
*/



// change to red when mouse over for REGISTER button and change back to original color
        document.addEventListener('DOMContentLoaded', function () {
            var signupButton = document.querySelector('.signup-btn');

            signupButton.addEventListener('mouseover', function () {
                this.style.backgroundColor = '#800080'; 
            });

            signupButton.addEventListener('mouseout', function () {
                this.style.backgroundColor = '#07c29b'; 
            });
        });


// change to red when mouse over for NEWS button and change back to original color
document.addEventListener('DOMContentLoaded', function () {
    var signupButton = document.querySelector('.news-btn');

    signupButton.addEventListener('mouseover', function () {
        this.style.backgroundColor = '#800080'; 
    });

    signupButton.addEventListener('mouseout', function () {
        this.style.backgroundColor = '#043e63'; 
    });
});

// validation operations
        function validateForm() {
            var password = document.getElementById("new-password").value;
            var confirmPassword = document.getElementById("confirm-password").value;
            var email = document.getElementById("new-email").value;
            var message = document.getElementById("error-message");

            // checks the format of email
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                message.textContent = "⚠️ Invalid email format.";
                message.style.color = "red";
                return false;
            }

            // checks if the passwords are same
            if (password !== confirmPassword) {
                message.textContent = "⚠️ Passwords do not match.";
                message.style.color = "red";
                return false;
            }

            message.textContent = "";
            return true;
        }