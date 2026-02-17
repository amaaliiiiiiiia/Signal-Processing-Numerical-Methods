function reduced_mat = preprocess(mat, min_reviews)
  # TODO: Remove all user rows from `mat` that have strictly less then `min_reviews` reviews.
  reviews = sum(mat ~= 0, 2); % calculez numarul de review-uri pentru fiecare client
  clients = find(reviews >= min_reviews); % creez un vector cu clientii care au cel putin min_reviews
  reduced_mat = mat(clients, :); % 
end
