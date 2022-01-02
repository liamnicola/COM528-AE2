# COM528-AE2


## Contents


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

### To run using stand alone cargo maven plugin

You can also use the cargo plugin
```
mvn cargo:run
```
then navigate to http://localhost:8080/shoppingCartApplication/


### To run the project using  in Netbeans embedded Tomcat server

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
| 2 | Admin has access to admin page | can redirect to admin without restrictions |
| 3 | Admin can change catalogue | adds and removes items on the catalogues for all types of users |
| 4 | Admin can see order history and baskets of users | Admins can have access and view all orders and baskets |

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
| 1 | User runs the application | Build complete and application runs without issue | ? |
| 2 | User logs in | If account is valid, user is logged into account | ? |
| 3 | User logs out | Returns user back to anonymous mode | ? |
| 4 | User adds item from catalogue to basket | Items are added to basket | ? |
| 5 | User presses order items | Redirected to payment page | ? |
| 6 | User inputs valid payment details | Order is placed | ? |
| 7 | User inputs invalid payment details | Error is displayed and order is placed | ? |
| 8 | User inputs valid payment details, however does not have sufficient funds | Error and order not placed | ? |

### Admin Tests
| Test | Action | Expected Result | Outcome |
|------|--------|---------| ----- |
| 1 | Admin logs in | If valid details, admin is logged in | ? |
| 2 | Admin deletes catalogue item | Item is removed from the catalogue | ? |
| 3 | Admin views order history | Order history and user details are provided | ? |
| 4 | Admin views users basket | Basket contents can be viewed and modified | ? |
| 5 | Admin logs out | Returns admin back to anonymous mode and redirects to home page | ? |

