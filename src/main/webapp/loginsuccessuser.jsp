<html lang="en">
 <head>
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <title>
   Online Library
  </title>
  <!-- External CSS and Libraries -->
  <script src="https://cdn.tailwindcss.com">
  </script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet"/>
  <style>
   :root {
            --background: #1a1a2e;
            --color: #ffffff;
            --primary-color: #0f3460;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
            background: var(--background);
            color: var(--color);
            letter-spacing: 1px;
        }

        .con {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .message-box {
            animation: slideDown 0.8s ease-in-out;
        }

        .message-box.fade-out {
            animation: fadeOut 1s forwards;
        }

        @keyframes fadeOut {
            to {
                opacity: 0;
                transform: translateY(-20px);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .fade-in-up {
            animation: fadeInUp 1s ease-out;
        }

        .content {
            flex: 1;
        }

        .con {
            text-align: center;
            margin-top: 100px;
        }

        .theme-btn-container {
            position: fixed;
            top: 20px;
            right: 20px;
            display: flex;
            gap: 10px;
            z-index: 10;
        }

        .theme-btn {
            border: 2px solid #ffffff;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            cursor: pointer;
            box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .theme-btn:hover {
            transform: scale(1.1);
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.7);
        }
  </style>
 </head>
 <body>
  <!-- Navigation Bar -->
  <nav class="bg-gray-800 fixed w-full z-10 top-0 shadow">
   <div class="w-full container mx-auto flex flex-wrap items-center justify-between mt-0 py-2">
    <div class="pl-4 flex items-center">
     <a class="text-white text-base no-underline hover:no-underline font-extrabold text-xl" href="#">
      <i class="fas fa-home">
      </i>
      Online Library
     </a>
    </div>
    <div class="block lg:hidden pr-4">
     <button class="flex items-center p-1 text-white hover:text-gray-400" id="nav-toggle">
      <i class="fas fa-bars">
      </i>
     </button>
    </div>
    <div class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden lg:block mt-2 lg:mt-0 bg-gray-800 z-20" id="nav-content">
     <ul class="list-reset lg:flex justify-end flex-1 items-center">
      <li class="mr-3">
       <a class="nav-link inline-block py-2 px-4 text-white no-underline" href="view">
        <i class="fas fa-eye">
        </i>
        View All Books
       </a>
      </li>
      <li class="mr-3">
       <a class="nav-link inline-block py-2 px-4 text-white no-underline" href="borrowbook.jsp">
        <i class="fa-sharp fa-solid fa-book-open-reader fa-sm">
        </i>
        Borrow Book
       </a>
      </li>
      <li class="mr-3">
       <a class="nav-link inline-block py-2 px-4 text-white no-underline" href="returnBook.jsp">
        <i class="fas fa-eye">
        </i>
          Return Book
       </a>
      </li>
     </ul>
     <a class="logout-btn inline-block py-2 px-4 text-white no-underline bg-red-600 hover:bg-red-700 rounded" href="clogout">
      <i class="fas fa-sign-out-alt">
      </i>
      Logout
     </a>
    </div>
   </div>
  </nav>
  <!-- Hero Section -->
  <div class="content container mx-auto mt-24 text-center fade-in-up">
   <h1 class="text-4xl font-bold mb-4">
    Welcome to the Online Library
   </h1>
   <p class="text-lg text-gray-600 mb-8">
    Discover, borrow, and enjoy your favorite books from the comfort of your home.
   </p>
   <img alt="AI generated image of a modern library with people reading and browsing books" class="w-full h-64 object-cover rounded-lg mb-8" height="400" src="https://storage.googleapis.com/a1aa/image/AReLYqAwKQx3NSPJ2LvBiKDNL7v53hi8nBBXIDpN3W0EJSeTA.jpg" width="1200"/>
  </div>
  <!-- Featured Books Section -->
  <div class="container mx-auto mt-12 text-center fade-in-up">
   <h2 class="text-3xl font-bold mb-6">
    Featured Books
   </h2>
   <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
    <div class="bg-white rounded-lg shadow-lg p-6">
     <img alt="AI generated image of a book cover with a detailed description of the book" class="w-full h-40 object-cover rounded-t-lg mb-4" height="400" src="https://storage.googleapis.com/a1aa/image/qQNmThDJ8pIUFJAdeepZ7HgQkA1sX6C7TPrXuCUnvQRMSk8TA.jpg" width="600">
      <h3 class="text-xl font-semibold mb-2">
       Book Title 1
      </h3>
      <p class="text-gray-700">
       A brief description of the book goes here. This is a placeholder text.
      </p>
     </img>
    </div>
    <div class="bg-white rounded-lg shadow-lg p-6">
     <img alt="AI generated image of a book cover with a detailed description of the book" class="w-full h-40 object-cover rounded-t-lg mb-4" height="400" src="https://storage.googleapis.com/a1aa/image/qQNmThDJ8pIUFJAdeepZ7HgQkA1sX6C7TPrXuCUnvQRMSk8TA.jpg" width="600"/>
     <h3 class="text-xl font-semibold mb-2">
      Book Title 2
     </h3>
     <p class="text-gray-700">
      A brief description of the book goes here. This is a placeholder text.
     </p>
    </div>
    <div class="bg-white rounded-lg shadow-lg p-6">
     <img alt="AI generated image of a book cover with a detailed description of the book" class="w-full h-40 object-cover rounded-t-lg mb-4" height="400" src="https://storage.googleapis.com/a1aa/image/qQNmThDJ8pIUFJAdeepZ7HgQkA1sX6C7TPrXuCUnvQRMSk8TA.jpg" width="600"/>
     <h3 class="text-xl font-semibold mb-2">
      Book Title 3
     </h3>
     <p class="text-gray-700">
      A brief description of the book goes here. This is a placeholder text.
     </p>
    </div>
   </div>
  </div>
  
  <!-- Footer -->
  <footer class="bg-gray-800 text-white py-6 mt-12">
   <div class="container mx-auto text-center">
    <p>
     © 2023 Online Library. All rights reserved.
    </p>
   </div>
  </footer>
  <script>
   document.addEventListener('DOMContentLoaded', () => {
            // Hide message box
            const messageBox = document.querySelector('.message-box');
            if (messageBox) {
                setTimeout(() => {
                    messageBox.classList.add('fade-out');
                }, 3000);
                setTimeout(() => {
                    messageBox.style.display = 'none';
                }, 4000);
            }

            // Highlight active navigation link
            const currentURL = window.location.pathname;
            document.querySelectorAll('.nav-link').forEach(link => {
                if (link.getAttribute('href') === currentURL) {
                    link.classList.add('active');
                }
            });

            const navToggle = document.getElementById('nav-toggle');
            const navContent = document.getElementById('nav-content');
            if (navToggle && navContent) {
                navToggle.addEventListener('click', () => {
                    navContent.classList.toggle('hidden');
                });
            }
        });
  </script>
  <script src="js/bookBorrowForm.js" type="text/javascript">
  </script>
 <div class="theme-btn-container" style="margin-top: 30px; right:1px; display: flex; flex-direction: column; gap: 6px;"></div>
  </div>
  <div class="con">
  </div>
 </body>
</html>
