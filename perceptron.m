clc;
%%»òÔËËãperceptron
dataSet=[0 0 -1; 0 1 -1; 1 0 -1; 1 1 -1];
data_Y = [0; 1; 1; 1];
eta = 0.01;
omega = [0; 0; 0];
N = 10;
for j = 1:N
    for i = 1:size(data_Y,1)
        temp_y = dataSet(i,:)*omega;
        %%sgn(½×Ô¾º¯Êı)
        if temp_y < 0
            y = 0;
        else
            y=1;
        end
        delta_omega = eta*(data_Y(i)- y)*dataSet(i,:)';

        omega = omega + delta_omega;
    end
    disp(omega);
end
figure(1);
x = 0:0.01:1;
y = (omega(3)-omega(1)*x)/omega(2);
plot(x,y);
grid on;

    



    
