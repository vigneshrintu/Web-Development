// JavaScript Object

// An object is a collection of key-value pairs.
// Keys are strings (or symbols), and values can be any data type, including other objects.
// ends with semicolon

// Creating an Object:
const person = {
    name: "John",
    age: 30,
    city: "New York"
};

// Accessing Object Properties:
console.log(person.name); // Output: John
console.log(person["age"]); // Output: 30

// Adding or Modifying Properties:
person.gender = "Male"; // Adding a new property
person.age = 35; // Modifying an existing property

// Nested Objects:
const car = {
    make: "Toyota",
    model: "Camry",
    year: 2020,
    owner: {
        name: "Alice",
        age: 25
    }
};

// Accessing Nested Properties:
console.log(car.owner.name); // Output: Alice

// Object Methods:
const circle = {
    radius: 10,
    // Method to calculate area
    calculateArea: function() {
        return Math.PI * this.radius * this.radius;
    }
};

console.log(circle.calculateArea()); // Output: 314.159...

// Object Iteration:
for (const key in person) {
    console.log(`${key}: ${person[key]}`);
}
