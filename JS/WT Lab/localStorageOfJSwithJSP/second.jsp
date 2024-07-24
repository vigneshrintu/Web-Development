<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
    // Assume these variables are passed from the previous page
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    int age = Integer.parseInt(request.getParameter("age"));
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String subscription = request.getParameter("subscription");
    String[] interestsArray = request.getParameterValues("interests");
    String interests = interestsArray != null ? String.join(", ", interestsArray) : "";
    String favouriteSubjects = request.getParameter("favourite_subjects");
    String bio = request.getParameter("bio");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Store in Local Storage</title>
    <script type="text/javascript">
        // Function to store data in local storage
        function storeInLocalStorage() {
            var username = "<%= username %>";
            var email = "<%= email %>";
            var age = "<%= age %>";
            var dob = "<%= dob %>";
            var gender = "<%= gender %>";
            var subscription = "<%= subscription %>";
            var interests = "<%= interests %>";
            var favouriteSubjects = "<%= favouriteSubjects %>";
            var bio = "<%= bio %>";

            localStorage.setItem("username", username);
            localStorage.setItem("email", email);
            localStorage.setItem("age", age);
            localStorage.setItem("dob", dob);
            localStorage.setItem("gender", gender);
            localStorage.setItem("subscription", subscription);
            localStorage.setItem("interests", interests);
            localStorage.setItem("favouriteSubjects", favouriteSubjects);
            localStorage.setItem("bio", bio);
        }

        // Function to retrieve data from local storage and update form
        function retrieveFromLocalStorage() {
            document.getElementById("username").value = localStorage.getItem("username") || "";
            document.getElementById("email").value = localStorage.getItem("email") || "";
            document.getElementById("age").value = localStorage.getItem("age") || "";
            document.getElementById("dob").value = localStorage.getItem("dob") || "";
            document.getElementById("gender").value = localStorage.getItem("gender") || "";
            document.getElementById("subscription").value = localStorage.getItem("subscription") || "";
            document.getElementById("favourite_subjects").value = localStorage.getItem("favouriteSubjects") || "";
            document.getElementById("bio").value = localStorage.getItem("bio") || "";

            // Handle checkboxes
            var interests = localStorage.getItem("interests");
            if (interests) {
                var interestsArray = interests.split(", ");
                var checkboxes = document.getElementsByName("interests");
                for (var i = 0; i < checkboxes.length; i++) {
                    if (interestsArray.includes(checkboxes[i].value)) {
                        checkboxes[i].checked = true;
                    }
                }
            }
        }

        // Function to update local storage with form data
        function updateLocalStorage() {
            var username = document.getElementById("username").value;
            var email = document.getElementById("email").value;
            var age = document.getElementById("age").value;
            var dob = document.getElementById("dob").value;
            var gender = document.getElementById("gender").value;
            var subscription = document.getElementById("subscription").value;
            var favouriteSubjects = document.getElementById("favourite_subjects").value;
            var bio = document.getElementById("bio").value;

            localStorage.setItem("username", username);
            localStorage.setItem("email", email);
            localStorage.setItem("age", age);
            localStorage.setItem("dob", dob);
            localStorage.setItem("gender", gender);
            localStorage.setItem("subscription", subscription);
            localStorage.setItem("favouriteSubjects", favouriteSubjects);
            localStorage.setItem("bio", bio);

            // Update interests in local storage
            var interests = [];
            var checkboxes = document.getElementsByName("interests");
            for (var i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i].checked) {
                    interests.push(checkboxes[i].value);
                }
            }
            localStorage.setItem("interests", interests.join(", "));
        }
    </script>
</head>
<body onload="storeInLocalStorage(); retrieveFromLocalStorage();">
    <h2>Store and Retrieve Data</h2>
    <form>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email"><br>

        <label for="age">Age:</label>
        <input type="text" id="age" name="age"><br>

        <label for="dob">Date of Birth:</label>
        <input type="text" id="dob" name="dob"><br>

        <label for="gender">Gender:</label>
        <input type="text" id="gender" name="gender"><br>

        <label for="subscription">Subscription:</label>
        <input type="text" id="subscription" name="subscription"><br>

        <label for="interests">Interests:</label><br>
        <input type="checkbox" id="sports" name="interests" value="Sports">
        <label for="sports">Sports</label><br>
        <input type="checkbox" id="music" name="interests" value="Music">
        <label for="music">Music</label><br>
        <input type="checkbox" id="technology" name="interests" value="Technology">
        <label for="technology">Technology</label><br>

        <label for="favourite_subjects">Favourite Subjects:</label>
        <input type="text" id="favourite_subjects" name="favourite_subjects"><br>

        <label for="bio">Bio:</label>
        <textarea id="bio" name="bio"></textarea><br>

        <input type="button" value="Update Local Storage" onclick="updateLocalStorage();">
    </form>
</body>
</html>