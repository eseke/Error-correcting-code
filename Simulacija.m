%NAPOMENA
%OVO JE GLAVNI PROGRAM SIMULACIJE
%NE POKRECE SE CEO, VEC SAMO DELOVI KOJI SU POTREBNI U TRENUTNOJ ITERACIJI
%SIMULACIJE

%% inicijalizacija
close all
clear all
clc
NSim = 10000;

%% verovatnoca izvora: 0.5/0.5
A = genNiz(NSim,0.5);
disp('verovatnoca izvora: 0.5/0.5')

%% verovatnoca izvora: 0.8/0.2
A = genNiz(NSim,0.5);
disp('verovatnoca izvora: 0.8/0.2')

%% repeticiono kodiranje sa n = 3
B = Repeticiono(A,3);
PrNSim = 3 * NSim;
disp('repeticiono kodiranje sa n = 3')

%% repeticiono kodiranje sa n = 5
B = Repeticiono(A,5);
PrNSim = 5 * NSim;
disp('repeticiono kodiranje sa n = 5')

%% repeticiono kodiranje sa n = 7
B = Repeticiono(A,7);
PrNSim = 7 * NSim;
disp('repeticiono kodiranje sa n = 7')

%% Hamming(8,4) sa bitom parnosti
B = Hamming84(A);
PrNSim = 2 * NSim;
disp('Hamming(8,4) sa bitom parnosti')

%% Hamming(14,10)
B = Hamming1410(A);
PrNSim = 14 * NSim / 10;
disp('Hamming(14,10)')

%% interliving sa i = 7
C = Interliving(7,B);
disp('interliving sa i = 7')

%% interliving sa i = 9
C = Interliving(9,B);
disp('interliving sa i = 9')

%% interliving sa i = 11
C = Interliving(11,B);
disp('interliving sa i = 11')

%% bez interlivinga
C = B;
disp('bez interlivinga')

%% prenos sa verovatnocom greske 2%
D = genErrBit(C,0.02);
disp('prenos sa verovatnocom greske 2%')

%% prenos sa verovatnocom greske 0.5%
D = genErrBit(C,0.005);
disp('prenos sa verovatnocom greske 0.5%')

%% prenos sa paketima gresaka duzine 4
D = genErrBurst(C,4);
disp('prenos sa paketima gresaka duzine 4')

%% prenos sa paketima gresaka duzine 5
D = genErrBurst(C,5);
disp('prenos sa paketima gresaka duzine 5')

%% prenos sa paketima gresaka duzine 8
D = genErrBurst(C,8);
disp('prenos sa paketima gresaka duzine 8')

%% prenos sa paketima gresaka duzine 10
D = genErrBurst(C,10);
disp('prenos sa paketima gresaka duzine 10')

%% deinterliving sa i = 7
E = InvInterliving(7,D,PrNSim);
disp('deinterliving sa i = 7')

%% deinterliving sa i = 9
E = InvInterliving(9,D,PrNSim);
disp('deinterliving sa i = 9')

%% deinterliving sa i = 11
E = InvInterliving(11,D,PrNSim);
disp('deinterliving sa i = 11')

%% bez deinterlivinga
E = D;
disp('bez deinterlivinga')

%% derepeticiono kodiranje sa n = 3
F = InvRepeticiono(E,3);
disp('derepeticiono kodiranje sa n = 3')

%% derepeticiono kodiranje sa n = 5
F = InvRepeticiono(E,5);
disp('derepeticiono kodiranje sa n = 5')

%% derepeticiono kodiranje sa n = 7
F = InvRepeticiono(E,7);
disp('derepeticiono kodiranje sa n = 7')

%% Hamming(8,4) sa bitom parnosti
F = InvHamming84(E);
disp('Hamming(8,4) sa bitom parnosti')

%% Hamming(14,10)
F = InvHamming1410(E);
disp('Hamming(14,10)')

%% Odredjivanje greske
rez = ErrCoef(A,F);
fprintf('Greska: %s%%\n\n',num2str(rez*100));
