function [pval,grotperms] = permtestcorr(Xin,Yin,Nperm,confounds)
% tests if the correlation between Xin and Yin is different from zero
% Diego Vidaurre, University of Oxford (2015)

N = length(Yin);
if (nargin>3)
    confounds = confounds - repmat(mean(confounds),N,1);
    [~,Xin,~,Yin] = nets_deconfound(Xin,Yin,confounds,'gaussian',[],[]);
end

Xin = Xin - mean(Xin); Xin = Xin / std(Xin);
Yin = Yin - mean(Yin); Yin = Yin / std(Yin);

[pval,~,grotperms] = permtestmean(Yin.*Xin,Nperm);

end