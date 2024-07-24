<!DOCTYPE html>
<html>
<head>
    <title>Input Form</title>
    <script>
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
    </script>
</head>
<body onload="retrieveFromLocalStorage()">
    <h2>Input Form</h2>
    <form action="second.jsp" method="post">
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

        <input type="submit" value="Submit">
    </form>
</body>
</html>
