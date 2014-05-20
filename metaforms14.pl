%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%       GRUPO NUM: 143
%       ALUNOS:
%           Duarte Barreira nº 64752
%           Nelson Duarte   nº 67045
%           Pedro Baptista  nº 67056
%
%               ATENCAO: NAO USAR ACENTOS OU CEDILHAS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ESCREVER AQUI O CODIGO DO PROJECTO DE LP 2013/2014


%---------------------------------------------------------------------
%
%                            Pistas Intermedias
%
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% A implementacao dos predicados seguintes e feita recorrendo ao predicado
% coloca. Apenas ha que ter em conta a informacao sobre a linha ou
% a coluna em causa (ou ambas) e acrescentar os casos implicitos. Por exemplo,
% no caso seguinte, do trioLeft, ha ainda que considerar o caso do middle
%---------------------------------------------------------------------

%Assim nao da warnings de singleton variable
trioLeft(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, Linha, middle, Tabuleiro)).

trioRight(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, Linha, middle, Tabuleiro)).

cobra(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, Linha, middle, Tabuleiro)).

tSimples(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, center, Coluna, Tabuleiro)).

tLeft(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, Linha, middle, Tabuleiro)).

tRight(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, Linha, middle, Tabuleiro)).

tInvertido(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, center, Coluna, Tabuleiro)).

cantoTopLeft(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, center, Coluna, Tabuleiro);
     coloca(Peca, Linha, middle, Tabuleiro);
     coloca(Peca, center, midlle, Tabuleiro)).

cantoTopRight(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, center, Coluna, Tabuleiro);
     coloca(Peca, Linha, middle, Tabuleiro);
     coloca(Peca, center, midlle, Tabuleiro)).

cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, center, Coluna, Tabuleiro);
     coloca(Peca, Linha, middle, Tabuleiro);
     coloca(Peca, center, midlle, Tabuleiro)).

cantoBottomRight(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, center, Coluna, Tabuleiro);
     coloca(Peca, Linha, middle, Tabuleiro);
     coloca(Peca, center, midlle, Tabuleiro)).

diagonalGrave(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
     coloca(Peca, center, Coluna, Tabuleiro);
     coloca(Peca, Linha, middle, Tabuleiro);
     coloca(Peca, center, midlle, Tabuleiro)).

diagonalAguda(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
    coloca(Peca, center, Coluna, Tabuleiro);
    coloca(Peca, Linha, middle, Tabuleiro);
    coloca(Peca, center, midlle, Tabuleiro)).
%
%---------------------------------------------------------------------
%
%                         Predicado check
%
%---------------------------------------------------------------------

%---------------------------------------------------------------------
%
% Este predicado recebe um tabuleiro eventualmente incompleto e devolve
% o tabuleiro, mas com as pecas em falta.
%
%---------------------------------------------------------------------
check(TabuleiroIncompleto, TabuleiroCompleto) :-
    encontraSol(TabuleiroIncompleto, TabuleiroCompleto, _).

% Dado um tabuleiro com todas as pecas queremos encontrar as permutacoes das pecas
% que podemos ter.
% Depois so temos que eliminar as posicoes que nao nos interessam dadas as pistas que recebemos
% Uma vez que no ficheiro resultados.txt apenas aparecia uma possivel solucao e o predicado
% findall/3 devolve uma lista de possiveis resultados, nos extraimos o primeiro elemento
% usando o predicado primeiro/2.
encontraSol(TI, TC, Tabuleiro) :-
    coloca(peca(triangulo, vermelho), top, left, Tabuleiro),
    coloca(peca(triangulo, azul), top, middle, Tabuleiro),
    coloca(peca(triangulo, amarelo), top, right, Tabuleiro),
    coloca(peca(quadrado, vermelho), center, left, Tabuleiro),
    coloca(peca(quadrado, azul), center, middle, Tabuleiro),
    coloca(peca(quadrado, amarelo), center, right, Tabuleiro),
    coloca(peca(circulo, vermelho), bottom, left, Tabuleiro),
    coloca(peca(circulo, azul), bottom, middle, Tabuleiro),
    coloca(peca(circulo, amarelo), bottom, right, Tabuleiro),
    findall(TI, perm(Tabuleiro, TI), TX),
    primeiro(TX, TC).

% A lista L pode ser permutada numa lista que comeca com H e acaba com T se
%  - L pode ser particionada em duas listas, V e [ H | U] (isto e, H e uma parte de L).
%  - As listas V e U (A lista L toda excepto H) podem ser colocadas no fim da lista W.
%  - T e uma permutacao de w.
perm([], []).
perm(L, [H | T]) :-
    junta(V, [H|U], L),
    junta(V, U, W), perm(W, T).


% A expressao junta(X, Y, Z) afirma que a lista Z e o resultado de juntar
% a lista X com a lista Y.
% Pagina 312 do Livro de LP.
junta([], L, L).
junta([P | R], L1, [P | L2]) :- junta(R, L1, L2).

%devolve o primeiro elemento da lista
primeiro([], []).
primeiro([X], X).
