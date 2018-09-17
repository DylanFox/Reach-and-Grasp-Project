Cohorts = {'Control', 'PIm Lesion'};
%Total Time
Ltotaltime = [mean(Lcontrol.totaltime), nansem(Lcontrol.totaltime) ;mean(Llesion.totaltime), nansem(Llesion.totaltime)];
Rtotaltime = [mean(Rcontrol.totaltime), nansem(Rcontrol.totaltime);mean(Rlesion.totaltime), nansem(Rlesion.totaltime)];%;mean(Rf1718.totaltime), nansem(Rf1718.totaltime);mean(Rm1719.totaltime), nansem(Rm1719.totaltime)];

%Maximum Grip Aperture (MGA)
LmMGA = [mean(Lcontrol.mMGA), nansem(Lcontrol.mMGA) ;mean(Llesion.mMGA), nansem(Llesion.mMGA)];%;mean(Lf1718.mMGA), nansem(Lf1718.mMGA);mean(Lm1719.mMGA), nansem(Lm1719.mMGA)];
RmMGA = [mean(Rcontrol.mMGA), nansem(Rcontrol.mMGA);mean(Rlesion.mMGA), nansem(Rlesion.mMGA)]; %;mean(Rf1718.mMGA), nansem(Rf1718.mMGA);mean(Rm1719.mMGA), nansem(Rm1719.mMGA)];
LT2mMGA_ms = [mean(Lcontrol.T2mMGA_ms), nansem(Lcontrol.T2mMGA_ms);mean(Llesion.T2mMGA_ms), nansem(Llesion.T2mMGA_ms)]; %;mean(Lf1718.T2mMGA_ms), nansem(Lf1718.T2mMGA_ms);mean(Lm1719.T2mMGA_ms), nansem(Lm1719.T2mMGA_ms)];
RT2mMGA_ms = [mean(Rcontrol.T2mMGA_ms), nansem(Rcontrol.T2mMGA_ms);mean(Rlesion.T2mMGA_ms), nansem(Rlesion.T2mMGA_ms)]; %;mean(Rf1718.T2mMGA_ms), nansem(Rf1718.T2mMGA_ms);mean(Rm1719.T2mMGA_ms), nansem(Rm1719.T2mMGA_ms)];
LT2mMGA_pcnt = [mean(Lcontrol.T2mMGA_pcnt), nansem(Lcontrol.T2mMGA_pcnt);mean(Llesion.T2mMGA_pcnt), nansem(Llesion.T2mMGA_pcnt)];
RT2mMGA_pcnt = [mean(Rcontrol.T2mMGA_pcnt), nansem(Rcontrol.T2mMGA_pcnt);mean(Rlesion.T2mMGA_pcnt), nansem(Rlesion.T2mMGA_pcnt)];
LmMGA2end = [mean(Lcontrol.mMGA2end), nansem(Lcontrol.mMGA2end);mean(Llesion.mMGA2end), nansem(Llesion.mMGA2end)]; %;mean(Lf1718.mMGA2end), nansem(Lf1718.mMGA2end);mean(Lm1719.mMGA2end), nansem(Lm1719.mMGA2end)];
RmMGA2end = [mean(Rcontrol.mMGA2end), nansem(Rcontrol.mMGA2end);mean(Rlesion.mMGA2end), nansem(Rlesion.mMGA2end)]; %;mean(Rf1718.mMGA2end), nansem(Rf1718.mMGA2end);mean(Rm1719.mMGA2end), nansem(Rm1719.mMGA2end)];

%Velocity
LmVeloc = [mean(Lcontrol.mVeloc), nansem(Lcontrol.mVeloc) ;mean(Llesion.mVeloc), nansem(Llesion.mVeloc)]; %;mean(Lf1718.mVeloc), nansem(Lf1718.mVeloc);mean(Lm1719.mVeloc), nansem(Lm1719.mVeloc)];
RmVeloc = [mean(Rcontrol.mVeloc), nansem(Rcontrol.mVeloc);mean(Rlesion.mVeloc), nansem(Rlesion.mVeloc)]; %;mean(Rf1718.mVeloc), nansem(Rf1718.mVeloc);mean(Rm1719.mVeloc), nansem(Rm1719.mVeloc)];
LT2mVeloc_ms = [mean(Lcontrol.T2mVeloc_ms), nansem(Lcontrol.T2mVeloc_ms) ;mean(Llesion.T2mVeloc_ms), nansem(Llesion.T2mVeloc_ms)]; %;mean(Lf1718.T2mVeloc_ms), nansem(Lf1718.T2mVeloc_ms);mean(Lm1719.T2mVeloc_ms), nansem(Lm1719.T2mVeloc_ms)];
RT2mVeloc_ms = [mean(Rcontrol.T2mVeloc_ms), nansem(Rcontrol.T2mVeloc_ms);mean(Rlesion.T2mVeloc_ms), nansem(Rlesion.T2mVeloc_ms)]; %;mean(Rf1718.T2mVeloc_ms), nansem(Rf1718.T2mVeloc_ms);mean(Rm1719.T2mVeloc_ms), nansem(Rm1719.T2mVeloc_ms)];
LmVeloc2end = [mean(Lcontrol.mVeloc2end), nansem(Lcontrol.mVeloc2end) ;mean(Llesion.mVeloc2end), nansem(Llesion.mVeloc2end)]; %;mean(Lf1718.mVeloc2end), nansem(Lf1718.mVeloc2end);mean(Lm1719.mVeloc2end), nansem(Lm1719.mVeloc2end)];
RmVeloc2end = [mean(Rcontrol.mVeloc2end), nansem(Rcontrol.mVeloc2end);mean(Rlesion.mVeloc2end), nansem(Rlesion.mVeloc2end)]; %;mean(Rf1718.mVeloc2end), nansem(Rf1718.mVeloc2end);mean(Rm1719.mVeloc2end), nansem(Rm1719.mVeloc2end)];


%Acceleration
LmAccel = [mean(Lcontrol.mAccel), nansem(Lcontrol.mAccel) ;mean(Llesion.mAccel), nansem(Llesion.mAccel)]; %;mean(Lf1718.mAccel), nansem(Lf1718.mAccel);mean(Lm1719.mAccel), nansem(Lm1719.mAccel)];
RmAccel = [mean(Rcontrol.mAccel), nansem(Rcontrol.mAccel);mean(Rlesion.mAccel), nansem(Rlesion.mAccel)]; %;mean(Rlesion.mAccel), nansem(Rf1718.mAccel);mean(Rm1719.mAccel), nansem(Rm1719.mAccel)];
LT2mAccel_ms = [mean(Lcontrol.T2mAccel_ms), nansem(Lcontrol.T2mAccel_ms) ;mean(Llesion.T2mAccel_ms), nansem(Llesion.T2mAccel_ms)]; %;mean(Lf1718.T2mAccel_ms), nansem(Lf1718.T2mAccel_ms);mean(Lm1719.T2mAccel_ms), nansem(Lm1719.T2mAccel_ms)];
RT2mAccel_ms = [mean(Rcontrol.T2mAccel_ms), nansem(Rcontrol.T2mAccel_ms);mean(Rlesion.T2mAccel_ms), nansem(Rlesion.T2mAccel_ms)]; %;mean(Rf1718.T2mAccel_ms), nansem(Rf1718.T2mAccel_ms);mean(Rm1719.T2mAccel_ms), nansem(Rm1719.T2mAccel_ms)];
LmAccel2end = [mean(Lcontrol.mAccel2end), nansem(Lcontrol.mAccel2end) ;mean(Llesion.mAccel2end), nansem(Llesion.mAccel2end)]; %;mean(Lf1718.mAccel2end), nansem(Lf1718.mAccel2end);mean(Lm1719.mAccel2end), nansem(Lm1719.mAccel2end)];
RmAccel2end = [mean(Rcontrol.mAccel2end), nansem(Rcontrol.mAccel2end);mean(Rlesion.mAccel2end), nansem(Rlesion.mAccel2end)]; %;mean(Rf1718.mAccel2end), nansem(Rf1718.mAccel2end);mean(Rm1719.mAccel2end), nansem(Rm1719.mAccel2end)];


%Create the Table
Sum_Stats_Grouped = table(Ltotaltime,Rtotaltime,LmMGA,RmMGA,LT2mMGA_ms,RT2mMGA_ms,LT2mMGA_pcnt,RT2mMGA_pcnt, LmMGA2end,RmMGA2end,LmVeloc,RmVeloc,LT2mVeloc_ms,RT2mVeloc_ms,LmVeloc2end,RmVeloc2end,LmAccel,RmAccel,LT2mAccel_ms,RT2mAccel_ms,LmAccel2end,RmAccel2end,'RowNames',Cohorts);


