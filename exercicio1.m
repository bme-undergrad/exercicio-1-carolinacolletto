function t = exercicio1(func,x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%
t = zeros(imax,1);
t(1)=x0;

for x =1:length(t)-1
  if x ~=1
    erro(x)=abs((t(x)-t(x-1))/t(x))
    if erro(x)<es
      break
    endif
  endif
 t(x+1) = t(j) - (func(t(x))/func_d(t(x)));
  endfor
  t=t(x)
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
endfunction


