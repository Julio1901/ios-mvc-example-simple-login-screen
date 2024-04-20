# iOS Project with MVC Architecture

This is a simple project aimed at demonstrating the practical application of the MVC (Model-View-Controller) design pattern in iOS app development. As the project's focus is on architecture, some practices not recommended, such as the use of force unwrap operator, may appear but should be overlooked.

## What is MVC?

MVC is a software architecture pattern that separates your application into three layers: the user interface layer (View), the data manipulation layer (Model), and the layer that connects them and handles the necessary data processing for display (Controller). It is good for small projects, prototypes, or when applying a concept for a tutorial or study, for example. However, as the project grows and you begin to have greater complexity in business rules, you may need to migrate to another architecture because your controller may start to become a "Massive View Controller," meaning a large and complex controller.

## Demo

![Project Demo](https://raw.githubusercontent.com/Julio1901/myProjectsImages/master/ios-mvc-example/iosMvcExample.png)

## How to Run the Project

To run the project on your local environment, follow the instructions below:

1. Clone this repository on your local machine:

   ```bash
   git clone https://github.com/Julio1901/ios-mvc-example-simple-login-screen.git

2. Open the ProjectName.xcodeproj file in Xcode.

3. Select the desired device or simulator and click on the run button.

4. Use the following credentials to log in:
    . Email: test@test.com
    . Password: password

5. Explore the app to see the implementation of the MVC architecture.
