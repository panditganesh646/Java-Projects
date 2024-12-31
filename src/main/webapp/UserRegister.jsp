<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Customer Registration Form</title>
<script src="https://cdn.tailwindcss.com">
  </script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&amp;display=swap"
	rel="stylesheet" />
    <link rel="stylesheet" href="css/Adminregister.css">
</head>
<body
	class="bg-[#1a1a2e] text-white flex items-center justify-center min-h-screen transition-all duration-200">
	<div
		class="relative w-full max-w-md p-8 bg-white bg-opacity-10 rounded-lg shadow-lg backdrop-blur-md form-container">
		<h2 class="text-2xl font-bold mb-6 text-center">User
			Registration</h2>
		<form action="creg" class="space-y-6 relative z-10" method="POST">
			<div>
				<label class="block text-sm font-medium" for="admin-name">
					Your Name </label> <input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white input-field"
					id="admin-name" name="cname" required="" type="text" />
			</div>
			<div>
				<label class="block text-sm font-medium" for="password">
					Password </label> <input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white input-field"
					id="password" name="cpass" required="" type="password" />
			</div>
			<div>
				<label class="block text-sm font-medium" for="first-name">
					First Name </label> <input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white input-field"
					id="first-name" name="cfname" required="" type="text" />
			</div>
			<div>
				<label class="block text-sm font-medium" for="last-name">
					Last Name </label> <input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white input-field"
					id="last-name" name="clname" required="" type="text" />
			</div>
			<div>
				<label class="block text-sm font-medium" for="email"> Email
				</label> <input
					class="mt-1 block w-full px-3 py-2 bg-[#9191911f] border-none rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 text-white input-field"
					id="email" name="cmid" required="" type="email" />
			</div>
			<div class="flex items-center justify-between">
				<button
					class="w-full flex justify-center py-2 px-4 bg-[#0f3460] text-white rounded-md shadow-sm text-sm font-bold hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 transition-transform transform submit-btn"
					type="submit"> Register</button>
			</div>
		</form>
		<div
			class="theme-btn-container absolute left-0 bottom-8 flex space-x-2">
		</div>
		<img
			alt="AI generated image of a book library with wooden shelves filled with books"
			class="absolute top-4 right-4 w-16 h-16 rounded-full" height="300"
			src="https://storage.googleapis.com/a1aa/image/xaGEFeTG7NU7VKa8Yfupm96dDHVjKlKryg24gPgX8gVVjb7TA.jpg"
			width="300" /> <img
			alt="AI generated image of a book library with wooden shelves filled with books"
			class="absolute bottom-4 left-4 w-16 h-16 rounded-full" height="300"
			src="https://storage.googleapis.com/a1aa/image/xaGEFeTG7NU7VKa8Yfupm96dDHVjKlKryg24gPgX8gVVjb7TA.jpg"
			width="300" />
	</div>
	<script src="js/Adminregister.js">
  </script>
 </body>
</html>
