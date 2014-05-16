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

trioLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
trioLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, middle, Tabuleiro).

trioRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
trioRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, middle, Tabuleiro).

cobra(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
cobra(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, middle, Tabuleiro).

tSimples(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
tSimples(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, Coluna, Tabuleiro).

tLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
tLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, middle, Tabuleiro).

tRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
tRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, middle, Tabuleiro).

tInvertido(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
tInvertido(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, Coluna, Tabuleiro).

cantoTopLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
cantoTopLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, Coluna, Tabuleiro).
cantoTopLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, middle, Tabuleiro).
cantoTopLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, midlle, Tabuleiro).

cantoTopRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
cantoTopRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, Coluna, Tabuleiro).
cantoTopRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, middle, Tabuleiro).
cantoTopRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, midlle, Tabuleiro).

cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, Coluna, Tabuleiro).
cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, middle, Tabuleiro).
cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, midlle, Tabuleiro).

cantoBottomRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
cantoBottomRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, Coluna, Tabuleiro).
cantoBottomRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, middle, Tabuleiro).
cantoBottomRight(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, midlle, Tabuleiro).

diagonalGrave(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, Coluna, Tabuleiro).
diagonalGrave(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, Coluna, Tabuleiro).
diagonalGrave(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, Linha, middle, Tabuleiro).
diagonalGrave(Peca, Linha, Coluna, Tabuleiro) :-
    coloca(Peca, center, midlle, Tabuleiro).

%diagonalAguda(Peca, Linha, Coluna, Tabuleiro) :-
%    coloca(Peca, Linha, Coluna, Tabuleiro).
%diagonalAguda(Peca, Linha, Coluna, Tabuleiro) :-
%    coloca(Peca, center, Coluna, Tabuleiro).
%diagonalAguda(Peca, Linha, Coluna, Tabuleiro) :-
%    coloca(Peca, Linha, middle, Tabuleiro).
%diagonalAguda(Peca, Linha, Coluna, Tabuleiro) :-
%    coloca(Peca, center, midlle, Tabuleiro).

%Assim nao da warnings de singleton variable
diagonalAguda(Peca, Linha, Coluna, Tabuleiro) :-
    (coloca(Peca, Linha, Coluna, Tabuleiro);
    coloca(Peca, center, Coluna, Tabuleiro);
    coloca(Peca, Linha, middle, Tabuleiro);
    coloca(Peca, center, midlle, Tabuleiro)).
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

%check(TabuleiroIncompleto, TabuleiroCompleto)
