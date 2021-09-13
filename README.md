As a user
So that I can view my saved bookmarks
I want to see a list of bookmarks

Class Name: Bookmark

Mehods: view_bookmarks

Variables: bookmark_list = {}

Database setup: CREATE TABLE bookmarks
                (id SERIAL PRIMARY KEY,
                url varchar(60));