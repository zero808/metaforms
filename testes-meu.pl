%------------------------------
%
%             Testes
%
%------------------------------

%--------------------------------------
% a) Testes com as varias pistas

%desafio(1, TabuleiroFinal) :- 
desafio(1, Tabuleiro) :- 
	coloca(peca(triangulo, vermelho), top, right, Tabuleiro),
    tSimples(peca(circulo, azul), top, right, Tabuleiro),
	tLeft(peca(circulo, vermelho), center, right, Tabuleiro),
	trioRight(peca(triangulo, amarelo), center, left, Tabuleiro),
	cantoTopLeft(peca(quadrado, vermelho), top, right, Tabuleiro),
	cantoTopLeft(peca(circulo, amarelo), top, left, Tabuleiro),
	rectanguloHorizontal(peca(triangulo, azul), bottom, right, Tabuleiro),
	diagonalGrave(peca(quadrado, azul), bottom, right, Tabuleiro),
        %	diagonalAguda(peca(quadrado, amarelo), bottom, left, Tabuleiro),
        diagonalAguda(peca(quadrado, amarelo), bottom, left, Tabuleiro).
        %	check(Tabuleiro, TabuleiroFinal).

%--------------------------------------
% b) Teste com menos uma pista

%desafio(4, TabuleiroFinal) :- 
%	coloca(peca(triangulo, vermelho), top, right, Tabuleiro),
%    tSimples(peca(circulo, azul), top, right, Tabuleiro),
%	tLeft(peca(circulo, vermelho), center, right, Tabuleiro),
%	trioRight(peca(triangulo, amarelo), center, left, Tabuleiro),
%	cantoTopLeft(peca(quadrado, vermelho), top, right, Tabuleiro),
%	cantoTopLeft(peca(circulo, amarelo), top, left, Tabuleiro),
%	rectanguloHorizontal(peca(triangulo, azul), bottom, right, Tabuleiro),
%	diagonalAguda(peca(quadrado, amarelo), bottom, left, Tabuleiro),
%	diagonalAguda(peca(quadrado, amarelo), bottom, left, Tabuleiro).
%	check(Tabuleiro, TabuleiroFinal).

%--------------------------------------
% c) Teste com pistas parciais

%desafio(5, TabuleiroFinal) :- 
%	coloca(peca(triangulo, vermelho), top, right, Tabuleiro),
%    tSimples(peca(circulo, azul), top, right, Tabuleiro),
%	tLeft(peca(circulo, vermelho), center, right, Tabuleiro),
%	trioRight(peca(triangulo, _), center, left, Tabuleiro),
%	cantoTopLeft(peca(_, vermelho), top, right, Tabuleiro),
%	cantoTopLeft(peca(circulo, amarelo), top, left, Tabuleiro),
%	rectanguloHorizontal(peca(triangulo, azul), bottom, right, Tabuleiro),
%	diagonalGrave(peca(quadrado, azul), bottom, right, Tabuleiro),
%	diagonalAguda(peca(quadrado, amarelo), bottom, left, Tabuleiro).
%	diagonalAguda(peca(quadrado, amarelo), bottom, left, Tabuleiro),
	check(Tabuleiro, TabuleiroFinal).

%--------------------------------------
% d) Exemplos de testes simples para testar as pistas implementadas
% individualmente

desafio(2, Tabuleiros) :- findall(Tabuleiro, 
        trioLeft(peca(quadrado, azul), bottom, left, Tabuleiro), Tabuleiros).

desafio(3, Tabuleiros) :- findall(Tabuleiro, cantoBottomLeft(peca(circulo, vermelho),
  top, left, Tabuleiro), Tabuleiros).
  
