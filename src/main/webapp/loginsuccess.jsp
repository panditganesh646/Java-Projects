<html lang="en">
 <head>
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <title>
   Admin Panel
  </title>
  <!-- External CSS and Libraries -->
  <script src="https://cdn.tailwindcss.com">
  </script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet"/>
  <style>
   body {
            font-family: 'Roboto', sans-serif;
            background-color: #121212; /* Dark background */
            color: #e0e0e0; /* Light text color for contrast */
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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

        nav {
            background-color: #1f1f1f; /* Darker navigation background */
        }

        footer {
            background-color: #1f1f1f; /* Darker footer background */
        }

        a {
            color: #76c7c0; /* Muted teal for links */
        }

        a:hover {
            color: #48a397; /* Brighter teal on hover */
        }

        .logout-btn {
            background-color: #b71c1c; /* Dark red for logout */
            color: white;
        }

        .logout-btn:hover {
            background-color: #d32f2f; /* Brighter red on hover */
        }

        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }
  </style>
 </head>
 <body>
  <div class="theme-btn-container" style="margin-top:0px; right:1px; display: flex; flex-direction: column; gap: 6px;">
  </div>
  <!-- Navigation Bar -->
  <nav class="fixed w-full z-10 top-0 shadow">
   <div class="w-full container mx-auto flex flex-wrap items-center justify-between mt-0 py-2">
    <div class="pl-4 flex items-center">
     <a class="text-white text-base no-underline hover:no-underline font-extrabold text-xl" href="#">
      <i class="fas fa-home">
      </i>
      Admin Panel
     </a>
    </div>
    <div class="block lg:hidden pr-4">
     <button class="flex items-center p-1 text-white hover:text-gray-400" id="nav-toggle">
      <i class="fas fa-bars">
      </i>
     </button>
    </div>
    <div class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden lg:block mt-2 lg:mt-0 z-20" id="nav-content">
     <ul class="list-reset lg:flex justify-end flex-1 items-center">
      <li class="mr-3">
       <a class="nav-link inline-block py-2 px-4 text-white no-underline" href="AddBook.html">
        <i class="fas fa-plus-circle">
        </i>
        Add Book
       </a>
      </li>
      <li class="mr-3">
       <a class="nav-link inline-block py-2 px-4 text-white no-underline" href="deletebyId.html">
        <i class="fas fa-trash">
        </i>
        Delete Book
       </a>
      </li>
      <li class="mr-3">
       <a class="nav-link inline-block py-2 px-4 text-white no-underline" href="updateBook.html">
        <i class="fas fa-pencil-alt">
        </i>
        Update Book
       </a>
      </li>
      <li class="mr-3">
       <a class="nav-link inline-block py-2 px-4 text-white no-underline" href="view">
        <i class="fas fa-eye">
        </i>
        View All Books
       </a>
      </li>
      <li class="me-3">
       <a class="nav-link inline-block py-2 px-4 text-white no-underline" href="viewborrowedBook">
        <i class="fas fa-book-open">
        </i>
        View Borrowed Books
       </a>
      </li>
      <li class="me-3">
       <a class="nav-link inline-block py-2 px-4 text-white no-underline" href="viewMessages">
        <i class="fas fa-envelope">
        </i>
        View Messages
       </a>
      </li>
     </ul>
     <a class="logout-btn inline-block py-2 px-4 no-underline rounded" href="logout">
      <i class="fas fa-sign-out-alt">
      </i>
      Logout
     </a>
    </div>
   </div>
  </nav>
  <!-- Welcome Section -->
  <div class="content container mx-auto mt-24 text-center fade-in-up">
   <h1 class="text-4xl font-bold mb-4">
    Welcome to the Admin Panel
   </h1>
   <p class="text-lg mb-8">
    Manage your books efficiently with ease.
   </p>
  </div>
  <!-- About Section -->
  <div class="content container mx-auto mt-12 text-center fade-in-up">
   <h2 class="text-3xl font-bold mb-4">
    About the Admin Panel
   </h2>
   <p class="text-lg mb-8">
    The Admin Panel is designed to help you manage your book collection effortlessly. With features like adding, updating, and deleting books, you can keep your library up-to-date. You can also view all books and track borrowed books with ease.
   </p>
   <img alt="A placeholder image showing an abstract representation of book management" class="w-full h-64 object-cover mb-4 rounded" height="400" src="images/bgBook.jpg" width="600"/>
  </div>
  <!-- Services Section -->
  <div class="content container mx-auto mt-12 text-center fade-in-up">
   <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
    <div class="bg-gray-800 p-6 rounded-lg shadow-lg card">
     <img alt="A placeholder image of a book cover with a dark background and abstract design" class="w-full h-48 object-cover mb-4 rounded" height="400" src="https://storage.googleapis.com/a1aa/image/ulPkejOIE0yLHa2H53FUkIz49kOXDAiZRCLfesfiNKzsmflfE.jpg" width="600">
      <h2 class="text-2xl font-bold mb-2">
       Add New Books
      </h2>
      <p class="text-gray-400">
       Easily add new books to your collection with a few clicks.
      </p>
     </img>
    </div>
    <div class="bg-gray-800 p-6 rounded-lg shadow-lg card">
     <img alt="A placeholder image of a trash bin icon with a dark background" class="w-full h-48 object-cover mb-4 rounded" height="400" src="https://storage.googleapis.com/a1aa/image/fHLxEY9eXVgoLkqleiU1jsxwTtWLpPMNBZpL51lKONamzfyPB.jpg" width="600"/>
     <h2 class="text-2xl font-bold mb-2">
      Delete Books
     </h2>
     <p class="text-gray-400">
      Remove outdated or unwanted books from your library.
     </p>
    </div>
    <div class="bg-gray-800 p-6 rounded-lg shadow-lg card">
     <img alt="A placeholder image of a pencil icon with a dark background" class="w-full h-48 object-cover mb-4 rounded" height="400" src="https://storage.googleapis.com/a1aa/image/7SnU49evVwWjKKmtGtXPctyNDlhRs5DN4feenZTd87cQnflfE.jpg" width="600"/>
     <h2 class="text-2xl font-bold mb-2">
      Update Book Information
     </h2>
     <p class="text-gray-400">
      Keep your book information up-to-date with ease.
     </p>
    </div>
    <div class="bg-gray-800 p-6 rounded-lg shadow-lg card">
     <img alt="A placeholder image of an eye icon with a dark background" class="w-full h-48 object-cover mb-4 rounded" height="400" src="https://storage.googleapis.com/a1aa/image/rufnyovtNvykJ6ILPvFFFhyGtTAY3fPhmYA26sDLlfmbzfyPB.jpg" width="600"/>
     <h2 class="text-2xl font-bold mb-2">
      View All Books
     </h2>
     <p class="text-gray-400">
      Browse through your entire collection of books.
     </p>
    </div>
    <div class="bg-gray-800 p-6 rounded-lg shadow-lg card">
     <img alt="A placeholder image of an open book icon with a dark background" class="w-full h-48 object-cover mb-4 rounded" height="400" src="https://storage.googleapis.com/a1aa/image/Xlv4eMjwHfue3oVzRfGueTfIiG99w0ecYLxjbz3LY8Xo08XeTA.jpg" width="600"/>
     <h2 class="text-2xl font-bold mb-2">
      View Borrowed Books
     </h2>
     <p class="text-gray-400">
      Check which books are currently borrowed and by whom.
     </p>
    </div>
    <div class="bg-gray-800 p-6 rounded-lg shadow-lg card">
     <img alt="A placeholder image of an envelope icon with a dark background" class="w-full h-48 object-cover mb-4 rounded" height="400" src="https://storage.googleapis.com/a1aa/image/suRKD0o3MiKcGBVQwICezXeUPKFdmbGbUE7yTQY99EJv5v8TA.jpg" width="600"/>
     <h2 class="text-2xl font-bold mb-2">
      View Messages
     </h2>
     <p class="text-gray-400">
      Read messages and feedback from users.
     </p>
    </div>
   </div>
  </div>
  <!-- Footer -->
  <footer class="py-6">
   <div class="container mx-auto text-center">
    <p>
     © 2024 Admin Panel. All rights reserved.
    </p>
   </div>
  </footer>
  <script>
   document.addEventListener('DOMContentLoaded', () => {
            const messageBox = document.querySelector('.message-box');
            if (messageBox) {
                setTimeout(() => {
                    messageBox.classList.add('fade-out');
                }, 3000);
                setTimeout(() => {
                    messageBox.style.display = 'none';
                }, 4000);
            }
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
 </body>
</html>
