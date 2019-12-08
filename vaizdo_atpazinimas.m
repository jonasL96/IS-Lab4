close all
clear all
clc
%% raid�i� pavyzd�i� nuskaitymas ir po�ymi� skai�iavimas
pavadinimas = 'train_data_new.png';
V = imread(pavadinimas);
%Pries paduodant funkcijai paveikslelis segmentuojamas
V_pustonis = rgb2gray(V);
imwrite(V_pustonis,'grey.png');
grey = imread('grey.png');
BW = segmentImage(grey);
imwrite(BW,'segmented.png');
pavadinimas2 = 'segmented.png';
pozymiai_tinklo_mokymui = pozymiai_raidems_atpazinti(pavadinimas2, 10);
%% Atpa�intuvo k�rimas
% po�ymiai i� celi� masyvo perkeliami � matric�
P = cell2mat(pozymiai_tinklo_mokymui);
% sukuriama teising� atsakym� matrica: 11 raid�i�, 8 eilut�s mokymui
%Pamodifikuojamas T kad butu vienodo didzio su P, nes kitaip newrb neveiks
for_T = size(P);
T = eye(for_T(1),for_T(2));
% sukuriamas SBF tinklas duotiems P ir T s�ry�iams
tinklas = newrb(P,T,0,1,10); %pakeista i 10

%% Tinklo patikra
% skai�iuojamas tinklo i��jimas ne�inomiems po�ymiams
P2 = P(:,1:10);
Y2 = sim(tinklas, P2);
% ie�koma, kuriame i��jime gauta did�iausia reik�m�
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskai�iuosime raid�i� skai�i� - po�ymi� P2 stulpeli� skai�i�
raidziu_sk = size(P2,2);
% rezultat� saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            atsakymas = [atsakymas, '0'];
        case 2
            atsakymas = [atsakymas, '1'];
        case 3
            atsakymas = [atsakymas, '2'];
        case 4
            atsakymas = [atsakymas, '3'];
        case 5
            atsakymas = [atsakymas, '4'];
        case 6
            atsakymas = [atsakymas, '5'];
        case 7
            atsakymas = [atsakymas, '6'];
        case 8
            atsakymas = [atsakymas, '7'];
        case 9
            atsakymas = [atsakymas, '8'];
        case 10
            atsakymas = [atsakymas, '9'];
    end
end
% pateikime rezultat� komandiniame lange
disp(atsakymas)
figure(7), text(0.1,0.5,atsakymas,'FontSize',38)
%% Skaiciu "234" po�ymi� i�skyrimas 
pavadinimas = 'test_27.png';
V = imread(pavadinimas);
V_pustonis = rgb2gray(V);
imwrite(V_pustonis,'grey.png')
grey = imread('grey.png');
BW = segmentImage(grey);
imwrite(BW,'segmented.png')
pavadinimas2 = 'segmented.png';
imshow(pavadinimas2);
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas2, 7);

%% Raid�i� atpa�inimas
% po�ymiai i� celi� masyvo perkeliami � matric�
P2 = cell2mat(pozymiai_patikrai);
% skai�iuojamas tinklo i��jimas ne�inomiems po�ymiams
Y2 = sim(tinklas, P2);
% ie�koma, kuriame i��jime gauta did�iausia reik�m�
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskai�iuosime raid�i� skai�i� - po�ymi� P2 stulpeli� skai�i�
raidziu_sk = size(P2,2);
% rezultat� saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            atsakymas = [atsakymas, '0'];
        case 2
            atsakymas = [atsakymas, '1'];
        case 3
            atsakymas = [atsakymas, '2'];
        case 4
            atsakymas = [atsakymas, '3'];
        case 5
            atsakymas = [atsakymas, '4'];
        case 6
            atsakymas = [atsakymas, '5'];
        case 7
            atsakymas = [atsakymas, '6'];
        case 8
            atsakymas = [atsakymas, '7'];
        case 9
            atsakymas = [atsakymas, '8'];
        case 10
            atsakymas = [atsakymas, '9'];
    end
end
% pateikime rezultat� komandiniame lange
disp(atsakymas)
%figure(8), text(0.1,0.5,atsakymas,'FontSize',38), axis off
%% Skaiciaus "3" po�ymi� i�skyrimas 
pavadinimas = 'test_3.png';
V = imread(pavadinimas);
V_pustonis = rgb2gray(V);
imwrite(V_pustonis,'grey.png');
grey = imread('grey.png');
BW = segmentImage(grey);
imwrite(BW,'segmented.png');
pavadinimas2 = 'segmented.png';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas2, 5);

%% Raid�i� atpa�inimas
% po�ymiai i� celi� masyvo perkeliami � matric�
P2 = cell2mat(pozymiai_patikrai);
% skai�iuojamas tinklo i��jimas ne�inomiems po�ymiams
Y2 = sim(tinklas, P2);
% ie�koma, kuriame i��jime gauta did�iausia reik�m�
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskai�iuosime raid�i� skai�i� - po�ymi� P2 stulpeli� skai�i�
raidziu_sk = size(P2,2);
% rezultat� saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            atsakymas = [atsakymas, '1'];
        case 2
            atsakymas = [atsakymas, '2'];
        case 3
            atsakymas = [atsakymas, '3'];
        case 4
            atsakymas = [atsakymas, '4'];
        case 5
            atsakymas = [atsakymas, '5'];
        case 6
            atsakymas = [atsakymas, '6'];
        case 7
            atsakymas = [atsakymas, '7'];
        case 8
            atsakymas = [atsakymas, '8'];
        case 9
            atsakymas = [atsakymas, '9'];
        case 10
            atsakymas = [atsakymas, '0'];
    end
end
% pateikime rezultat� komandiniame lange
disp(atsakymas)
%figure(9), text(0.1,0.5,atsakymas,'FontSize',38), axis off
