eps = 1.0;
while 1.0 ~= 1.0 + eps
    disp(num2str(eps));
    eps = eps / 2.0;
end
disp(['final eps:', num2str(eps)]);
