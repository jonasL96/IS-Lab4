close all
clear all
clc
%% raidþiø pavyzdþiø nuskaitymas ir poþymiø skaièiavimas
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
%% Atpaþintuvo kûrimas
% poþymiai ið celiø masyvo perkeliami á matricà
P = cell2mat(pozymiai_tinklo_mokymui);
% sukuriama teisingø atsakymø matrica: 11 raidþiø, 8 eilutës mokymui
%Pamodifikuojamas T kad butu vienodo didzio su P, nes kitaip newrb neveiks
for_T = size(P);
T = eye(for_T(1),for_T(2));
% sukuriamas SBF tinklas duotiems P ir T sàryðiams
tinklas = newrb(P,T,0,1,10); %pakeista i 10

%% Tinklo patikra
% skaièiuojamas tinklo iðëjimas neþinomiems poþymiams
P2 = P(:,1:10);
Y2 = sim(tinklas, P2);
% ieðkoma, kuriame iðëjime gauta didþiausia reikðmë
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaièiuosime raidþiø skaièiø - poþymiø P2 stulpeliø skaièiø
raidziu_sk = size(P2,2);
% rezultatà saugosime kintamajame 'atsakymas'
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
% pateikime rezultatà komandiniame lange
disp(atsakymas)
figure(7), text(0.1,0.5,atsakymas,'FontSize',38)
%% Skaiciu "234" poþymiø iðskyrimas 
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

%% Raidþiø atpaþinimas
% poþymiai ið celiø masyvo perkeliami á matricà
P2 = cell2mat(pozymiai_patikrai);
% skaièiuojamas tinklo iðëjimas neþinomiems poþymiams
Y2 = sim(tinklas, P2);
% ieðkoma, kuriame iðëjime gauta didþiausia reikðmë
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaièiuosime raidþiø skaièiø - poþymiø P2 stulpeliø skaièiø
raidziu_sk = size(P2,2);
% rezultatà saugosime kintamajame 'atsakymas'
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
% pateikime rezultatà komandiniame lange
disp(atsakymas)
%figure(8), text(0.1,0.5,atsakymas,'FontSize',38), axis off
%% Skaiciaus "3" poþymiø iðskyrimas 
pavadinimas = 'test_3.png';
V = imread(pavadinimas);
V_pustonis = rgb2gray(V);
imwrite(V_pustonis,'grey.png');
grey = imread('grey.png');
BW = segmentImage(grey);
imwrite(BW,'segmented.png');
pavadinimas2 = 'segmented.png';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas2, 5);

%% Raidþiø atpaþinimas
% poþymiai ið celiø masyvo perkeliami á matricà
P2 = cell2mat(pozymiai_patikrai);
% skaièiuojamas tinklo iðëjimas neþinomiems poþymiams
Y2 = sim(tinklas, P2);
% ieðkoma, kuriame iðëjime gauta didþiausia reikðmë
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaièiuosime raidþiø skaièiø - poþymiø P2 stulpeliø skaièiø
raidziu_sk = size(P2,2);
% rezultatà saugosime kintamajame 'atsakymas'
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
% pateikime rezultatà komandiniame lange
disp(atsakymas)
%figure(9), text(0.1,0.5,atsakymas,'FontSize',38), axis off
