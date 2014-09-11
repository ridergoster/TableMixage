
getvariable;

index = 1:length(x(:,1)); 

% Ring Modulation avec fréquence 440Hz
Fc = 880;
carrier(:,1) = sin(2*pi*index*(Fc/Fs)); 

% Do Ring Modulation
y(:,1) = x(:,1) .* carrier; 

if(dualchannel(x) == 2)

    index = 1:length(x(:,2)); 
    carrier(:,1) = sin(2*pi*index*(Fc/Fs));
    y(:,2) = x(:,2) .* carrier; 

end
% write output
savedata;