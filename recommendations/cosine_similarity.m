function similarity = cosine_similarity(A, B)
  # TODO: Compute the cosine similarity between two column vectors.
  normA = norm(A); % norma lui A
  normB = norm(B); % norma lui B
  dotproduct = A' * B;
  similarity = dotproduct / (normA * normB); % aplic formula din enunt
end
