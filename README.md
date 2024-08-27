# Food BONUNZO 🍔🍕🍦

The Food Ordering App is a mobile application developed using Flutter, allowing users to browse and order a variety of food items from different categories like pizza, burgers, salads, and ice cream. The app integrates with Firebase Firestore for real-time data retrieval and storage, providing a seamless and responsive user experience.

![image](https://github.com/user-attachments/assets/23c2bd5e-934f-4ee8-bf98-debfcb9d2553)![image](https://github.com/user-attachments/assets/8a256c99-6669-43f1-9b1a-700f0a9ea6ff)![image](https://github.com/user-attachments/assets/3e19b436-535d-4c30-8b3e-faf4fd85f361)




# Features 

## 1. User Authentication
![image](https://github.com/user-attachments/assets/9f12b5a8-a4ef-4525-8586-1a6dd6a2e0ef)
![image](https://github.com/user-attachments/assets/3ad932b0-fd13-4aea-90ec-e97c436252b5)

Users can sign up, log in, and log out securely using Firebase Authentication.
User data is securely stored, including preferences and order history.
## 2. Food Browsing
![image](https://github.com/user-attachments/assets/331aaf5e-2b9e-43a7-ad20-e79929011d99)

Users can browse through various categories of food items such as pizzas, burgers, salads, and desserts.
Each food item is displayed with its image, name, description, and price.
Users can filter and select items based on their preferences.
## 3. Shopping Cart
![image](https://github.com/user-attachments/assets/e0763fd0-1b94-44d3-aa1e-4d6c4084c5a3)

Users can add items to their cart with a single tap.
The app dynamically calculates the total cost based on selected items and quantities.
Users can view, edit, or remove items from the cart before proceeding to checkout.
## 4. Order Placement

![image](https://github.com/user-attachments/assets/5d140975-09e6-49ea-ad09-1ef7d6c20f14)

Users can place an order with their selected items.
The app deducts the total order amount from the user's wallet balance stored in Firebase.
Orders are saved in the database for tracking and history purposes.
## 5. Admin Panel
![image](https://github.com/user-attachments/assets/59972e51-b552-4735-ac68-014a87a1949f)

## 6. Profile 

![image](https://github.com/user-attachments/assets/9ff57564-1958-43f1-9b92-63a9cf073a6f)

Admins can add new food items directly from the app.
The admin panel allows for editing and deleting existing items.
Admin-specific features ensure that only authorized users can manage the menu.
## 6. Real-Time Updates
The app fetches food items and order details in real-time from Firebase Firestore.
Users see updates to their order status and available food items without needing to refresh.
## 7. Smooth UI/UX
The app features a clean and intuitive user interface, making it easy for users to navigate.
UI components such as buttons, images, and lists are responsive and adapt to various screen sizes.
# User Interface
## Main Screen
### Greeting Message: 
The main screen greets the user by name and provides easy access to the shopping cart.
### Category Selection: 
Users can select food categories (pizza, burger, salad, ice cream) using icon buttons. The selected category is highlighted for clarity.
### Food Item List: 
Displays a horizontal list of food items based on the selected category. Each item includes an image, name, description, and price.
### Special Offers:
A section showcasing special offers or recommended items with detailed information.
### Shopping Cart: 
Shows the total number of items in the cart, with a floating action button to proceed to checkout.
## Order Screen
### Food Cart: 
Displays a vertical list of items added to the cart, including quantity, image, name, and total price for each item.
Total Price Calculation: Automatically updates the total price as items are added or removed.
### Checkout Button:
Allows users to proceed with the order, deducting the amount from the wallet and saving the order details in the database.
##3A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference. 

## Admin Panel
### Add New Items: Admins can add new food items with images, descriptions, and prices.
Edit/Delete Items: Existing items can be modified or removed by the admin.
### Admin Access Control: Only users with admin privileges can access this panel.
Technology Stack
### Flutter: For building the cross-platform mobile application.
### Firebase Firestore: For storing and retrieving food items, orders, and user data.
### Firebase Authentication: For managing user sign-up and sign-in processes.
### SharedPreferences: For storing user-specific data locally on the device.
# Getting Started
### Prerequisites
### Flutter SDK: 
Ensure that Flutter is installed and set up on your machine.
### Firebase Account: Set up Firebase for authentication and database.
## Installation
Clone the repository:

```bash
Copy code
git clone https://github.com/007AnupamSharma/Food_Ordering_App.git
cd Food_Ordering_App
Install dependencies:
```
```bash
Copy code
flutter pub get
Set up Firebase:
```
### Add your google-services.json file for Android in the android/app directory.
### Add your GoogleService-Info.plist file for iOS in the ios/Runner directory.
## Run the app:

```bash
flutter run
```
# Screenshots
### Main Screen: 
![image](https://github.com/user-attachments/assets/33cd2fa9-46e0-4770-b1df-5bee3e7d26ed)

### Food Category Selection: 

![image](https://github.com/user-attachments/assets/b24b6208-9acd-4a47-aa20-29b3693f85ba)

### Food Cart: 

![image](https://github.com/user-attachments/assets/fc89fd3d-8dc3-4b06-8200-d48d011f460f)

### Order Placement: 

![image](https://github.com/user-attachments/assets/26c73e2f-3073-497f-82e4-828be71cfc14)

![image](https://github.com/user-attachments/assets/eb08e178-8446-4e72-a93e-1ea677671941)

![image](https://github.com/user-attachments/assets/aed9c02d-8b68-41a7-9cf5-3cfa830d45cd)


### Admin Panel: 
![image](https://github.com/user-attachments/assets/d9b6afcd-7995-4eb9-947a-87b4e7693501)
![image](https://github.com/user-attachments/assets/e1201612-71bc-48a3-aeab-8675ad09eac6)

# Contributing
### Feel free to fork the repository and make changes. Contributions are welcome!
```
Fork the repository.
Create a new branch (git checkout -b feature-branch).
Commit your changes (git commit -m 'Add some feature').
Push to the branch (git push origin feature-branch).
Open a pull request.
```
## License
This project is licensed under the MIT License - see the LICENSE file for details.
