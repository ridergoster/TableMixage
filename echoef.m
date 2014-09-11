getvariable;

% temps echo
t = round(Fs*0.4);

%à partir du delai, jusqu'à la fin du signal, on applique la modulation
y(:,1) = zeros(size(x(:,1)));
for i = (t+1):length(x(:,1)),
        y(i,1) = 0.3*x(i-t,1);
end

if(dualchannel(x) == 2)
    y(:,2) = zeros(size(x(:,2)));
    for i = (t+1):length(x(:,2)),
            y(i,2) = 0.3*x(i-t,2);
    end
end

y = y + x;

% write output

savedata;