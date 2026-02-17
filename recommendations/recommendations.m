function recoms = recommendations(path, liked_theme, num_recoms, min_reviews, num_features)
    mat = read_mat(path); % citesc matricea
    mat = preprocess(mat, min_reviews); % o preprocesez
    
    [U, S, V] = svds(mat, num_features); % aplic SVD
    
    vector = V(liked_theme, :); % salvez intr-un vector liked_theme
    sim = zeros(1, size(V, 1));
    for i = 1:size(V, 1)
        if i ~= liked_theme % calculez cosine_similarity pentru fiecare liked_theme
            sim(i) = cosine_similarity(vector', V(i, :)');
        else
            sim(i) = -Inf;
        end
    end
    
    [~, ind] = sort(sim, 'descend'); % sortez temele in functie de similaritatea cu liked_themes
    recoms = ind(1:num_recoms); % returnez indicii acestora
end