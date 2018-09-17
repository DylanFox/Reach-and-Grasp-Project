%Create a summary stats table displaying the means for each tested
%parameter (Total time, MGA, Velocity and Acceleration) 



Animal_Subjects = {'F1511', 'F1575', 'F1718', 'M1719'};
%Total Time
Ltotaltime = [mean(Lf1511.totaltime), nansem(Lf1511.totaltime) ;mean(Lf1575.totaltime), nansem(Lf1575.totaltime);mean(Lf1718.totaltime), nansem(Lf1718.totaltime);mean(Lm1719.totaltime), nansem(Lm1719.totaltime)];
Rtotaltime = [mean(Rf1511.totaltime), nansem(Rf1511.totaltime);mean(Rf1575.totaltime), nansem(Rf1575.totaltime);mean(Rf1718.totaltime), nansem(Rf1718.totaltime);mean(Rm1719.totaltime), nansem(Rm1719.totaltime)];

%Maximum Grip Aperture (MGA)
LmMGA = [mean(Lf1511.mMGA), nansem(Lf1511.mMGA) ;mean(Lf1575.mMGA), nansem(Lf1575.mMGA);mean(Lf1718.mMGA), nansem(Lf1718.mMGA);mean(Lm1719.mMGA), nansem(Lm1719.mMGA)];
RmMGA = [mean(Rf1511.mMGA), nansem(Rf1511.mMGA);mean(Rf1575.mMGA), nansem(Rf1575.mMGA);mean(Rf1718.mMGA), nansem(Rf1718.mMGA);mean(Rm1719.mMGA), nansem(Rm1719.mMGA)];
LT2mMGA_ms = [mean(Lf1511.T2mMGA_ms), nansem(Lf1511.T2mMGA_ms);mean(Lf1575.T2mMGA_ms), nansem(Lf1575.T2mMGA_ms);mean(Lf1718.T2mMGA_ms), nansem(Lf1718.T2mMGA_ms);mean(Lm1719.T2mMGA_ms), nansem(Lm1719.T2mMGA_ms)];
RT2mMGA_ms = [mean(Rf1511.T2mMGA_ms), nansem(Rf1511.T2mMGA_ms);mean(Rf1575.T2mMGA_ms), nansem(Rf1575.T2mMGA_ms);mean(Rf1718.T2mMGA_ms), nansem(Rf1718.T2mMGA_ms);mean(Rm1719.T2mMGA_ms), nansem(Rm1719.T2mMGA_ms)];
LT2mMGA_pcnt = [mean(Lf1511.T2mMGA_pcnt), nansem(Lf1511.T2mMGA_pcnt);mean(Lf1575.T2mMGA_pcnt), nansem(Lf1575.T2mMGA_pcnt);mean(Lf1718.T2mMGA_pcnt), nansem(Lf1718.T2mMGA_pcnt);mean(Lm1719.T2mMGA_pcnt), nansem(Lm1719.T2mMGA_pcnt)];
RT2mMGA_pcnt = [mean(Rf1511.T2mMGA_pcnt), nansem(Rf1511.T2mMGA_pcnt);mean(Rf1575.T2mMGA_pcnt), nansem(Rf1575.T2mMGA_pcnt);mean(Rf1718.T2mMGA_pcnt), nansem(Rf1718.T2mMGA_pcnt);mean(Rm1719.T2mMGA_pcnt), nansem(Rm1719.T2mMGA_pcnt)];
LmMGA2end = [mean(Lf1511.mMGA2end), nansem(Lf1511.mMGA2end);mean(Lf1575.mMGA2end), nansem(Lf1575.mMGA2end);mean(Lf1718.mMGA2end), nansem(Lf1718.mMGA2end);mean(Lm1719.mMGA2end), nansem(Lm1719.mMGA2end)];
RmMGA2end = [mean(Rf1511.mMGA2end), nansem(Rf1511.mMGA2end);mean(Rf1575.mMGA2end), nansem(Rf1575.mMGA2end);mean(Rf1718.mMGA2end), nansem(Rf1718.mMGA2end);mean(Rm1719.mMGA2end), nansem(Rm1719.mMGA2end)];

%Velocity
LmVeloc = [mean(Lf1511.mVeloc), nansem(Lf1511.mVeloc) ;mean(Lf1575.mVeloc), nansem(Lf1575.mVeloc);mean(Lf1718.mVeloc), nansem(Lf1718.mVeloc);mean(Lm1719.mVeloc), nansem(Lm1719.mVeloc)];
RmVeloc = [mean(Rf1511.mVeloc), nansem(Rf1511.mVeloc);mean(Rf1575.mVeloc), nansem(Rf1575.mVeloc);mean(Rf1718.mVeloc), nansem(Rf1718.mVeloc);mean(Rm1719.mVeloc), nansem(Rm1719.mVeloc)];
LT2mVeloc_ms = [mean(Lf1511.T2mVeloc_ms), nansem(Lf1511.T2mVeloc_ms) ;mean(Lf1575.T2mVeloc_ms), nansem(Lf1575.T2mVeloc_ms);mean(Lf1718.T2mVeloc_ms), nansem(Lf1718.T2mVeloc_ms);mean(Lm1719.T2mVeloc_ms), nansem(Lm1719.T2mVeloc_ms)];
RT2mVeloc_ms = [mean(Rf1511.T2mVeloc_ms), nansem(Rf1511.T2mVeloc_ms);mean(Rf1575.T2mVeloc_ms), nansem(Rf1575.T2mVeloc_ms);mean(Rf1718.T2mVeloc_ms), nansem(Rf1718.T2mVeloc_ms);mean(Rm1719.T2mVeloc_ms), nansem(Rm1719.T2mVeloc_ms)];
LmVeloc2end = [mean(Lf1511.mVeloc2end), nansem(Lf1511.mVeloc2end) ;mean(Lf1575.mVeloc2end), nansem(Lf1575.mVeloc2end);mean(Lf1718.mVeloc2end), nansem(Lf1718.mVeloc2end);mean(Lm1719.mVeloc2end), nansem(Lm1719.mVeloc2end)];
RmVeloc2end = [mean(Rf1511.mVeloc2end), nansem(Rf1511.mVeloc2end);mean(Rf1575.mVeloc2end), nansem(Rf1575.mVeloc2end);mean(Rf1718.mVeloc2end), nansem(Rf1718.mVeloc2end);mean(Rm1719.mVeloc2end), nansem(Rm1719.mVeloc2end)];


%Acceleration
LmAccel = [mean(Lf1511.mAccel), nansem(Lf1511.mAccel) ;mean(Lf1575.mAccel), nansem(Lf1575.mAccel);mean(Lf1718.mAccel), nansem(Lf1718.mAccel);mean(Lm1719.mAccel), nansem(Lm1719.mAccel)];
RmAccel = [mean(Rf1511.mAccel), nansem(Rf1511.mAccel);mean(Rf1575.mAccel), nansem(Rf1575.mAccel);mean(Rf1718.mAccel), nansem(Rf1718.mAccel);mean(Rm1719.mAccel), nansem(Rm1719.mAccel)];
LT2mAccel_ms = [mean(Lf1511.T2mAccel_ms), nansem(Lf1511.T2mAccel_ms) ;mean(Lf1575.T2mAccel_ms), nansem(Lf1575.T2mAccel_ms);mean(Lf1718.T2mAccel_ms), nansem(Lf1718.T2mAccel_ms);mean(Lm1719.T2mAccel_ms), nansem(Lm1719.T2mAccel_ms)];
RT2mAccel_ms = [mean(Rf1511.T2mAccel_ms), nansem(Rf1511.T2mAccel_ms);mean(Rf1575.T2mAccel_ms), nansem(Rf1575.T2mAccel_ms);mean(Rf1718.T2mAccel_ms), nansem(Rf1718.T2mAccel_ms);mean(Rm1719.T2mAccel_ms), nansem(Rm1719.T2mAccel_ms)];
LmAccel2end = [mean(Lf1511.mAccel2end), nansem(Lf1511.mAccel2end) ;mean(Lf1575.mAccel2end), nansem(Lf1575.mAccel2end);mean(Lf1718.mAccel2end), nansem(Lf1718.mAccel2end);mean(Lm1719.mAccel2end), nansem(Lm1719.mAccel2end)];
RmAccel2end = [mean(Rf1511.mAccel2end), nansem(Rf1511.mAccel2end);mean(Rf1575.mAccel2end), nansem(Rf1575.mAccel2end);mean(Rf1718.mAccel2end), nansem(Rf1718.mAccel2end);mean(Rm1719.mAccel2end), nansem(Rm1719.mAccel2end)];


%Create the Table
Summ_Stats_Indiv = table(Ltotaltime,Rtotaltime,LmMGA,RmMGA,LT2mMGA_ms,RT2mMGA_ms,LT2mMGA_pcnt,RT2mMGA_pcnt,LmMGA2end,RmMGA2end,LmVeloc,RmVeloc,LT2mVeloc_ms,RT2mVeloc_ms,LmVeloc2end,RmVeloc2end,LmAccel,RmAccel,LT2mAccel_ms,RT2mAccel_ms,LmAccel2end,RmAccel2end,'RowNames',Animal_Subjects);


