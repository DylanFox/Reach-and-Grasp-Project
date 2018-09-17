

%%%Permutation testing
nperm = 10000; N = 340;
R = zeros(nperm,1);
perm = 1:N;
for j=1:nperm
    if j>1, perm = randperm(N);
        [~,~,res] = regress(Y(perm),[ones(N,1) X]);
        R(j) = res' * res;
    end
end
pvalue = sum(R(1)>=R) / (nperm+1) ;

%%%Bootstrapping

nboot = 10000; N = 340;
pvalues = zeros(nboot,1);
for j=1:nboot
    boot = randi(N,N,1);
    [~,~,~,~,s] = regress(Y(perm),[ones(N,1) X]);
    pvalues(j) = s(3);
end
hist(pvalues,100)