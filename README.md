# COM528-AE2


## Contents
1) [Running The App](#running-the-app)
   - [Using Cargo Maven](#run-using-cargo-maven-plugin)
   - [Using Tomcat Server](#run-using-netbeans-embedded-tomcat-server)

2) [Requirements](#requirements)
 
3) [Project Features](#project-features)

4) [Use Cases](#use-cases)
   - [Admin](#admin)
   - [User](#user)

5) [Testing](#testing)
   - [User](#user-tests)
   - [Admin](#admin-tests)

6) [Diagrams](#diagrams)
   - [Robustness Diagram](#robustness-diagram)
   - [Wireframes](#wireframes)

## Running the app
You can run the app using the stand alone spring boot maven plugin:

at base of project do a build
```
mvn clean install
```
move to web module and run project
```
cd web
mvn spring-boot:run
```
the project will be served at http://localhost:8080/index.html

### Run using cargo maven plugin

You can also use the cargo plugin
```
mvn cargo:run
```
then navigate to http://localhost:8080/shoppingCartApplication/


### Run using Netbeans embedded Tomcat server

If you right click on the webfacade-example1 project in netbeans and select 'run' netbeans will spin up a tomcat instance and launch your application.

If you are asked for username and password just use the default admin admin.
 
(You must make sure you have stopped any maven started tomcat before you do this.)

You will be able to see the application at http://localhost:8080/shoppingCartApplication/

Note that sometimes the browser caches the old index.html so you may need to enter the correct url to access the app

http://localhost:8080/shoppingCartApplication/home

not

http://localhost:8080/shoppingCartApplication/home.jsp

## Requirements

This project has been created and tested using the follwing requirements:
-Java 11 or newer
-Tomcat 9
-Apache Maven 3.8 or newer
-Google Chrome/Microsoft Edge

## Project Features
- Users should be able to view a catalogue of items
- Users can add to, remove from and modify their catalogue
- Admins should be able to remove items from the catalogue, modify users basket and orders
- Anonymous mode that allows the viewing of products, however cannot add items to basket without an account

## Use cases

### Admin
| Use Case | Action | Response |
|------|--------|---------|
| 1 | Login as admin | access to admin features |
| 2 | Admin opens admin page | can redirect to admin without restrictions |
| 3 | Admin views all users | Admin will be able to view all user details regesitered  |
| 4 | Admin modifies user | User details will be updated accordingly  |
| 5 | Admin can change catalogue | adds and removes items on the catalogues for all types of users |
| 6 | Admin can see order history and baskets of users | Admins can have access and view all orders and baskets |

### User
| Use Case | Action | Response |
|------|--------|---------|
| 1 | User starts the application | Application runs with no issues |
| 2 | User goes to the specified URL in suitable search engine | User is redirected to the home page |
| 3 | User can view catalogue | Can see all items avaliable |
| 4 | User inputs correct login details | Has access to basket |
| 5 | Add items from the catalogue into basket | Items are added to basket |
| 6 | Can purchase items in basket | redirects to payment |
| 7 | User enters payment details | Payment details are checked to see if valid |
| 8 | User enters invalid payment detalis | Error message displayed to user and order not made |
| 9 | User payment details dont have sufficient funds | Payment not made and order not placed |
| 10 | User views order page | Redirected and order history is diplayed |

## Testing

### User Tests
| Test | Action | Expected Result | Outcome |
|------|--------|---------| ----- |
| 1 | User runs the application | Build complete and application runs without issue | Correct |
| 2 | User logs in | If account is valid, user is logged into account | Correct |
| 3 | User logs out | Returns user back to anonymous mode | Correct |
| 4 | User adds item from catalogue to basket | Items are added to basket | Correct |
| 5 | User selects checkout | Redirected to payment page | Correct |
| 6 | User inputs valid payment details | Order is placed | Failed |
| 7 | User inputs invalid payment details | Error is displayed and order is placed | Passed |
| 8 | User inputs valid payment details, however does not have sufficient funds | Error and order not placed | Failed |
| 9 | Users can log out | User is logged out of account | Correct |

### Admin Tests
| Test | Action | Expected Result | Outcome |
|------|--------|---------| ----- |
| 1 | Admin logs in | If valid details, admin is logged in | Correct |
| 2 | Admin deletes catalogue item | Item is removed from the catalogue | Incorrect |
| 3 | Admin views order history | Order history and user details are provided | Incorrect |
| 4 | Admin views users basket | Basket contents can be viewed and modified | Correct |
| 5 | Admin can modify users | Admin can change and update users details | Correct |
| 6 | Admin logs out | Returns admin back to anonymous mode and redirects to home page | Correct |

## Diagrams

### Robustness diagram
This diagram shows how the user will interact with the website through the interface and how the user and admin should be able to use the application to perform certain tasks. It also shows how certain inputs will be stored in different domains and also helped to serve as a guidance during the creation of this project.

![COM528-AE2 Robustness drawio](https://user-images.githubusercontent.com/72071568/148480990-f732a8e9-e818-4cec-8dda-503c02517798.png)
)

### Wireframes
I created designs on how each of the key pages of my application would look before I started creating this project. This gave me a template to follow: 

Home page:

![Home page drawio (3)](https://user-images.githubusercontent.com/72071568/148668172-72130443-7505-41ab-93ed-448e5d86660b.png)

Shopping Basket

![basket drawio](https://user-images.githubusercontent.com/72071568/148668188-9a08eec1-2c21-4916-9f33-2343bff0991a.png)

Checkout

![checkout drawio](https://user-images.githubusercontent.com/72071568/148668299-0efe4045-1c85-4990-a705-df7302c0b5c7.png)

Manage Users

![ManagerUsers drawio](https://user-images.githubusercontent.com/72071568/148668313-4ccc5d41-61d2-4efb-972a-a10ff9bd1d05.png)

Manage Catalogue

![Managecatalog drawio](https://user-images.githubusercontent.com/72071568/148668316-4ee6dc36-c7b9-498e-9207-ce277dffb81e.png)

Contact

![Contact drawio (1)](https://user-images.githubusercontent.com/72071568/148668322-e3a745be-bbc3-42e5-9191-877400b6c514.png)

