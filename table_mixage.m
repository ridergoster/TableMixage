function varargout = table_mixage(varargin)
% TABLE_MIXAGE MATLAB code for table_mixage.fig
%      TABLE_MIXAGE, by itself, creates a new TABLE_MIXAGE or raises the existing
%      singleton*.
%
%      H = TABLE_MIXAGE returns the handle to a new TABLE_MIXAGE or the handle to
%      the existing singleton*.
%
%      TABLE_MIXAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TABLE_MIXAGE.M with the given input arguments.
%
%      TABLE_MIXAGE('Property','Value',...) creates a new TABLE_MIXAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before table_mixage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to table_mixage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help table_mixage

% Last Modified by GUIDE v2.5 01-Apr-2014 12:24:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @table_mixage_OpeningFcn, ...
                   'gui_OutputFcn',  @table_mixage_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before table_mixage is made visible.
function table_mixage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to table_mixage (see VARARGIN)

% Choose default command line output for table_mixage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes table_mixage wait for user response (see UIRESUME)
% uiwait(handles.figure1);

%variable selection musique
handles.selectmusique = 0;
guidata(hObject,handles);
%variable separation musique
handles.separatemode = 0;
guidata(hObject,handles);

%variable musique 1
handles.obj1x = 0;
handles.obj1fo= 0;
handles.obj1fe = 0;
handles.obj1n = 0;
handles.obj1audio = 0;
handles.obj1aff = 0;
handles.obj1tmp = 0;
handles.obj1pauseid = 0;
handles.obj1acc = 1;
handles.obj1dec = 1;
handles.obj1speed = 0;
guidata(hObject,handles);

%variable musique 2
handles.obj2x = 0;
handles.obj2fo = 0;
handles.obj2fe = 0;
handles.obj2n = 0;
handles.obj2audio = 0;
handles.obj2aff = 0;
handles.obj2tmp = 0;
handles.obj2pauseid = 0;
handles.obj2acc = 1;
handles.obj2dec = 1;
handles.obj2speed = 0;
guidata(hObject,handles);



% --- Outputs from this function are returned to the command line.
function varargout = table_mixage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% -------------------SON 1


	% ----------------------- POPUP 1
	 
		% --- Executes on selection change in popupmenu2.
		function popupmenu2_Callback(hObject, eventdata, handles)
		% hObject    handle to popupmenu2 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		val = get(handles.popupmenu2,'value');

		switch(val)
			
		case 1 
		[x1,Fe1,Nbits1]=wavread('C:\projet_elec\piano');
		% ici on charge le son
		handles.obj1x=x1;
        handles.obj1fo=Fe1;
		handles.obj1fe=Fe1; 
		handles.obj1n=Nbits1; 
		handles.obj1audio = audioplayer(x1,Fe1); 
		handles.obj1tmp=0:1/Fe1:(length(x1)-1)/Fe1; 
        handles.obj1aff=x1;
		guidata(hObject,handles); 
		axes(handles.axes1);
		plot(handles.obj1tmp,x1);

		case 2
		[x1,Fe1,Nbits1]=wavread('C:\projet_elec\marseillaise');
		% ici on charge le son
		handles.obj1x=x1; 
        handles.obj1fo=Fe1;
		handles.obj1fe=Fe1; 
		handles.obj1n=Nbits1; 
		handles.obj1audio = audioplayer(x1,Fe1); 
		handles.obj1tmp=0:1/Fe1:(length(x1)-1)/Fe1; 
        handles.obj1aff=x1;
		guidata(hObject,handles); 
		axes(handles.axes1);
		plot(handles.obj1tmp,x1);
        
        case 3
		[x1,Fe1,Nbits1]=wavread('C:\projet_elec\heres_to_you');
		% ici on charge le son
		handles.obj1x=x1; 
        handles.obj1fo=Fe1;
		handles.obj1fe=Fe1; 
		handles.obj1n=Nbits1; 
		handles.obj1audio = audioplayer(x1,Fe1); 
		handles.obj1tmp=0:1/Fe1:(length(x1)-1)/Fe1; 
        handles.obj1aff=x1;
		guidata(hObject,handles); 
		axes(handles.axes1);
		plot(handles.obj1tmp,x1);
        
        case 4
		[x1,Fe1,Nbits1]=wavread('C:\projet_elec\toccata');
		% ici on charge le son
		handles.obj1x=x1; 
        handles.obj1fo=Fe1;
		handles.obj1fe=Fe1; 
		handles.obj1n=Nbits1; 
		handles.obj1audio = audioplayer(x1,Fe1); 
		handles.obj1tmp=0:1/Fe1:(length(x1)-1)/Fe1; 
        handles.obj1aff=x1;
		guidata(hObject,handles); 
		axes(handles.axes1);
		plot(handles.obj1tmp,x1);
		end
		
		
		% --- Executes during object creation, after setting all properties.
		function popupmenu2_CreateFcn(hObject, eventdata, handles)
		% hObject    handle to popupmenu2 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    empty - handles not created until after all CreateFcns called

		% Hint: popupmenu controls usually have a white background on Windows.
		%       See ISPC and COMPUTER.
		if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
			set(hObject,'BackgroundColor','white');
		end
		
		
	% ----------------------- PLAY PAUSE STOP 1
	
		% --- Executes on button press in pushbutton17 / PLAY-RESUME 1
		function pushbutton17_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton17 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		if(handles.obj1pauseid == 1)
			resume(handles.obj1audio);
			handles.obj1pauseid = 2;
			guidata(hObject,handles);
		else
			play(handles.obj1audio);
			handles.obj1pauseid = 2;
			guidata(hObject,handles);
		end

		% --- Executes on button press in pushbutton18 / PAUSE 1
		function pushbutton18_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton18 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		if(handles.obj1pauseid ~= 1)
			pause(handles.obj1audio);
			handles.obj1pauseid = 1;
			guidata(hObject,handles);
		end

		% --- Executes on button press in pushbutton19 / STOP 1
		function pushbutton19_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton19 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		stop(handles.obj1audio);
		handles.obj1pauseid = 0;
		guidata(hObject,handles);

	
	% ----------------------- EFFECT 1
	
		% --- Executes on button press in pushbutton2 / ECHO 1
		function pushbutton2_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton2 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		handles.selectmusique = 1;
		guidata(hObject,handles);
		echoef 
        axes(handles.axes1);
        if(dualchannel(handles.obj1aff)==2)
            plot(handles.obj1tmp,handles.obj1aff(:,1),'r',handles.obj1tmp,handles.obj1aff(:,2),'k');
        else
        plot(handles.obj1tmp,handles.obj1aff,'r');
        end
        
		% --- Executes on button press in pushbutton3 / RINGMOD 1
		function pushbutton3_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton3 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		handles.selectmusique = 1;
		guidata(hObject,handles);
		ringmod 
        axes(handles.axes1);
        if(dualchannel(handles.obj1aff)==2)
            plot(handles.obj1tmp,handles.obj1aff(:,1),'r',handles.obj1tmp,handles.obj1aff(:,2),'k');
        else
        plot(handles.obj1tmp,handles.obj1aff,'r');
        end

		% --- Executes on button press in pushbutton4 / WAH WAH  1
		function pushbutton4_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton4 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		handles.selectmusique = 1;
		guidata(hObject,handles); 
		wah_wah 
        axes(handles.axes1);
        if(dualchannel(handles.obj1aff)==2)
            plot(handles.obj1tmp,handles.obj1aff(:,1),'r',handles.obj1tmp,handles.obj1aff(:,2),'k');
        else
        plot(handles.obj1tmp,handles.obj1aff,'r');
        end

               % --- Executes on button press in pushbutton24. / FLANGER 1
        function pushbutton24_Callback(hObject, eventdata, handles)
        % hObject    handle to pushbutton24 (see GCBO)
        % eventdata  reserved - to be defined in a future version of MATLAB
        % handles    structure with handles and user data (see GUIDATA)
        handles.selectmusique = 1;
		guidata(hObject,handles); 
		flanger 
        axes(handles.axes1);
        if(dualchannel(handles.obj1aff)==2)
            plot(handles.obj1tmp,handles.obj1aff(:,1),'r',handles.obj1tmp,handles.obj1aff(:,2),'k');
        else
        plot(handles.obj1tmp,handles.obj1aff,'r');
        end
		
		% --- Executes on button press in pushbutton1. / ACCELERATION 1
		function pushbutton1_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton1 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		handles.selectmusique = 1;
        handles.obj1speed = 1;
		guidata(hObject,handles); 
        speed
        axes(handles.axes1);
        if(dualchannel(handles.obj1aff)==2)
            plot(handles.obj1tmp,handles.obj1aff(:,1),'r',handles.obj1tmp,handles.obj1aff(:,2),'k');
        else
        plot(handles.obj1tmp,handles.obj1aff,'r');
        end
        
                    % --- Executes on slider movement. / ACCELERATION 1
                    % SLIDER
            function slider8_Callback(hObject, eventdata, handles)
            % hObject    handle to slider8 (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)

            % Hints: get(hObject,'Value') returns position of slider
            %        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
            handles.obj1acc = 1 + get(hObject,'Value');
            guidata(hObject,handles);

            % --- Executes during object creation, after setting all
            % properties. / ACCELERATION 1 SLIDER CREATE
            function slider8_CreateFcn(hObject, eventdata, handles)
            % hObject    handle to slider8 (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    empty - handles not created until after all CreateFcns called

            % Hint: slider controls usually have a light gray background.
            if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
                set(hObject,'BackgroundColor',[.9 .9 .9]);
            end
        
		% --- Executes on button press in pushbutton9. / DECCELERATION 1
		function pushbutton9_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton9 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		handles.selectmusique = 1;
        handles.obj1speed = 2;
		guidata(hObject,handles); 
        speed
        axes(handles.axes1);
        if(dualchannel(handles.obj1aff)==2)
            plot(handles.obj1tmp,handles.obj1aff(:,1),'r',handles.obj1tmp,handles.obj1aff(:,2),'k');
        else
        plot(handles.obj1tmp,handles.obj1aff,'r');
        end
        
                    % --- Executes on slider movement.
            function slider9_Callback(hObject, eventdata, handles)
            % hObject    handle to slider9 (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)

            % Hints: get(hObject,'Value') returns position of slider
            %        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
            handles.obj1dec = 1 - get(hObject,'Value');
            guidata(hObject,handles);

            % --- Executes during object creation, after setting all properties.
            function slider9_CreateFcn(hObject, eventdata, handles)
            % hObject    handle to slider9 (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    empty - handles not created until after all CreateFcns called
            % Hint: slider controls usually have a light gray background.
            if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
                set(hObject,'BackgroundColor',[.9 .9 .9]);
                set(hObject,'Min',0.0);
                set(hObject,'Max',0.5);
            end

		% --- Executes on button press in pushbutton10. / RESET 1
		function pushbutton10_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton10 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
        popupmenu2_Callback(hObject,eventdata,handles);
		
        
		
		
% ------------------- SON 2


	% ----------------------- POPUP 2

		% --- Executes on selection change in popupmenu1.
		function popupmenu1_Callback(hObject, eventdata, handles)
		% hObject    handle to popupmenu1 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)

		% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
		%        contents{get(hObject,'Value')} returns selected item from popupmenu1
		val = get(handles.popupmenu1,'value');
		% determine une valeur dans le popmenu associé 
		switch(val)
			
		case 1 
		[x2,Fe2,Nbits2]=wavread('C:\projet_elec\piano');
		% ici on charge le son
		handles.obj2x=x2; 
        handles.obj2fo=Fe2;
		handles.obj2fe=Fe2; 
		handles.obj2n=Nbits2; 
		handles.obj2audio = audioplayer(x2,Fe2); 
		handles.obj2tmp=0:1/Fe2:(length(x2)-1)/Fe2; 
        handles.obj2aff=x2;
		guidata(hObject,handles); 
		axes(handles.axes2);
		plot(handles.obj2tmp,x2);

		case 2
		[x2,Fe2,Nbits2]=wavread('C:\projet_elec\marseillaise');
		% ici on charge le son
		handles.obj2x=x2; 
        handles.obj2fo=Fe2;
		handles.obj2fe=Fe2; 
		handles.obj2n=Nbits2; 
		handles.obj2audio = audioplayer(x2,Fe2); 
		handles.obj2tmp=0:1/Fe2:(length(x2)-1)/Fe2; 
        handles.obj2aff=x2;
		guidata(hObject,handles); 
		axes(handles.axes2);
		plot(handles.obj2tmp,x2);
        
        case 3
		[x2,Fe2,Nbits2]=wavread('C:\projet_elec\heres_to_you');
		% ici on charge le son
		handles.obj2x=x2; 
        handles.obj2fo=Fe2;
		handles.obj2fe=Fe2; 
		handles.obj2n=Nbits2; 
		handles.obj2audio = audioplayer(x2,Fe2); 
		handles.obj2tmp=0:1/Fe2:(length(x2)-1)/Fe2; 
        handles.obj2aff=x2;
		guidata(hObject,handles); 
		axes(handles.axes2);
		plot(handles.obj2tmp,x2);

        case 4
		[x2,Fe2,Nbits2]=wavread('C:\projet_elec\toccata');
		% ici on charge le son
		handles.obj2x=x2; 
        handles.obj2fo=Fe2;
		handles.obj2fe=Fe2; 
		handles.obj2n=Nbits2; 
		handles.obj2audio = audioplayer(x2,Fe2); 
		handles.obj2tmp=0:1/Fe2:(length(x2)-1)/Fe2; 
        handles.obj2aff=x2;
		guidata(hObject,handles); 
		axes(handles.axes2);
		plot(handles.obj2tmp,x2);
		end

		% --- Executes during object creation, after setting all properties.
		function popupmenu1_CreateFcn(hObject, eventdata, handles)
		% hObject    handle to popupmenu1 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    empty - handles not created until after all CreateFcns called

		% Hint: popupmenu controls usually have a white background on Windows.
		%       See ISPC and COMPUTER.
		if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
			set(hObject,'BackgroundColor','white');
		end


	% ----------------------- PLAY PAUSE STOP 2
			
		% --- Executes on button press in pushbutton20. / PLAY-RESUME 2
		function pushbutton20_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton20 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)

		if(handles.obj2pauseid == 1)
			resume(handles.obj2audio);
			handles.obj2pauseid = 2;
			guidata(hObject,handles);
		else
			play(handles.obj2audio);
			handles.obj2pauseid = 2;
			guidata(hObject,handles);
		end

		% --- Executes on button press in pushbutton21. / PAUSE 2
		function pushbutton21_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton21 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		if(handles.obj2pauseid ~= 1)
			pause(handles.obj2audio);
			handles.obj2pauseid = 1;
			guidata(hObject,handles);
		end

		% --- Executes on button press in pushbutton22. / STOP 2
		function pushbutton22_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton22 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		stop(handles.obj2audio);
		handles.obj2pauseid = 0;
		guidata(hObject,handles);

		
	% ----------------------- EFFECT 2
			
			% --- Executes on button press in pushbutton11. / ECHO 2
		function pushbutton11_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton11 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		handles.selectmusique = 2;
		guidata(hObject,handles);
		echoef 
        axes(handles.axes2);
        if(dualchannel(handles.obj2aff)==2)
            plot(handles.obj2tmp,handles.obj2aff(:,1),'r',handles.obj2tmp,handles.obj2aff(:,2),'k');
        else
        plot(handles.obj2tmp,handles.obj2aff,'r');
        end

		% --- Executes on button press in pushbutton12. / RINGMOD 2
		function pushbutton12_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton12 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		handles.selectmusique = 2;
		guidata(hObject,handles);
		ringmod 
        axes(handles.axes2);
        if(dualchannel(handles.obj2aff)==2)
            plot(handles.obj2tmp,handles.obj2aff(:,1),'r',handles.obj2tmp,handles.obj2aff(:,2),'k');
        else
        plot(handles.obj2tmp,handles.obj2aff,'r');
        end

        % --- Executes on button press in pushbutton25. / WAH WAH 2
        function pushbutton25_Callback(hObject, eventdata, handles) 
        % hObject    handle to pushbutton25 (see GCBO)
        % eventdata  reserved - to be defined in a future version of MATLAB
        % handles    structure with handles and user data (see GUIDATA)
		handles.selectmusique = 2;
		guidata(hObject,handles);
		wah_wah 
        axes(handles.axes2);
        if(dualchannel(handles.obj2aff)==2)
            plot(handles.obj2tmp,handles.obj2aff(:,1),'r',handles.obj2tmp,handles.obj2aff(:,2),'k');
        else
        plot(handles.obj2tmp,handles.obj2aff,'r');
        end

		% --- Executes on button press in pushbutton13. / FLANGER 2
		function pushbutton13_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton13 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
		handles.selectmusique = 2;
		guidata(hObject,handles);
		flanger 
        axes(handles.axes2);
        if(dualchannel(handles.obj2aff)==2)
            plot(handles.obj2tmp,handles.obj2aff(:,1),'r',handles.obj2tmp,handles.obj2aff(:,2),'k');
        else
        plot(handles.obj2tmp,handles.obj2aff,'r');
        end


		% --- Executes on button press in pushbutton14. / ACCELERATION 2
		function pushbutton14_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton14 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
        handles.selectmusique = 2;
        handles.obj2speed = 1;
		guidata(hObject,handles); 
        speed
        axes(handles.axes2);
        if(dualchannel(handles.obj2aff)==2)
            plot(handles.obj2tmp,handles.obj2aff(:,1),'r',handles.obj2tmp,handles.obj2aff(:,2),'k');
        else
        plot(handles.obj2tmp,handles.obj2aff,'r');
        end
        
            % --- Executes on slider movement.
            function slider10_Callback(hObject, eventdata, handles)
            % hObject    handle to slider10 (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)

            % Hints: get(hObject,'Value') returns position of slider
            %        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
            handles.obj2acc = 1 + get(hObject,'Value');
            guidata(hObject,handles);

            % --- Executes during object creation, after setting all properties.
            function slider10_CreateFcn(hObject, eventdata, handles)
            % hObject    handle to slider10 (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    empty - handles not created until after all CreateFcns called

            % Hint: slider controls usually have a light gray background.
            if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
                set(hObject,'BackgroundColor',[.9 .9 .9]);
            end


		% --- Executes on button press in pushbutton15. / DECCELERATION 2
		function pushbutton15_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton15 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
        handles.selectmusique = 2;
        handles.obj2speed = 2;
		guidata(hObject,handles); 
        speed
        axes(handles.axes2);
        if(dualchannel(handles.obj2aff)==2)
            plot(handles.obj2tmp,handles.obj2aff(:,1),'r',handles.obj2tmp,handles.obj2aff(:,2),'k');
        else
        plot(handles.obj2tmp,handles.obj2aff,'r');
        end
        
                    % --- Executes on slider movement.
            function slider11_Callback(hObject, eventdata, handles)
            % hObject    handle to slider11 (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)

            % Hints: get(hObject,'Value') returns position of slider
            %        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
            handles.obj2dec = 1 - get(hObject,'Value');
            guidata(hObject,handles);

            % --- Executes during object creation, after setting all properties.
            function slider11_CreateFcn(hObject, eventdata, handles)
            % hObject    handle to slider11 (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    empty - handles not created until after all CreateFcns called

            % Hint: slider controls usually have a light gray background.
            if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
                set(hObject,'BackgroundColor',[.9 .9 .9]);
                set(hObject,'Min',0.0);
                set(hObject,'Max',0.5);
            end

		% --- Executes on button press in pushbutton16. / RESET 2
		function pushbutton16_Callback(hObject, eventdata, handles)
		% hObject    handle to pushbutton16 (see GCBO)
		% eventdata  reserved - to be defined in a future version of MATLAB
		% handles    structure with handles and user data (see GUIDATA)
        popupmenu1_Callback(hObject,eventdata,handles);


% ------------------- SEPARATE MODE 




% --- Executes on button press in pushbutton23. / SEPARATE MODE 
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    separate
    if(handles.separatemode == 1)
        play(handles.obj1audio);
        pause(handles.obj1audio);
        play(handles.obj2audio);
        resume(handles.obj1audio);
    end













