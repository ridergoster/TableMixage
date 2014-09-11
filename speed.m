getvariable;

if(handles.selectmusique == 1)
    if(handles.obj1speed == 1)
        varspeed = handles.obj1acc;
    else
        varspeed = handles.obj1dec;
    end
    Fs = handles.obj1fo*varspeed;
else
    if(handles.obj2speed == 1)
        varspeed = handles.obj2acc;
    else
        varspeed = handles.obj2dec;
    end
    Fs = handles.obj2fo*varspeed;
end
y = x;
% write output

savedata;
