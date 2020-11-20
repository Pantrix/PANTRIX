Original App Design Project - README
===

# PantryX

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
As a result of COVID-19, many people have decided to eat less at restaurants. Many restaurants have also decided to close. As a result, we decided to create an app where a user is able to input ingredients they have at hand and receive recipe recommendations. These recipes would also include nutritional information and a way to add ingredients to your grocery list. Additionally, there will be a GPS to find local grocery stores that carry the ingredients needed.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Food, Nutrition, Health 
- **Mobile:** 
- **Story:** Allows users to find recipes with ingredients they have at hand by inputting those ingredients. Allows users to be organized with the creation of a grocery list and find places where they can buy the ingredients. 
- **Market:** Anyone who loves to cook can use this app.
- **Habit:** Users can come and search whenever they want to eat something.
- **Scope:** 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can register a new account
* User can login
* User can logout
* User can input ingredients
* Users can scroll through recipes given from the inputs
* Users can add ingedients to shopping list

**Optional Nice-to-have Stories**

* User can track daily meals
* Based on user's previously logged diet, app recommends recipes that balances their nutritional needs
* Users can locate stores near user that carry those ingredients
* User can find related recipes when they cick on a recipe
* Users can take pictures of their finished dishes and post it on the app

### 2. Screen Archetypes

* Register
    * User can register a new account
* Login
   * User can login
* Home
   * Users can scroll through recipes given from the inputs
   * ...
* Pantry
    * user can log ingredients they already have
* Search
   * User can find a recipe when a food is entered
* Favorite Recipes
    * User can save recipes for later
* Grocery List
    * User can log ingredients they need
    * Can go to map to find stores
* Map
    * Can find local stores
* Settings
    * User profile
    * Logout

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Sign up/ login
    * Create an account
* Home
    * Shows popular recipes 
    * Located on home page
* Pantry
    * Stores ingredients user already has
* Search Page
    * Recomended recipes based on pantry
    * Can favorite recipes
* Favorite Recipes
    * Recipes to save for later
* Grocery List
    * Save ingredients needed
    * Can locate ingredients near using gps
* Settings/ Profile

**Flow Navigation** (Screen to Screen)

* Sign up/ login
    * Home page
* Home
    * Top:
        * Pantry
    * Bottom:
        * Search
        * Favorite
        * List
        * Settings
* Pantry
    * Collection of food that the user inputs
* Search Page
    * Favorites
* Favorite Recipes
    * List
    * Create your own
* Grocery List
    * Map/ GPS
    * Settings
* Settings/ Profile
    * Log in

## Wireframes
<img src="https://i.imgur.com/ybDktmP.jpg" width=600>


## Schema


### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
