f='sin(exp(1).^x)';
x=linspace(-3,3,100);
plot(x,eval(f),x,0*x,':'); grid on;
xlabel('x'); ylabel('y');
z=ginput(1);
[zr, fr]=fzero(f,z(1));
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;
%%
f='sin(x.*(1-x))';
x=linspace(0,2*pi,100);
plot(x,eval(f),x,0*x,':'); grid on;
xlabel('x'); ylabel('y');
z=ginput(1);
[zr, fr]=fzero(f,z(1));
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;
%%
f='x.*sin(x)-cos(x)';
x=linspace(0,4*pi,100);
plot(x,eval(f),x,0*x,':'); grid on;
xlabel('x'); ylabel('y');
z=ginput(1);
[zr, fr]=fzero(f,z(1));
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;
%% 
f='sin(x).^2+(1/2-1./x).*cos(x)-1/2';
x=linspace(pi/2,3*pi,100);
plot(x,eval(f),x,0*x,':'); grid on;
xlabel('x'); ylabel('y');
z=ginput(1);
[zr, fr]=fzero(f,z(1));
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;
%%
f='(5*exp(1).^(-x/10)).*sin(x)-x/10';
x=linspace(-2*pi,6*pi,100);
plot(x,eval(f),x,0*x,':'); grid on;
xlabel('x'); ylabel('y');
z=ginput(1);
[zr, fr]=fzero(f,z(1));
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;
%%
f='x.^2+1';
x=linspace(-3,3,100);
plot(x,eval(f),x,0*x,':'); grid on;
xlabel('x'); ylabel('y');
z=ginput(1);
[zr, fr]=fzero(f,z(1));
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;
%%
syms x
eqn = x.^2+1 == 0;
solx = solve(eqn, x);
%%
f='cos(x)-exp(1).^(1/1000+x.^2)';
x=linspace(-3,3,100);
plot(x,eval(f),x,0*x,':'); grid on;
xlabel('x'); ylabel('y');
z=ginput(1);
[zr, fr]=fzero(f,z(1));
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;
%%
syms x
eqn = cos(x)-exp(1).^(1/1000+x.^2) == 0;
solx = solve(eqn, x);
%%
x=linspace(0,14,100);
h=0.001;iter=8;eps=0.001;
f=@(x) sin(x)./x;
y=f(x);
plot(x,f(x),x,0*x,':');grid on;
xlabel('x');ylabel('y');
hold on;
y_min=min(y); y_max=max(y);
if y_min<0 y_min=1.1*y_min; else y_min=0.9*y.min; end;
if y_max>0 y_max=1.1*y_max; else y_max=0.9*y_max; end;
z=ginput(1);
x1=z(1);
for i=1:iter
    yh=(f(x1+h)-f(x1))/h;
    x2=x1-f(x1)/yh;
    P=plot(x,f(x1)+yh*(x-x1),':',x1,f(x1),'*',x2,0,'*',x2,f(x2),'o');
    L=line([x2,x2],[0,f(x2)]);
    set(L,'LineStyle',':');
    x1=x2;
    if abs(f(x2))<eps break;
    end
pause
delete(P,L);
end
hold off
'End Iteration';
%%
x=linspace(0,7,100);
h=0.001;iter=8;eps=0.001;
f=@(x) 1+(1+sin(x)-cos(x)).^2-(sin(2*x)-cos(2*x)-2/10).^2;
y=f(x);
plot(x,f(x),x,0*x,':');grid on;
xlabel('x');ylabel('y');
hold on;
y_min=min(y); y_max=max(y);
if y_min<0 y_min=1.1*y_min; else y_min=0.9*y.min; end;
if y_max>0 y_max=1.1*y_max; else y_max=0.9*y_max; end;
z=ginput(1);
x1=z(1);
for i=1:iter
    yh=(f(x1+h)-f(x1))/h;
    x2=x1-f(x1)/yh;
    P=plot(x,f(x1)+yh*(x-x1),':',x1,f(x1),'*',x2,0,'*',x2,f(x2),'o');
    L=line([x2,x2],[0,f(x2)]);
    set(L,'LineStyle',':');
    x1=x2;
    if abs(f(x2))<eps break;
    end
pause
delete(P,L);
end
hold off
'End Iteration';



