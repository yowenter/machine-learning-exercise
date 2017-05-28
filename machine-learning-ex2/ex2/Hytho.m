function H = Hytho(theta,X)
    H = zeros(size(X,1),1)
    for i=1:size(X,1)
        H(i) = 1/(1+ exp(-X(i,:)*theta) );
    end
end