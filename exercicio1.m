function t = exercicio1(func,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

x = zeros(imax,1);    %% vetor para as aproximações
x(1) = x0;            %% chute inicial
erro = zeros(imax,1); %% vetor para erros

for ii = 1:imax-1
  if ii ~= 1
    erro(ii) = abs((x(ii)-x(ii-1))/x(ii)) * 100;  %% erro relativo em %
    if erro(ii) < es
      break
    endif
  endif
  x(ii+1) = x(ii) - f(x(ii))/fp(x(ii));   %% Newton-Raphson
endfor

t = x(ii);   %% última aproximação

endfunction

