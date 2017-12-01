function area = getTriangleArea(vertices)
    term1 = vertices(2)*vertices(6);
    term2 = vertices(3)*vertices(5);
    term3 = vertices(1)*vertices(6);
    term4 = vertices(3)*vertices(4);
    term5 = vertices(1)*vertices(5);
    term6 = vertices(2)*vertices(4);
    area = 0.5*abs(term1-term2-term3+term4+term5-term6);
end