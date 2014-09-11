if(handles.selectmusique == 2)
    handles.obj2aff = y;
    handles.obj2tmp = 0:1/Fs:(length(y)-1)/Fs;
    handles.obj2audio = audioplayer((y),Fs);
    handles.obj2fe = Fs;
    guidata(hObject,handles);
else
    handles.obj1aff = y;
    handles.obj1tmp = 0:1/Fs:(length(y)-1)/Fs;
    handles.obj1audio = audioplayer(y,Fs);
    handles.obj1fe = Fs;
    guidata(hObject,handles);
end