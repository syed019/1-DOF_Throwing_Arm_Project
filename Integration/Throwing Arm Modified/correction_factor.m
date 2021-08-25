function [correction] = correction_factor(target)

if (target == 0.2)
    correction = 1.124;
elseif (target == 0.25)
    correction = 1.1;
elseif (target == 0.3)
    correction = 1.05;
elseif (target == 0.35)
    correction = 1.01;
elseif (target == 0.37)
    correction = 1.005;
elseif (target == 0.4)
    correction = 0.99;
elseif (target == 0.45)
    correction = 0.935;
elseif (target == 0.5)
    correction = 0.89;
elseif (target == 0.55)
    correction = 0.853;
elseif (target == 0.6)
    correction = 0.82;
elseif (target == 0.65)
    correction = 0.8;
elseif (target == 0.70)
    correction = 0.78;
elseif (target == 0.75)
    correction = 0.76;
elseif (target == 0.80)
    correction = 0.745;
elseif (target == 0.85)
    correction = 0.735;
elseif (target == 0.90)
    correction = 0.735;
elseif (target == 0.95)
    correction = 0.74;
elseif (target == 1.0)
    correction = 0.743;
elseif (target == 1.05)
    correction = 0.81;
elseif (target == 1.10)
    correction = 0.82;
elseif (target == 1.15)
    correction = 0.82;
elseif (target == 1.20)
    correction = 0.83;
elseif (target == 1.25)
    correction = 0.827;
elseif (target == 1.30)
    correction = 0.817;
elseif (target == 1.35)
    correction = 0.814;
elseif (target == 1.40)
    correction = 0.81;
elseif (target == 1.45)
    correction = 0.8062;
elseif (target == 1.50)
    correction = 0.8266;
elseif (target>= 0.2 && target < 0.4)
    correction = -5936.507942*target^5 + 8731.428580*target^4 - 5029.984132*target^3 + 1417.304763*target^2 - 195.977937*target + 11.796667;
elseif (target>= 0.4 && target < 0.75)
    correction = 888.888894*target^6 - 3138.461556*target^5 + 4565.299170*target^4 - 3502.671348*target^3 + 1496.677708*target^2 - 339.058044*target + 32.941084;
elseif (target>= 0.75 && target < 1)
    correction = 213.333333*target^5 - 973.333334*target^4 + 1765.333334*target^3 - 1590.166667*target^2 + 711.015334*target - 125.439000;
else
    correction = -409.725493*target^6 + 3179.402734*target^5 - 10236.375927*target^4 + 17504.957797*target^3 - 16771.738674*target^2 + 8537.750996*target - 1803.527994;
end
end

% if (target == 0.2)
%     correction = 1.124;
% elseif (target == 0.25)
%     correction = 1.1;
% elseif (target == 0.3)
%     correction = 1.05;
% elseif (target == 0.35)
%     correction = 1.01;
% elseif (target == 0.37)
%     correction = 1.005;
% elseif (target == 0.4)
%     correction = 0.99;
% elseif (target == 0.45)
%     correction = 0.935;
% elseif (target == 0.5)
%     correction = 0.89;
% elseif (target == 0.55)
%     correction = 0.853;
% elseif (target == 0.6)
%     correction = 0.82;
% elseif (target == 0.65)
%     correction = 0.8;
% elseif (target == 0.70)
%     correction = 0.78;
% elseif (target == 0.75)
%     correction = 0.76;
% elseif (target == 0.80)
%     correction = 0.745;
% elseif (target == 0.85)
%     correction = 0.735;
% elseif (target == 0.90)
%     correction = 0.735;
% elseif (target == 0.95)
%     correction = 0.74;
% elseif (target == 1.0)
%     correction = 0.743;
% elseif (target == 1.05)
%     correction = 0.81;
% elseif (target == 1.10)
%     correction = 0.82;
% elseif (target == 1.15)
%     correction = 0.82;
% elseif (target == 1.20)
%     correction = 0.83;
% elseif (target == 1.25)
%     correction = 0.827;
% elseif (target == 1.30)
%     correction = 0.817;
% elseif (target == 1.35)
%     correction = 0.814;
% elseif (target == 1.40)
%     correction = 0.81;
% elseif (target == 1.45)
%     correction = 0.8062;
% elseif (target == 1.50)
%     correction = 0.8266;