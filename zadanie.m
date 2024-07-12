function zadanie 

N = input("Podaj liczbe elementow: ");
x = [0:2/N:2];


A = zeros(N+1);
b = zeros(N+1,1);


A(1,1) = 1;
b(1) = 1;


for i = 2:N
    A(i,i-1) = 1/N;
    A(i,i) = 1/N;
    b(i) = sin(x(i)) - sin(x(i-1));
end

A(N+1,N+1) = N/2-1;
A(N+1,N) = -N/2;
b(N+1) = 5;
    

u = A\b;

figure
plot(x,u,'o-')
xlabel('x');
ylabel('u(x)');
grid on

end