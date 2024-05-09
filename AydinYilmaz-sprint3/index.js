// Change to red when mouse over for REGISTER button and change back to original color
        document.addEventListener('DOMContentLoaded', function () {
            var signupButton = document.querySelector('.signup-btn');

            signupButton.addEventListener('mouseover', function () {
                this.style.backgroundColor = '#800080'; 
            });

            signupButton.addEventListener('mouseout', function () {
                this.style.backgroundColor = '#07c29b'; 
            });
        });

// Change to red when mouse over for REGISTER button and change back to original color
document.addEventListener('DOMContentLoaded', function () {
    var signupButton = document.querySelector('.button');

    signupButton.addEventListener('mouseover', function () {
        this.style.backgroundColor = '#800080'; 
    });

    signupButton.addEventListener('mouseout', function () {
        this.style.backgroundColor = '#cc3939'; 
    });
});
document.addEventListener('DOMContentLoaded', function () {
    var signupButton = document.querySelector('.button2' );

    signupButton.addEventListener('mouseover', function () {
        this.style.backgroundColor = '#800080'; 
    });

    signupButton.addEventListener('mouseout', function () {
        this.style.backgroundColor = '#cc3939'; 
    });
});
//validation operations
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