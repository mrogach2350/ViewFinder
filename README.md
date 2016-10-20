# ViewFinder
The Team:
Ashley Vernon, Denzale "Wolf" Reese, Michael Rogachevsky, Sera Bak

## Objective
ViewFinder is a web app that allows users to upload photos of San Francisco landmarks. The app is also mobile friendly so users can easily snap a photo straight from their phones and upload to our app. Users can also comment and vote on photos that others have posted.
#### Our ideal user is :

 1. A photographer (hobbyist or pro)
 2. Interested in exploring and photographing local landmarks.
 3. Interested in building an online community of local artists.
 4. Supports the ViewFinder community through insight and constructive critique of others' submissions.


## Motivation
We wanted to develop an app that would encourage users to explore their city and revisit places they may have been many times before.
When you live in an iconic city, some of the greatest views become bland and blend in to the background. It's ViewFinder's mission to re-energize the urban photographer to take a second look at some thing they've seen thousands of time and relive the magic inspired by such a unique place.


## Links
* [Heroku Deployment](https://view-finder.herokuapp.com "Heroku")
* [GitHub Repository](https://github.com/mrogach2350/ViewFinder/ "GitHub Repository")
* [Trello Board](https://trello.com/b/3YWIh7TY/viewfinder "Trello Board")


## Technologies Used
* Ruby on Rails
* HTML, CSS, JavaScript, jQuery
* PostgreSQL for the database
* Materialize, SCSS for responsive design
* MapBox API
* File Upload using Cloudinary
*  Gems -
	*  FFaker (Seed Data)
	*  BCrypt (Encryption)
	*  AutoPrefixer-rails (urls)
	*  Materialize-rails (grid and styling)
	*  Social Share button
	*  ActiveRecord Reputation System (Voting)
	*  Acts as Commentable with threading (Comments)


## Code Examples
```
// application.js

$(document).on('turbolinks:load', function(){
  $('.side_btn').sideNav({
      menuWidth: 300,
      edge: 'right', // Choose the horizontal origin
      closeOnClick: true
    });
  $('.button-collapse').sideNav();
  $('.collapsible').collapsible();
  $('.materialboxed').materialbox();
  $('.modal-trigger').leanModal();
  $('.carousel.carousel-slider').carousel({full_width: true});

  setTimeout(function(){
    $('#flash').remove();
  }, 5000);

  $('#edit-user-btn').on('click', function (e) {
  	e.preventDefault();
  	$(this).offsetParent().find('.hidden').removeClass('hidden');
  	$(this).offsetParent().find('#user-profile').addClass('hidden');

  });

  $(function() {
        if($.fn.cloudinary_fileupload !== undefined) {
          $("input.cloudinary-fileupload[type=file]").cloudinary_fileupload({replaceFileInput: false});
          $("input.cloudinary-fileupload[type=file]").attr("accept", "image/*");
          $("input.cloudinary-fileupload[type=file]").attr("capture", "camera");
          }
    });
});

```

## User Stories
**Home Page**

When a new user arrives at the home page. They should see a collection of the top rated photos from the entire site. On the right side, there is a tab labeled "Join/Login". Along the bottom of the page runs a footer with three labels, "About", "Community Guidelines", "Creative Commons". There should also be a tab on the left, labled "Map", that slide out to reveal a link to our "Map Page" and a list of the landmarks available on our app.

**The Footer, and tabs on both side are part of the layout and should be visible in all view**

*Click Map* - This will redirect the user to our Map Page.

*Click Landmark name* - Clicking on the name of a particular landmark should take the user to the Landmark page for the one they selected.

*Click Join/Login* - When the user clicks on the Join/Login tab, a panel will expand from the side to reveal the Login Form and the New User form seperated by a horizontal line. The user should be able to click the tab again and close the sidebar.
If a user logs in/signs up successfully, they should be redirected to their User Page.
When a user is logged in, the Join/Login sidebar should change to contain the photo upload form as well as a "logout" button.

*Click About/Community Rules/Creative Commons* - When the user clicks on any of the lower buttons, it will bring up the same panel to cover most of the screen. The panel will house text. Depending on which button the user pushed, the text will either show a short bio about the devs (About), a FAQ style doc explaining rules and guidlines for posts (Community Rules), or finally the documentation exlaining the different uses of the Creative Commons Copyright (Creative Commons).

*Click an image* - When the user clicks an image, it should redirect them to the Photo Page for that image.

**Map Page**
Our Map Page should contain all three hidden menus from the layout, as well as contain a large map that covers most of the page. The map will be dotted with flags representing a landmark to be photographed by users. All the menus from our layout should function the same in every view.

*Click a flag* - This should redirect to a View page for that landmark.   

**User Page**
A user's page should display a profile picture about a bio in a side panel the left. There should also be an edit and delete button visible if that user is logged in. The page should also display a grid of all the photos uploaded by that user.

*Click Edit* - Flips Profile data to a prefilled form, allowing the user to edit their details.

*Click Delete* Upon confirmation, will delete the user profile and all images associated with it.

*Click an image* - When the user clicks an image, it should redirect them to the Photo Page for that image.

**Landmark Page**
The landmark page should display a side bar (similar to user) showing the top voted pic of the Landmark, along with a few details about it. Below that, it should display an index of all the photos of that landmark.

*Click an image* - When the user clicks an image, it should redirect them to the Photo Page for that image.
Users will NOT be able to CRUD landmarks.

**Photo Page**
The photo display page should display the photo in it's largest format along with a description of who took the photo, when it was taken, and with what equipment.
If the user who posted the photo is logged in, they should see an Edit and Delete button.

*Click Edit* - Allows the User to edit the description of the image.

*Click Delete* Upon confirmation, will delete the image.
Users should also be able to add comments if they are logged in.
All users should see and be able to use the share buttons. These should include: FB, Twitter, Instagram, and potentially Reddit.
