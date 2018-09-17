% Script for easy copy pasta of data extraction from Tracker files
Lf1511 = dataimport;
Rf1511 = dataimport;
Lf1575 = dataimport;
Rf1575 = dataimport;
Lf1718 = dataimport;
Rf1718 = dataimport;
Lm1719 = dataimport;
Rm1719 = dataimport;
%%%
Lf1511 = StripData(Lf1511);
Rf1511 = StripData(Rf1511);
Lf1575 = StripData(Lf1575);
Rf1575 = StripData(Rf1575);
Lf1718 = StripData(Lf1718);
Rf1718 = StripData(Rf1718);
Lm1719 = StripData(Lm1719);
Rm1719 = StripData(Rm1719);
%%%
filt_Lf1511 = Normalise_Smooth(Lf1511); 
filt_Rf1511 = Normalise_Smooth(Rf1511);
filt_Lf1575 = Normalise_Smooth(Lf1575);
filt_Rf1575 = Normalise_Smooth(Rf1575);
filt_Lf1718 = Normalise_Smooth(Lf1718);
filt_Rf1718 = Normalise_Smooth(Rf1718);
filt_Lm1719 = Normalise_Smooth(Lm1719);
filt_Rm1719 = Normalise_Smooth(Rm1719);
%%%
filt_Lf1511 = ExtractMaxValues(filt_Lf1511);
filt_Rf1511 = ExtractMaxValues(filt_Rf1511);
filt_Lf1575 = ExtractMaxValues(filt_Lf1575);
filt_Rf1575 = ExtractMaxValues(filt_Rf1575);
filt_Lf1718 = ExtractMaxValues(filt_Lf1718);
filt_Rf1718 = ExtractMaxValues(filt_Rf1718);
filt_Lm1719 = ExtractMaxValues(filt_Lm1719);
filt_Rm1719 = ExtractMaxValues(filt_Rm1719);
%%%

%%%


%%%
figure
PlotAverageCurve2(filt_Lf1511)
hold on 
PlotAverageCurve2(filt_Lf1575)
PlotAverageCurve2(filt_Lf1718)
PlotAverageCurve2(filt_Lm1719)
%%%
figure
PlotAverageCurve2(filt_Rf1511)
hold on 
PlotAverageCurve2(filt_Rf1575)
PlotAverageCurve2(filt_Rf1718)
PlotAverageCurve2(filt_Rm1719)

%%%
figure
PlotAverageCurveVeloc(filt_Lf1511)
hold on 
PlotAverageCurveVeloc(filt_Lf1575)
PlotAverageCurveVeloc(filt_Lf1718)
PlotAverageCurveVeloc(filt_Lm1719)
%%%
figure
PlotAverageCurveVeloc(filt_Rf1511)
hold on 
PlotAverageCurveVeloc(filt_Rf1575)
PlotAverageCurveVeloc(filt_Rf1718)
PlotAverageCurveVeloc(filt_Rm1719)

%%%
figure
PlotAverageCurveAccel(filt_Lf1511)
hold on 
PlotAverageCurveAccel(filt_Lf1575)
PlotAverageCurveAccel(filt_Lf1718)
PlotAverageCurveAccel(filt_Lm1719)
%%%
figure
PlotAverageCurveAccel(filt_Rf1511)
hold on 
PlotAverageCurveAccel(filt_Rf1575)
PlotAverageCurveAccel(filt_Rf1718)
PlotAverageCurveAccel(filt_Rm1719)