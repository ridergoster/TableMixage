function x = stereotomono(x)
% fonction stereo to mono transforme un son stereo en mono
% le signal x devient la résultante des deux channels 1 et 2
% représentant la partie gauche (x1) et droite (x2) du signal   
x1 = channel1(x);
x2 = channel2(x);

x = x1 + x2;