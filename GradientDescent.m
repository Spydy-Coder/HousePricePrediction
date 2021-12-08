function theta=GradientDescent(X,y,theta,alpha,iterations)

m=length(y);
for i=1:iterations

	h=X*theta;
	error=h-y;
	theta_change=(1/m)*alpha*((X')*error);
	theta=theta-theta_change;

end

end