%First we will load the data

data=load("data1.txt");
X=data(:,1);
y=data(:,2);
m=length(y); %number of training examples

%Let's visualise the data

plot(X,y,"r.");
xlabel("people live");
ylabel("price");

fprintf("program paused.Press enter to continue.\n");
pause;

%COST FUNCTION

X=[ones(m,1),data(:,1)]; %Add a column of ones to x
theta=zeros(size(X,2),1);  %initialising the theta matrix to 0
iterations=1500;
alpha=0.01;

%Checking our Cost Function

J=ComputeCost(X,y,[-1;2]);
fprintf("with theta=[-1;2]\nCostComputed=%f\n",J);
fprintf("Expected Cost value(Approx)=54.24\n");
fprintf("Program paused.press Enter to continue\n");
pause;

%GRADIENT DESCENT

theta=GradientDescent(X,y,theta,alpha,iterations);
fprintf("Theta found by gradient descent:\n");
printf("%f\n",theta);
fprintf("Expected theta values(approx)\n");
fprintf("-3.6303\n 1.1664\n\n");

%plot the linear fit
hold on;
plot(X(:,2),X*theta,'-');

% Predict values for population sizes of 35,000 and 70,000
predict1 = [1, 3.5] *theta;
fprintf('For population = 35,000, we predict a profit of %f\n',...
    predict1*10000);
predict2 = [1, 7] * theta;
fprintf('For population = 70,000, we predict a profit of %f\n',...
    predict2*10000);

