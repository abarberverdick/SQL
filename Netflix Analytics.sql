# In this PostgreSQL code, I am querying a database that is holding Netflix data to answer questions about the data. 

-- How many movie titles are there in the database? 

SELECT COUNT(*) 
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie';

-- When was the most recent batch of tv shows and/ or movies added to the database? 
SELECT MAX(date(date_added))
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info";

-- List all of the movies and tv shows in alphabetical order.
SELECT title
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
ORDER BY title;

--Who was the directore for the movie "Big Star?"
SELECT director
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" titles
LEFT JOIN "CharlotteChaze/BreakIntoTech"."netflix_people" people
ON titles.show_id = people.show_id 
WHERE titles.title='Big Star';

-- What is the oldest movie in the database and what year was it made?
SELECT title, release_year
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" 
WHERE type = 'Movie'
ORDER BY release_year asc
LIMIT 1; 
