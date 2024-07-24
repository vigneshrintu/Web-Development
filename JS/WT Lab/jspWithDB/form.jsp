<!DOCTYPE html>
<html>
<head>
    <title>Form Submission</title>
</head>
<body>
    <h2>Submit Your Details</h2>
    <form action="insert.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age"><br>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob"><br>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender">
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select><br>

        <label for="subscription">Subscription:</label>
        <input type="radio" id="free" name="subscription" value="Free">
        <label for="free">Free</label>
        <input type="radio" id="premium" name="subscription" value="Premium">
        <label for="premium">Premium</label><br>

        <label for="interests">Interests:</label>
        <input type="checkbox" id="sports" name="interests" value="Sports">
        <label for="sports">Sports</label>
        <input type="checkbox" id="music" name="interests" value="Music">
        <label for="music">Music</label>
        <input type="checkbox" id="tech" name="interests" value="Technology">
        <label for="tech">Technology</label><br>

        <label for="favourite_subjects">Favourite Subjects:</label>
        <input type="text" id="favourite_subjects" name="favourite_subjects"><br>

        <label for="bio">Bio:</label>
        <textarea id="bio" name="bio"></textarea><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
