clc
clear all
run('Assembly_Throwing_Arm_DataFile.m')

%% Parameters

contact_stiffness = 2000;
contact_damping = 10;

%------------------- Mechanical -------------------%
arm_len = 0.106;
launch_ang = 45*(pi/180);
th_start = 0;
r_ball = 31.5/1000;
g = -9.80665;

%------------------- Electrical -------------------%
R = 0.194;
L = 0.097*1e-3;
K_m = 1/24.48;
V_max = 24;
neta = 0.70;
n = 6.5;
f_s = 4000;

% Motor Parameters

NL_speed = 589;
R_speed = 469;
R_power = 24*15.7;
NL_current = 0.98;


%% Target Initialization
x1 = 0.23; t1 = 0.6;
x2 = 0.69; t2 = 1.0;
x3 = 1.37; t3 = 1.2;
target_given = [x1, x2, x3];
target_hit = zeros(1,3);

bool = 1;
count = 1;
p_bool = 1;
p_count = 1;
Power = [];

%% Target 1
target = target_given(1,1);
sim('Assembly_Throwing_Arm',t1);

x=ans.Distance;
y=ans.Height;
p=ans.Power;
t_fin=ans.T_fin;
time=ans.time;
    
while (bool)
    if (y(count,1) <= 0.0315)
        target_hit(1,1) = x(count,1);
        bool = 0;
    end
    count=count+1;
end

while(p_bool)
    Power(p_count,1) = p(p_count,1);
    if (  time(p_count,1) > t_fin(p_count,1))
        p_bool = 0;
    end
    p_count=p_count+1;
end

x1_power = mean(Power(1:p_count-50,1))

figure(1)
plot(time(1:p_count-50,1),Power(1:p_count-50,1))
title('Power (W) vs. Time (s)')
legend('Power (W)', 'Time (s)')
xlabel ('Time (s)')
ylabel ('Power (W)')

bool = 1;
count = 1;
p_bool = 1;
p_count = 1;
Power = [];

%% Target 2
target = target_given(1,2);
sim('Assembly_Throwing_Arm',t2);

x=ans.Distance;
y=ans.Height;
p=ans.Power;
t_fin=ans.T_fin;
time=ans.time;

while (bool)
    if (y(count,1) <= 0.0315)
        target_hit(1,2) = x(count,1);
        bool = 0;
    end
    count=count+1;
end

while(p_bool)
    Power(p_count,1) = p(p_count,1);
    if (  time(p_count,1) > t_fin(p_count,1))
        p_bool = 0;
    end
    p_count=p_count+1;
end

x2_power = mean(Power(1:p_count-50,1))

figure(2)
plot(time(1:p_count-50,1),Power(1:p_count-50,1))
title('Power (W) vs. Time (s)')
legend('Power (W)', 'Time (s)')
xlabel ('Time (s)')
ylabel ('Power (W)')

bool = 1;
count = 1;
p_bool = 1;
p_count = 1;
Power = [];

%% Target 3
target = target_given(1,3);
sim('Assembly_Throwing_Arm',t3);
%         pause(pause_time);

x=ans.Distance;
y=ans.Height;
p=ans.Power;
t_fin=ans.T_fin;
time=ans.time;

while (bool)
    if (y(count,1) <= 0.0315)
        target_hit(1,3) = x(count,1);
        bool = 0;
    end
    count=count+1;
end

while(p_bool)
    Power(p_count,1) = p(p_count,1);
    if (  time(p_count,1) > t_fin(p_count,1))
        p_bool = 0;
    end
    p_count=p_count+1;
end

x3_power = mean(Power(1:p_count-50,1))

figure(3)
plot(time(1:p_count-50,1),Power(1:p_count-50,1))
title('Power (W) vs. Time (s)')
legend('Power (W)', 'Time (s)')
xlabel ('Time (s)')
ylabel ('Power (W)')


%% Output
target_given
target_hit
target_error = abs(target_hit-target_given)*100
Total_time = t1+t2+t_fin(1,1)

% %% Max Distance and Height
% x=out.Distance;
% y=out.Height;
% p=out.Power;
% t_fin=out.T_fin;
% time=out.time;
% 
% bool = 1;
% count = 1;
% p_bool = 1;
% p_count = 1;
% Power = [];
% 
% while (bool)
%     if (y(count,1) <= 0.0315)
%         Max_Distance = x(count,1);
%         %Max_Height = max(y)
%         bool = 0;
%     end
%     count=count+1;
% end
% 
% while(p_bool)
%     Power(p_count,1) = p(p_count,1);
%     if (  time(p_count,1) > t_fin(p_count,1))
%         p_bool = 0;
%     end
%     p_count=p_count+1;
% end
% 
% x1_power = mean(Power(1:p_count-50,1))
% 
% figure(1)
% plot(time(1:p_count-50,1),Power(1:p_count-50,1))
% title('Power (W) vs. Time (s)')
% legend('Power (W)', 'Time (s)')
% xlabel ('Time (s)')
% ylabel ('Power (W)')
