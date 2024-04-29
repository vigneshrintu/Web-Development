import React, { useState } from 'react';

// Functional component using useState hook
const Counter = () => {
  // Declaring a state variable 'count' initialized to 0
  const [count, setCount] = useState(0);
  // useState generally returns two in an array and first is value variable and a function to update that value variable.

  // Event handler function to increment the count
  const increment = () => {
    // Update the state using the setCount function provided by useState
    // It takes the new value as argument and triggers a re-render
    setCount(count + 1);
  };

  // Event handler function to decrement the count
  const decrement = () => {
    // Update the state using the setCount function provided by useState
    // It takes the new value as argument and triggers a re-render
    setCount(count - 1);
  };

  return (
    <div>
      {/* Display the current value of count */}
      <p>Count: {count}</p>
      {/* Button to increment count */}
      <button onClick={increment}>Increment</button>
      {/* Button to decrement count */}
      <button onClick={decrement}>Decrement</button>
    </div>
  );
};

// Usage of the Counter component
const App = () => {
  return (
    <div>
      <h1>Counter Example</h1>
      <Counter />
    </div>
  );
};

export default App;
