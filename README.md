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
Because of COVID-19, many individuals have decided to eat less at restaurants and go out as little as possible. For that reason, we decided to create an app that will aid these individuals in finding recipes with ingredients they have at home. Users will be able to input the ingredients they have at hand and receive recipe recommendations. The recipes would also include nutritional information as well as pricing of the ingredients. Users will also be able to upload photos of their finished dishes.

### App Evaluation

- **Category:** Food, Nutrition, Health 
- **Mobile:** 
- **Story:** Allows users to find recipes with ingredients they have at hand by inputting those ingredients. Allows users to view nutritional facts and pricing of the recipes. Allows users to upload photos of finished dishes.
- **Market:** Anyone who loves to cook can use this app.
- **Habit:** Users can come and search whenever they want to eat something.
- **Scope:** 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can register a new account
* User can login
* User can input ingredients into pantry
* Users can scroll through recipes given from the inputs
* Users can search any recipe
* Users can click on recipes and view their nutritional facts, ingredient pricing, and upload a photo of that recipes finished dish.

**Optional Nice-to-have Stories**

* User can logout in a settings page
* Users can add recipes to their favorites list
* Users can add ingredients to grocery list
* Users can locate stores near user that carry those ingredients
* User can find related recipes when they cick on a recipe

### 2. Screen Archetypes

* Register
    * User can register a new account
* Login
    * User can login
* Home
    * Users can scroll through popular recipes 
    * When clicked on a recipe, users can view their nutritional facts, pricing, and upload a photo of its finished dish
* Pantry
    * User can log ingredients they already have
* Search
    * User recommended recipes based on pantry ingredients
    * User can find a recipe when a food is entered in search bar
    * When clicked on a recipe, users can view their nutritional facts, pricing, and upload a photo of its finished dish

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Sign up/login
    * Create an account
    * Login
* Home
    * Shows popular recipes 
* Pantry
    * Stores ingredients user already have
* Search Page
    * Recommended recipes based on pantry
    * Can search any recipes with search bar
    * Nutritional facts, pricing, and option to post an image of attempted recipe available after clicking on a recipe

**Flow Navigation** (Screen to Screen)

* Sign up/login
    * Home page
* Home
    * Bottom:
        * Home
        * Pantry
        * Search
* Pantry
    * Collection of food that the user inputs
* Search Page
    * Recipes

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

   | Property        | Type                 | Description |
   | -------------   | --------             | ------------|
   | popularRecipeId | String               | unique id for popular recipes |
   | image           | File                 | image of recipe |
   | caption         | String               | image caption (recipe name) |
   | likeCount       | Number               | number of likes for the recipe |
   | ingredients     | Map <String, String> | Map containing a key as a String (ingredientId) and a value (quantity) as a String. Ingredients and their quantity |
   | ingredientPrice | Map <String, String> | Map containing a key as a String (ingredientId) and a value (price) as a String. Ingredients and their pricing |
   | nutritionValue  | Map <String, String> | Map containing a key as a String (recipeId) and a value (nutrition) as a String. Recipes and their nutritional values | 
   | userImage       | File                 | image that user posts for that recipe |
   
#### Ingredient 

   | Property       | Type     | Description|
   | -------------  | -------- | ------------|
   | ingredientName | String   | ingredient name |
   | ingredientId   | String   | unique id for the user input of ingredients |
   
#### Pantry 
   | Property        | Type                 | Description | 
   | -------------   | --------             | ------------|
   | recipeName      | String               | recipe name |
   | pantryId        | String               | unique id for the user list of ingredients |
   | recipeId        | String               | unique id for the user input of recipe |
   | image           | File                 | image of recipe |
   | caption         | String               | image caption (recipe name) |
   | likeCount       | Number               | number of likes for the recipe |
   | ingredients     | Map <String, String> | Map containing a key as a String (ingredientId) and a value (quantity) as a String. Ingredients and their quantity |
   | ingredientPrice | Map <String, String> | Map containing a key as a String (ingredientId) and a value (price) as a String. Ingredients and their pricing |
   | nutritionValue  | Map <String, String> | Map containing a key as a String (recipeId) and a value (nutrition) as a String. Recipes and their nutritional values | 
   | userImage       | File                 | image that user posts for that recipe |
   
### Networking

#### List of network requests by screen

   - Login Screen
       - 
   - Home Feed Screen
      - (Read/GET) Fetch popular recipes for feed
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
   - Home Screen
      - (Read/GET) Fetching popular recipes for user's feed
      - (Update/GET) Get new popular recipes for feed
      - (Read/GET) Get recipe nutrition facts
      - (Read/GET) Get ingredient pricing 
      - (Create/POST) Post a recipe photo in review
      - (Delete) Deleting a post

      
   - Pantry Screen
      - (Create/PUT) Input ingredients available to user
      - (Delete) Delete ingredients when not needed
      
      
   - Search Screen
      - (Read/GET) 
      - (Read/GET) Get recipes after searching recipes with search bar
      - (Read/GET) Get recipe nutrition facts
      - (Read/GET) Get ingredient pricing 
      - (Create/POST) Post a recipe photo in review
      - (Delete) Deleting a post
