function J=ComputeCost(X,y,theta)

m=length(y);
h=X*theta;  %h means hypothesis
error=h-y;
error_sqr=error.^2;
J=(1/(2*m))*(sum(error_sqr)); %J represents cost function

end
