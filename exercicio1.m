function t = exercicio1(func,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

x = zeros(imax,1);
x(1) = x0;
erro = zeros(length(x),1);

for ii = 1:length(x)-1
  x(ii+1) = x(ii) - func(x(ii)) / fp(x(ii));
  
  if ii ~= 1
    erro(ii) = abs((x(ii+1) - x(ii)) / x(ii+1));
    if erro(ii) < es/100   
      break
    endif
  endif
endfor

t = x(ii+1);

endfunction


