function submitForm() {
    // Fetch values from input fields
    var name = document.querySelector('.name').value;
    var email = document.querySelector('.email').value;
    var phone = document.querySelector('.phone').value;
    var message = document.querySelector('.message').value;

    if (!name || !email || !message || !phone) {

        alert('Please fill out the required fields: Name, Email, and Message');

        return;
    }

    // You can do something with the values, e.g., send them to a server
    var data = {
        "name": name,
        "email": email,
        "phone": phone,
        "message": message
    };
    // Convert the JSON object to a string
    var jsonData = JSON.stringify(data);

    fetch('https://h7ymyc3dd1.execute-api.us-east-1.amazonaws.com/serverless-api', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            // Add any additional headers as needed
        },
        body: jsonData
    })
    
    .then(response => response.json())

    .then(data => {
        // Display success message to the user
        alert('Form submitted successfully!');
        console.log('Success:', data);
        // You can add further logic here based on the API response

         // Reset the input fields
        document.querySelector('.name').value = '';
        document.querySelector('.email').value = '';
        document.querySelector('.phone').value = '';
        document.querySelector('.message').value = '';
    })

    .catch(error => {
        // Display error message to the user
        alert('An error occurred. Please try again later.');
        console.error('Error:', error);
        // Handle errors here
    });
}
    
    // You can add further logic here, such as sending the values to a server using AJAX or other methods.
