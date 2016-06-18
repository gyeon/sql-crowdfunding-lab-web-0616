# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.


def selects_the_titles_of_all_projects_and_their_pledge_amounts
"SELECT projects.title, SUM(pledges.amount) FROM pledges INNER JOIN projects ON projects.id=pledges.project_id GROUP BY projects.title;"
## FROM - where are they talking to each other - where is the scotch tape
end

##select titles from projects. go through pledge amount, and find the one matching
##project_id, and join those values together.

def selects_the_user_name_age_and_pledge_amount_for_all_pledges
"SELECT users.name, users.age , SUM(pledges.amount) FROM pledges INNER JOIN users ON users.id = pledges.user_id GROUP by users.name;"
## go through all pledges, and find the pledge amount matching the user_id. return the
## pledge amount linked to user_id and their name and ages.
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT projects.title, (SUM(pledges.amount) - projects.funding_goal) FROM pledges 
INNER JOIN projects on projects.id=pledges.project_id GROUP BY projects.title HAVING SUM(pledges.amount) >= projects.funding_goal;"
## select the titles and amount that is over the funding goal of projects.
## find the funding goal, and find the difference from SUM(pledges.amount) from funding_goal
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount
"SELECT users.name, SUM(pledges.amount) FROM pledges INNER JOIN users 
ON users.id = pledges.user_id GROUP by users.name ORDER BY SUM(pledges.amount) ASC;"

end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT projects.category, (pledges.amount) FROM pledges INNER JOIN projects ON 
projects.id=pledges.project_id WHERE projects.category = 'music';"
## select the category names, and pledge amounts 
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category
"SELECT projects.category, SUM(pledges.amount) FROM pledges INNER JOIN projects ON 
projects.id=pledges.project_id WHERE projects.category = 'books';"
end
