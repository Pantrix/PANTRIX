Original App Design Project - README
===

# PANTRIX

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Because of COVID-19, many individuals have decided to eat less at restaurants and go out as little as possible. For that reason, we decided to create an app that will aid these individuals in finding recipes with ingredients they have at home. Users will be able to input the ingredients they have at hand and receive recipe recommendations. The recipes would also include nutritional information as well as pricing of the ingredients.

### App Evaluation

- **Category:** Food, Nutrition, Health 
- **Mobile:** 
- **Story:** Allows users to find recipes with ingredients they have at hand by inputting those ingredients. Allows users to view nutritional facts and pricing of the recipes. 
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
* Users can click on recipes and view their nutritional facts as well as pricing.

**Optional Nice-to-have Stories**

* User can track daily meals
* Users can add recipes to their favorites list
* Users can add ingredients to grocery list
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
   * Users can scroll through popular recipes
* Pantry
    * User can log ingredients they already have
* Search
   * User can find a recipe when a food is entered. And when clicked on a recipe, users can view their nutritional facts as well as pricing
* Settings
    * User profile
    * Logout

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Sign up/ login
    * Create an account
* Home
    * Shows popular recipes 
* Pantry
    * Stores ingredients user already has
* Search Page
    * Recommended recipes based on pantry
    * Can search any recipes with search bar
    * Nutritional facts and pricing available after clicking on a recipe
* Settings/ Profile

**Flow Navigation** (Screen to Screen)

* Sign up/ login
    * Home page
* Home
    * Bottom:
        * Home
        * Pantry
        * Search
        * Settings
* Pantry
    * Collection of food that the user inputs
* Search Page
    * Recipes
* Settings/ Profile
    * Log in

## Wireframes
<img src="https://i.imgur.com/NheZ3ou.jpg" width=600>


## Schema 
### Models

#### User

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | userId        | String   | username of user |
   | password      | String   | password of user |

#### Recipe

   | Property        | Type     | Description |
   | -------------   | -------- | ------------|
   | popularRecipeId | String   | unique id for popular recipes |
   | image           | File     | image of recipe |
   | caption         | String   | image caption (recipe name) |
   | likeCount       | Number   | number of likes for the recipe |
   | ingredientCount | Map      | ingredients and its quantity needed |
   | nutritionValue  | Map      | recipes and their nutritional facts | 
   | userImage       | File     | image that user posts for that recipe |
   
#### Ingredient 

   | Property       | Type     | Description|
   | -------------  | -------- | ------------|
   | ingredientName | String   | ingredient name |
   | ingredientId   | String   | unique id for the user input of ingredients |
   
#### Pantry 
   | Property        | Type     | Description | 
   | -------------   | -------- | ------------|
   | recipeName      | String   | recipe name |
   | pantryId        | String   | unique id for the user list of ingredients |
   | recipeId        | String   | unique id for the user input of recipe |
   | image           | File     | image of recipe |
   | caption         | String   | image caption (recipe name) |
   | likesCount      | Number   | number of likes for the recipe |
   | ingredientCount | Map      | ingredients and its quantity needed |
   | nutritionValue  | Map      | recipes and their nutritional facts | 
   | userImage       | File     | image that user posts for that recipe |
   
### Networking

#### List of network requests by screen

   - Login Screen
       - 
   - Home Feed Screen
      - (Read/GET) Query to fetch recipes for feed
         ```swift
         let query = PFQuery(className:"Post")
         query.whereKey("author", equalTo: currentUser)
         query.order(byDescending: "createdAt")
         query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
            if let error = error { 
               print(error.localizedDescription)
            } else if let posts = posts {
               print("Successfully retrieved \(posts.count) posts.")
           // TODO: Do something with posts...
            }
         }
         ```
   - Create Home Screen
      - (Read/GET) Fetching recipes for user's feed
      - (Create/POST) Create a new like on a post
      - (Delete) Delete existing like
      - (Create/POST) Create a new comment on a post
      - (Delete) Delete existing comment
   - Create Post Screen
      - (Create/POST) Create a new post object
   - Profile Screen
      - (Read/GET) Query logged in user object
      - (Update/PUT) Update user profile image
