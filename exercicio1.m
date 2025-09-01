function t = exercicio1(func,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t = zeros(imax,1);
t(1) = x0;
erro = zeros(imax,1);

for ii = 1:imax-1
  if ii ~= 1
    erro(ii) = (t(ii)-t(ii-1))/t(ii) * 100;   % erro relativo em %
    if erro(ii) < es
      break
    endif
  endif
  
  % derivada numérica simples
  f  = func(t(ii));
  f_d = (func(t(ii)+0.0001) - func(t(ii)))/0.0001;
  
  % fórmula do Newton-Raphson
  t(ii+1) = t(ii) - f/f_d;
endfor

t = t(ii);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
