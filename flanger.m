getvariable;

index = 1:length(x(:,1)); 

% sinusoidale modulante
modul = sin(2*pi*index*(1/Fs)); 

%temps delai (la fonction round permet d'avoir un entier positif !)
delai = round(0.0008*Fs);

% Initialisation du signal final
y(:,1) = zeros(size(x(:,1)));

% jusqu'au delai : y(signal final) = x(signal audio)
y(1:delai,1)=x(1:delai,1);

%à partir du delai, jusqu'à la fin du signal, on applique la modulation
for i = (delai+1):length(x(:,1)),
    %valeur absolue du signal modulant 
    abs_modul_retard=round(abs(modul(i))*delai); 
    % signal final = signal audio original + signal retardé par rapport
    % au delai temporel et la modulante
    y(i,1) = x(i,1) + 0.5*(x(i-abs_modul_retard,1));
end

if(dualchannel(x) == 2)  
    index = 1:length(x(:,2)); 
    % sinusoidale modulante
    modul2 = sin(2*pi*index*(1/Fs)); 
    % jusqu'au delai : y(signal final) = x(signal audio)
    y(1:delai,2)=x(1:delai,2);
    %à partir du delai, jusqu'à la fin du signal, on applique la modulation
    for i = (delai+1):length(x(:,2)),
        %valeur absolue du signal modulant 
        abs_modul_retard=round(abs(modul2(i))*delai); 
        % signal final = signal audio original + signal retardé par rapport
        % au delai temporel et la modulante
        y(i,2) = x(i,2) + 0.5*(x((i-abs_modul_retard),2));
    end
end


% write output

savedata;