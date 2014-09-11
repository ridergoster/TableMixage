
x2 = handles.obj2aff;
if(dualchannel(x2) == 2)
    x2 = stereotomono(x2);
end
x2z = zeros(size(x2));
Fs2 = handles.obj2fe;
    
x1 = handles.obj1aff;
if(dualchannel(x1) == 2)
    x1 = stereotomono(x1);
end
x1z= zeros(size(x1));
Fs1 = handles.obj1fe;

if(handles.separatemode == 0)

handles.obj1audio = audioplayer([x1,x1z], Fs1);
handles.obj2audio = audioplayer([x2z,x2], Fs2);
handles.separatemode = 1;
guidata(hObject,handles);
stop(handles.obj1audio);
stop(handles.obj2audio);

else
    
handles.obj1audio = audioplayer(x1, Fs1);
handles.obj2audio = audioplayer(x2, Fs2);  
stop(handles.obj1audio);
stop(handles.obj2audio);
handles.separatemode = 0;
guidata(hObject,handles);
end