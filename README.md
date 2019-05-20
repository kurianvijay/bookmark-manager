As a <Stakehoilder>
So that <Motivation>,
I'd like <Task>

As a User,
So that I can select Bookmarks,
I'd like to view a list of my Bookmarks.

Object | Message ===> This is a Domain Model
Bookmarks | view list

file:///Users/vijaykurian/Desktop/Screenshot%202019-05-20%20at%2013.58.38.png

When the user visits the '/bookmarks' path, their browser sends a request to a controller we built.
When the controller gets the request, it asks the Bookmark class to give it all the bookmarks, i.e. the controller asks for Bookmark.all.
The Bookmark class goes and gets the bookmarks, and gives back all the bookmarks in an array to the controller.
The controller renders the array of bookmarks to a webpage, which it sends as a response to the user





NOTES:
    -----Why "print" (in controller - get method) lists the array and     "puts" does not?????


    ------

| Component   | Responsibility                                | Refactor                                |
|------------ |---------------------------------------------  |---------------------------------------- |
| Model       | Encapsulate logic with relevant data          | Encapsulate bookmark data in a class    |
| View        | Display the result to a user                  | Show the bookmark data in a list        |
| Controller  | Get data from the model and put in the view   | Render bookmark data into to the view   |

-------

why is subject.all not representing the class bookmark in the test in bookmark_spec.rb?
