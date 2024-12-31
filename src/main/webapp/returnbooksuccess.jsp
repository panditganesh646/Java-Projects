<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Return Borrowed Book</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/borrowform.css">
</head>
<body class="min-h-screen flex items-center justify-center">
    <div class="w-full max-w-md bg-black rounded shadow-lg p-6">
        <h1 class="text-2xl font-bold text-center mb-6">Return Borrowed Book</h1>
        <c:if test="${not empty msg}">
            <div class="p-4 mb-4 rounded ${msg.contains('successfully') ? 'bg-green-100 text-green-700' : 'bg-red-100 text-red-700'}">
                ${msg}
            </div>
        </c:if>
        <form action="returnBorrowedBook" method="post" class="space-y-4">
            <div>
                <label for="borrowedBookId" class="block text-gray-700 font-bold mb-2">Borrowed Book ID:</label>
                <input 
                    type="text" 
                    id="borrowedBookId" 
                    name="bcode" 
                    placeholder="Enter Borrowed Book Code" 
                    class="w-full px-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" 
                    required
                >
            </div>
            <div>
              
                <button 
                    type="submit" 
                    class="w-full bg-red-600 hover:bg-red-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:ring-2 focus:ring-red-500">
                    Return Borrowed Book
                </button>
            </div>
        </form>
    </div>
   <div class="theme-btn-container" style="margin-top:0px; right:1px; display: flex; flex-direction: column; gap: 6px;"></div>
    <script type="text/javascript" src="js/bookBorrowForm.js"></script>
</body>
</html>