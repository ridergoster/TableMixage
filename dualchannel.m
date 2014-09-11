function i = dualchannel(x)
% fonction dualchannel renvoie un boolean 0 ou 1 :
% si le signal x est de type mono, i = 1
% si le signal x est de type stéréo, i = 2   
x1 = channel1(x);
x2 = channel2(x);

if(x1 == x2)
    i=1;
else
    i=2;
end