<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Admin Registration Form</title>
<script src="https://cdn.tailwindcss.com"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap"
	rel="stylesheet" />
<style>
/* Custom styles for validation feedback */
.error {
	border-color: #e3342f; /* Red border for error */
	background-color: rgba(227, 52, 47, 0.1);
}

.error-message {
	color: #e3342f;
	font-size: 0.875rem;
	margin-top: 0.25rem;
}

.success-alert {
	position: fixed;
	top: 20px;
	left: 50%;
	transform: translateX(-50%);
	background-color: #28a745; /* Green for success */
	color: white;
	padding: 16px 24px;
	border-radius: 8px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
	font-size: 16px;
	font-weight: bold;
	z-index: 1000;
	display: none;
}
</style>
</head>
<body
	class="bg-[#1a1a2e] text-white flex items-center justify-center min-h-screen transition-all duration-200">

	<!-- Alert Box -->
	<div id="success-alert" class="success-alert">Registration
		successful!</div>

	<div
		class="relative w-full max-w-md p-8 bg-white bg-opacity-10 rounded-lg shadow-lg backdrop-blur-md form-container">
		<h2 class="text-2xl font-bold mb-6 text-center">Admin
			Registration</h2>
		<form id="registrationForm" class="space-y-6 relative z-10" action="reg"
			method="POST" novalidate>
			<div>
				<label class="block text-sm font-medium" for="admin-name">Admin
					Name</label> <input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white"
					id="admin-name" name="aname" required minlength="3" />
				<p class="error-message" id="admin-name-error"></p>
			</div>
			<div>
				<label class="block text-sm font-medium" for="password">Password</label>
				<input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white"
					id="password" name="pass" required minlength="6" />
				<p class="error-message" id="password-error"></p>
			</div>
			<div>
				<label class="block text-sm font-medium" for="first-name">First
					Name</label> <input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white"
					id="first-name" name="fname" required pattern="[A-Za-z]+" />
				<p class="error-message" id="first-name-error"></p>
			</div>
			<div>
				<label class="block text-sm font-medium" for="last-name">Last
					Name</label> <input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white"
					id="last-name" name="lname" required pattern="[A-Za-z]+" />
				<p class="error-message" id="last-name-error"></p>
			</div>
			<div>
				<label class="block text-sm font-medium" for="email">Email</label> <input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white"
					id="email" name="mid" required type="email" />
				<p class="error-message" id="email-error"></p>
			</div>
			<div>
				<label class="block text-sm font-medium" for="phno">Phone
					Number</label> <input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white"
					id="phno" name="phno" required pattern="^\d{10}$" />
				<p class="error-message" id="phno-error"></p>
			</div>
			<div class="flex items-center justify-between">
				<button
					class="w-full flex justify-center py-2 px-4 bg-[#0f3460] text-white rounded-md shadow-sm text-sm font-bold hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 transition-transform transform"
					type="submit">Register</button>
			</div>
		</form>
	</div>

	<script>
    const form = document.getElementById('registrationForm');
    const fields = [
        { id: 'admin-name', error: 'admin-name-error', message: 'Admin Name must be at least 3 characters.' },
        { id: 'password', error: 'password-error', message: 'Password must be at least 6 characters.' },
        { id: 'first-name', error: 'first-name-error', message: 'First Name should contain only alphabets.' },
        { id: 'last-name', error: 'last-name-error', message: 'Last Name should contain only alphabets.' },
        { id: 'email', error: 'email-error', message: 'Please enter a valid email.' },
        { id: 'phno', error: 'phno-error', message: 'Phone Number must be 10 digits.' },
    ];

    form.addEventListener('submit', (event) => {
        let isValid = true;
        fields.forEach((field) => {
            const input = document.getElementById(field.id);
            const errorElement = document.getElementById(field.error);

            if (!input.checkValidity()) {
                input.classList.add('error');
                errorElement.textContent = field.message;
                isValid = false;
            } else {
                input.classList.remove('error');
                errorElement.textContent = '';
            }
        });

        if (!isValid) {
            event.preventDefault();
            return;
        }

        const successAlert = document.getElementById('success-alert');
        successAlert.style.display = 'block';
        setTimeout(() => {
            successAlert.style.display = 'none';
        }, 3000);
    });
</script>

</body>
</html>
