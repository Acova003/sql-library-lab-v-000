def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT title, year 
  FROM books
  WHERE series_id = 1
  ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT name, motto
  FROM characters 
  ORDER BY LENGTH(motto) DESC 
  LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name
  FROM subgenres
  LEFT OUTER JOIN series ON subgenres.id = series.id
  LEFT OUTER JOIN authors ON authors.id = series.author_id"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "SELECT series.title
  FROM series 
  LEFT OUTER JOIN characters ON characters.series_id = series.id 
  WHERE characters.species = 'human'
  GROUP BY series.title 
  ORDER BY COUNT(characters.species = 'human') DESC
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT characters.name, COUNT(character_books.book_id)
  FROM character_books
  LEFT OUTER JOIN characters ON character_books.character_id = characters.id 
  GROUP BY characters.name
  ORDER BY COUNT(character_books.book_id) DESC"
end
