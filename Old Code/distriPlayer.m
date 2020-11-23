function varargout = distriPlayer(varargin)
% DISTRIPLAYER MATLAB code for distriPlayer.fig
%      DISTRIPLAYER, by itself, creates a new DISTRIPLAYER or raises the existing
%      singleton*.
%
%      H = DISTRIPLAYER returns the handle to a new DISTRIPLAYER or the handle to
%      the existing singleton*.
%
%      DISTRIPLAYER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISTRIPLAYER.M with the given input arguments.
%
%      DISTRIPLAYER('Property','Value',...) creates a new DISTRIPLAYER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before distriPlayer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to distriPlayer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help distriPlayer

% Last Modified by GUIDE v2.5 22-Jul-2019 09:10:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @distriPlayer_OpeningFcn, ...
                   'gui_OutputFcn',  @distriPlayer_OutputFcn, ...
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


% --- Executes just before distriPlayer is made visible.
function distriPlayer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to distriPlayer (see VARARGIN)
set(gcf,'color','w')

% Choose default command line output for distriPlayer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes distriPlayer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = distriPlayer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function leftEdge_Callback(hObject, eventdata, handles)
% hObject    handle to leftEdge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (strcmp(get(handles.plt,'Visible'),'on')==1)
plt_Callback(handles.plt,[],handles)    
end
%uistack(handles.rightEdge)
%set(handles.to,'Visible','On')
%set(handles.rightEdge,'Visible','On')
%set(handles.edit6,'Visible','Off')
% Hints: get(hObject,'String') returns contents of leftEdge as text
%        str2double(get(hObject,'String')) returns contents of leftEdge as a double


% --- Executes during object creation, after setting all properties.
function leftEdge_CreateFcn(hObject, eventdata, handles)
% hObject    handle to leftEdge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rightEdge_Callback(hObject, eventdata, handles)
% hObject    handle to rightEdge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (strcmp(get(handles.plt,'Visible'),'on')==1)
    plt_Callback(handles.plt,[],handles)    
end

set(handles.alpha,'Visible','On'); set(handles.alp,'Visible','On')
set(handles.beta,'Visible','On'); set(handles.bet,'Visible','On')
set(handles.yScale,'Visible','On'); set(handles.logToggle,'Visible','On')

set(handles.H1,'Visible','On'); set(handles.H2,'Visible','On')
set(handles.distTitle,'Visible','On'); 
set(handles.listDist,'Visible','On');
set(handles.plt,'Visible','On'); 
set(handles.useDefaults,'Visible','On'); 
set(handles.pascallisch,'Visible','On'); 


% Hints: get(hObject,'String') returns contents of rightEdge as text
%        str2double(get(hObject,'String')) returns contents of rightEdge as a double


% --- Executes during object creation, after setting all properties.
function rightEdge_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rightEdge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha_Callback(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.useDefaults,'Value',0);

plt_Callback(handles.plt,[],handles)

% Hints: get(hObject,'String') returns contents of alpha as text
%        str2double(get(hObject,'String')) returns contents of alpha as a double


% --- Executes during object creation, after setting all properties.
function alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beta_Callback(hObject, eventdata, handles)
% hObject    handle to beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.useDefaults,'Value',0);

plt_Callback(handles.plt,[],handles)

% Hints: get(hObject,'String') returns contents of beta as text
%        str2double(get(hObject,'String')) returns contents of beta as a double


% --- Executes during object creation, after setting all properties.
function beta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gamm_Callback(hObject, eventdata, handles)
% hObject    handle to gamm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.useDefaults,'Value',0);

plt_Callback(handles.plt,[],handles)

% Hints: get(hObject,'String') returns contents of gamm as text
%        str2double(get(hObject,'String')) returns contents of gamm as a double


% --- Executes during object creation, after setting all properties.
function gamm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gamm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in H1.
function H1_Callback(hObject, eventdata, handles)
% hObject    handle to H1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp = get(handles.H2,'String');
if strcmp(temp,'On') == 1
set(handles.H2,'String','Off');
axes(handles.pdf)
hold off
axes(handles.cdf)
hold off
else
set(handles.H2,'String','On');  
axes(handles.pdf)
hold on
axes(handles.cdf)
hold on
end


% --- Executes on selection change in listDist.
function listDist_Callback(hObject, eventdata, handles)
% hObject    handle to listDist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plt_Callback(handles.plt,[],handles)

% Hints: contents = cellstr(get(hObject,'String')) returns listDist contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listDist


% --- Executes during object creation, after setting all properties.
function listDist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listDist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes on button press in plt.
function plt_Callback(hObject, eventdata, handles)
% hObject    handle to plt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dist = get(handles.listDist,'String');
dist2 = get(handles.listDist,'Value');

defaultToggle = get(handles.useDefaults,'Value');
if defaultToggle == 1    
    if dist2 == 1 %Normal
    set(handles.leftEdge,'String','-5');
    set(handles.rightEdge,'String','5');
    set(handles.alpha,'String','0');
    set(handles.beta,'String','1');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 2 %Uniform
    set(handles.leftEdge,'String','-5');
    set(handles.rightEdge,'String','5');
    set(handles.alpha,'String','-1');
    set(handles.beta,'String','1');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 3 %Poisson
    set(handles.leftEdge,'String','0');
    set(handles.rightEdge,'String','40');
    set(handles.alpha,'String','20');
    set(handles.beta,'String','0');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 4 %Beta
    set(handles.leftEdge,'String','0');
    set(handles.rightEdge,'String','1');
    set(handles.alpha,'String','0.5');
    set(handles.beta,'String','0.5');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 5 %Binomial
    set(handles.leftEdge,'String','5');
    set(handles.rightEdge,'String','35');
    set(handles.alpha,'String','40');
    set(handles.beta,'String','0.5');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 6 %Burr
    set(handles.leftEdge,'String','1');
    set(handles.rightEdge,'String','5');
    set(handles.alpha,'String','4');
    set(handles.beta,'String','10');
    set(handles.gamm,'String','10');
    set(handles.delt,'String','0');
    elseif dist2 == 7 %Chi square
    set(handles.leftEdge,'String','0');
    set(handles.rightEdge,'String','50');
    set(handles.alpha,'String','20');
    set(handles.beta,'String','0');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 8 %Exponential
    set(handles.leftEdge,'String','-1');
    set(handles.rightEdge,'String','30');
    set(handles.alpha,'String','3.5');
    set(handles.beta,'String','0');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 9 %Extreme value
    set(handles.leftEdge,'String','-5');
    set(handles.rightEdge,'String','5');
    set(handles.alpha,'String','1');
    set(handles.beta,'String','1');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 10 %F
    set(handles.leftEdge,'String','-0.5');
    set(handles.rightEdge,'String','10');
    set(handles.alpha,'String','2');
    set(handles.beta,'String','3');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 11 %Gamma
    set(handles.leftEdge,'String','-0.5');
    set(handles.rightEdge,'String','10');
    set(handles.alpha,'String','2');
    set(handles.beta,'String','1');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 12 %Generalized Extreme value
    set(handles.leftEdge,'String','-5');
    set(handles.rightEdge,'String','5');
    set(handles.alpha,'String','0');
    set(handles.beta,'String','0.7');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 13 %Generalized Pareto
    set(handles.leftEdge,'String','-5');
    set(handles.rightEdge,'String','5');
    set(handles.alpha,'String','0');
    set(handles.beta,'String','0.7');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 14 %Geometric
    set(handles.leftEdge,'String','0');
    set(handles.rightEdge,'String','10');
    set(handles.alpha,'String','0.5');
    set(handles.beta,'String','0');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 15 %Half Normal
    set(handles.leftEdge,'String','-5');
    set(handles.rightEdge,'String','5');
    set(handles.alpha,'String','0');
    set(handles.beta,'String','1');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 16 %Hypergeometric
    set(handles.gam,'Visible','On'); set(handles.gamm,'Visible','On')

    set(handles.leftEdge,'String','0');
    set(handles.rightEdge,'String','10');
    set(handles.alpha,'String','40');
    set(handles.beta,'String','20');
    set(handles.gamm,'String','10');
    set(handles.delt,'String','0');

    elseif dist2 == 17 %Log Normal
    set(handles.leftEdge,'String','-1');
    set(handles.rightEdge,'String','10');
    set(handles.alpha,'String','0');
    set(handles.beta,'String','1');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    
    elseif dist2 == 18 %Negative Binomial
    set(handles.leftEdge,'String','0');
    set(handles.rightEdge,'String','70');
    set(handles.alpha,'String','30');
    set(handles.beta,'String','0.5');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    
    elseif dist2 == 19 %Noncentral F
    set(handles.leftEdge,'String','-1');
    set(handles.rightEdge,'String','10');
    set(handles.alpha,'String','3');
    set(handles.beta,'String','5');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 20 %Noncentral t
    set(handles.leftEdge,'String','-1');
    set(handles.rightEdge,'String','10');
    set(handles.alpha,'String','3');
    set(handles.beta,'String','3');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 21 %Noncentral Chi square
    set(handles.leftEdge,'String','-1');
    set(handles.rightEdge,'String','25');
    set(handles.alpha,'String','3');
    set(handles.beta,'String','3');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 22 %Rayleigh
    set(handles.leftEdge,'String','-1');
    set(handles.rightEdge,'String','15');
    set(handles.alpha,'String','3');
    set(handles.beta,'String','0');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 23 %Stable
    set(handles.leftEdge,'String','-5');
    set(handles.rightEdge,'String','5');
    set(handles.alpha,'String','0.5');
    set(handles.beta,'String','0');
    set(handles.gamm,'String','1');
    set(handles.delt,'String','0');
    elseif dist2 == 24 %t
    set(handles.leftEdge,'String','-5');
    set(handles.rightEdge,'String','5');
    set(handles.alpha,'String','2');
    set(handles.beta,'String','0');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 25 %Discrete uniform
    set(handles.leftEdge,'String','-1');
    set(handles.rightEdge,'String','6');
    set(handles.alpha,'String','5');
    set(handles.beta,'String','0');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    elseif dist2 == 26 %Weibull
    set(handles.leftEdge,'String','0');
    set(handles.rightEdge,'String','5');
    set(handles.alpha,'String','1');
    set(handles.beta,'String','1.5');
    set(handles.gamm,'String','0');
    set(handles.delt,'String','0');
    end
    
end


temp1 = str2num(get(handles.leftEdge,'String'));
temp2 = str2num(get(handles.rightEdge,'String'));
alpha = str2num(get(handles.alpha,'String'));
beta = str2num(get(handles.beta,'String'));
gamm = str2num(get(handles.gamm,'String'));
delta = str2num(get(handles.delt,'String'));
handles.x = temp1:0.01:temp2; %linspace(temp1,temp2,1000); %Linspace misses integers
%epsilon = ones(1,length(handles.x)).*1e-1; %To add
%handles.x = handles.x + epsilon;

logToggle = get(handles.logToggle,'Value');

%if dist == 1
try
set(handles.gam,'Visible','Off'); set(handles.gamm,'Visible','Off')
set(handles.deltLab,'Visible','Off'); set(handles.delt,'Visible','Off')
if get(handles.listDist,'Value') == 16 %Exception handling for hypergeometric distribution 
set(handles.gam,'Visible','On'); set(handles.gamm,'Visible','On')
%set(handles.gamm,'String','10');
    
end    
if logToggle == 0    
handles.y1 = pdf(dist{dist2},handles.x,alpha,beta);
handles.y2 = cdf(dist{dist2},handles.x,alpha,beta);
if dist2 == 16
handles.y1 = pdf(dist{dist2},handles.x,alpha,beta,gamm);
handles.y2 = cdf(dist{dist2},handles.x,alpha,beta,gamm);    
end
else 
handles.y1 = log(pdf(dist{dist2},handles.x,alpha,beta));
handles.y2 = log(cdf(dist{dist2},handles.x,alpha,beta));
if dist2 == 16
handles.y1 = log(pdf(dist{dist2},handles.x,alpha,beta,gamm));
handles.y2 = log(cdf(dist{dist2},handles.x,alpha,beta,gamm));    
end
end
catch
    try
set(handles.gam,'Visible','On'); set(handles.gamm,'Visible','On')
        
if logToggle == 0    
handles.y1 = pdf(dist{dist2},handles.x,alpha,beta,gamm);
handles.y2 = cdf(dist{dist2},handles.x,alpha,beta,gamm);
else
handles.y1 = log(pdf(dist{dist2},handles.x,alpha,beta,gamm));
handles.y2 = log(cdf(dist{dist2},handles.x,alpha,beta,gamm));    
end    
    catch
set(handles.deltLab,'Visible','On'); set(handles.delt,'Visible','On')        
if logToggle == 0    
handles.y1 = pdf(dist{dist2},handles.x,alpha,beta,gamm,delta);
handles.y2 = cdf(dist{dist2},handles.x,alpha,beta,gamm,delta);
else
handles.y1 = log(pdf(dist{dist2},handles.x,alpha,beta,gamm,delta));
handles.y2 = log(cdf(dist{dist2},handles.x,alpha,beta,gamm,delta));    
end    
    end
end
%elseif dist == 2
%handles.y1 = pdf(dist,handles.x,alpha,beta);
%handles.y2 = cdf(dist,handles.x,alpha,beta);
%end
axes(handles.pdf)

%bar(handles.x,handles.y1)
plot(handles.x,handles.y1,'linewidth',3)
xlim([min(handles.x) max(handles.x)])
movshonize(22,1); axis normal
axes(handles.cdf)
plot(handles.x,handles.y2,'linewidth',3)
xlim([min(handles.x) max(handles.x)])
movshonize(22,1); axis normal
set(handles.pdf,'Visible','on')
%set(handles.pdf,'XTick',[])
%set(handles.pdf,'YTick',[])
%set(handles.pdf,'XColor','w')
%set(handles.pdf,'YColor','w')
%axis off
set(handles.cdf,'Visible','on')




function delt_Callback(hObject, eventdata, handles)
% hObject    handle to delt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.useDefaults,'Value',0);
plt_Callback(handles.plt,[],handles)


% Hints: get(hObject,'String') returns contents of delt as text
%        str2double(get(hObject,'String')) returns contents of delt as a double


% --- Executes during object creation, after setting all properties.
function delt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to delt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in logToggle.
function logToggle_Callback(hObject, eventdata, handles)
% hObject    handle to logToggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plt_Callback(handles.plt,[],handles)

% Hint: get(hObject,'Value') returns toggle state of logToggle


% --- Executes on button press in useDefaults.
function useDefaults_Callback(hObject, eventdata, handles)
% hObject    handle to useDefaults (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plt_Callback(handles.plt,[],handles)

% Hint: get(hObject,'Value') returns toggle state of useDefaults
