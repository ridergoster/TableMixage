
% Si la musique selectionné est 2
if(handles.selectmusique == 2)
    % x et Fs seront ce de obj2
    x = handles.obj2x;
    Fs = handles.obj2fe;
else
    % sinon, x et Fs seront ce de obj1
    x = handles.obj1x;
    Fs = handles.obj1fe;
end
