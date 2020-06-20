# MakersBnB - An AirBnB Clone Project

<br>
<p align="center">
<img width="500" alt="picture" src="https://github.com/RichEwin/Makers_BnB/blob/master/images/Screenshot%202020-06-20%20at%2012.24.55.png?raw=true">
<br><br>

### Developers

- [Nick Butler](https://github.com/nwmbutler)
- [Ola Oduola](https://github.com/ooduola)
- [Rich Ewin](https://github.com/RichEwin)
- [Tim Bishop](https://github.com/TimCPB)

### Technologies

- Programming Language: Ruby, HTML, CSS
- Web Framework: Sinatra
- Testing Framework: Rspec, Capybara
- Database: PostgreSQL, TablePlus
- Database Cleaner: To truncate the databases before/after each test
- Password Encryption: BCrypt
- Gems: Rubocop, Simplecov

### User Stories

Our goal as a team was to implement the [headline specifications](https://github.com/makersacademy/course/blob/master/makersbnb/specification_and_mockups.md) provided by our client. We broke down and achieved these specifications using the following user stories:

```
As a host,
so I can list a new space,
I'd like to be able to sign-up to MakersBnB.
```
```
As a host,
so guest can view my listing,
I'd like to list a new space.
```
```
As a host,
so I can list several properties,
I'd like to be able to add multiple spaces.
```
```
As a host,
so guests can identify my property,
I'd like to be able to name my space.
```
```
As a host,
so guests can see more information about my space,
I'd like to add a short description of the space.
```
```
As a host,
so guest know what their visit will cost,
I'd like to add a price per night.
```
```
As a host,
so guests can see availability,
I'd like to be able to add a range of dates the space is available.
```
```
As a guest,
to book a space for one night,
I'd like to be able to request to hire a space
```
```
As a guest,
to keep track of my requests,
I'd like to be able to see requests I've made.
```
```
As a host,
to see booking requests,
I'd like to be able to see requests
```
```
As a host,
to control bookings,
I'd like to be able to accept or reject requests.
```
```
As a user,
to stop double bookings from occurring,
I should be unable to select a booked date.
```
```
As a user,
so spaces aren't unavailable prematurely,
I can select a date until a request for that date is confirmed.
```

## Project Structure

- We ran three daily standups: morning, lunchtime and evening, which provided us with strict planning throughout the project.
- We paired daily to complete allocated user stories. We switched pairs on a daily basis. At times, we used a technique called 'mobbing' to come together as a team if a pair was blocked. This worked amazingly well on every occasion!
- We recorded the ongoing status of each user story using a [tracker](https://docs.google.com/spreadsheets/d/1jswG38PSips2JDHxPaiDdRx4TFHlVArAW4ObTufB7QI/edit#gid=0). This helped when allocating work and identifying each pair's workload.
- We completed our first [MVP](https://github.com/ooduola/MakersBnB/blob/master/images/MakersBnB_page1.png) on Tuesday afternoon. We completed our second [MVP](https://miro.com/app/board/o9J_kqxPy_8=/) on Thursday afternoon.
- We each contributed to a [workdoc](https://docs.google.com/document/d/1JNtCI9AY3DX4AiPzJy0I_Pzj_E0sV-UHCisdHpChO4c/edit?usp=sharing) daily that allowed each member of the team to input ideas, basic pseudocode to attack a problem, and collaborate on project strategy.

## Domain and Process Modelling

- Planning was a key element in this project. We sketched basic designs daily of how we wanted our app to function.. Here is a sketch of our [MVC](https://github.com/ooduola/MakersBnB/blob/master/images/MakersBnB_mvp2.png?raw=true).

- Our app is split up into various classes that understands the behaviour of various methods. The classes encapsulate these behaviours.

Class ----> User
Method (behaviour) ----> initialize(username, id, password), User.create and User.find

Class ----> Space
Method (behaviour) ----> initialize(name, description, price)

- Our app is fully tested, adopting both unit and feature testing.

## How to run

To run this program, you will need to create two databases. The first database is a test database that allows you to run tests. The second database allows you to navigate through the program in full production. We recommend installing [PostgreSQL](https://www.postgresql.org/):

- Terminal: Run ```psql```
- Create both databases using the data in the ```migrations``` [directory](https://github.com/ooduola/MakersBnB/tree/master/dbNT/migrations)
- Terminal: Run ```/q``` to quit

Once the databases have been installed:

- Fork and clone this repo to your chosen folder
- Terminal: Run ```bundle install```to install gems
- Terminal: Run ```rspec``` to view passing unit and feature tests
- Terminal: Run ```rackup```to launch the app
- In your preferred browser, navigate to ```localhost:9292```
