function varargout = robotik(varargin)

axis([-5 5 -5 5]);% grafik boyutu ayarladýk
x = [0 2 3.5 4.5];
y = [0 0 0 0];
grid on;
l = line(x, y);% ilk konumda çizim yaptýk
hold on;


gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @robotik_OpeningFcn, ...
                   'gui_OutputFcn',  @robotik_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before robotik is made visible.
function robotik_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for robotik
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes robotik wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = robotik_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function aci1_Callback(hObject, eventdata, handles)
% hObject    handle to aci1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aci1 as text
%        str2double(get(hObject,'String')) returns contents of aci1 as a double


% --- Executes during object creation, after setting all properties.
function aci1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aci1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function aci2_Callback(hObject, eventdata, handles)
% hObject    handle to aci2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aci2 as text
%        str2double(get(hObject,'String')) returns contents of aci2 as a double


% --- Executes during object creation, after setting all properties.
function aci2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aci2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function aci3_Callback(hObject, eventdata, handles)
% hObject    handle to aci3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aci3 as text
%        str2double(get(hObject,'String')) returns contents of aci3 as a double


% --- Executes during object creation, after setting all properties.
function aci3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aci3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ekle.
function ekle_Callback(hObject, eventdata, handles)
% hObject    handle to ekle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t1 t2 t3
t1 = str2double(get(handles.edit4, 'String'));% girile deðerleri t deðiþkenlerine atadýk
t2 = str2double(get(handles.edit5, 'String'));
t3 = str2double(get(handles.edit6, 'String'));

% --- Executes on button press in ciz.
function ciz_Callback(hObject, eventdata, handles)
% hObject    handle to ciz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t1 t2 t3
axis([-5 5 -5 5]);
x = [0 2 3.5 4.5];
y = [0 0 0 0];

% Ýlk pozisyonlarda çizgi çiz
grid on;
l = line(x, y);
hold on;
l1 = plot(x(1), y(1), '-');
l2 = plot(x(2), y(2), '-');
l3 = plot(x(3), y(3), '-');
l4 = plot(x(4), y(4), '-');
l5 = plot(x(1), y(1), 's');
l6 = plot(x(2), y(2), 's');
l7 = plot(x(3), y(3), 's');
l8 = plot(x(4), y(4), 's');

% Eksenleri düzeltin
axis([-5 5 -5 5]);

% Her baðlantý için baðlantýlarýn uzunluðu boyunca referans 
%çerçevelerin x eksenleri varsayalým.

t1 = t1 * (pi / 180);
t2 = t2 * (pi / 180);
t3 = t3 * (pi / 180);

%Önceki ve sonraki x eksenleri arasýndaki açýlar teta ile gösterilir.
theta1 = t1;
theta2 = t2;
theta3 = t3;

theta = theta1 * theta2 * theta3;

%Açýlarýn negatif deðerleri için artýya çevirme kýsmý
if theta < 0
    theta = -theta;
end

% Animasyon elde etmek için bir for döngüsü oluþturuldu

for i = 0 : 0.003 : theta
    
    tt1 = (i * theta1) ./ (theta);
    tt2 = (i * theta2) ./ (theta);
    tt3 = (i * theta3) ./ (theta);

    % dönüþüm matrisleri

    % rotasyon matrisleri
    R1 = Rotate(tt1);
    R2 = Rotate(tt2);
    R3 = Rotate(tt3);

    % çeviri matrisleri
    % parametrelerin baðlantý uzunluklarý
    T2 = Translate(2);
    T3 = Translate(1.5);
    T4 = Translate(1);

    % ikinci nokta bulma
    
    %dönüþüm matrisi
    Y = R1 * T2;
    
    % Yeni koordinatlar bulmak
    Y1 = Y * [0; 0; 0; 1];
    x(2) = Y1(1);
    y(2) = Y1(2);

    % üçüncü nokta bulma
    
    %dönüþüm matrisi
    Y = R1 * T2 * R2 * T3;
    
    % Yeni koordinatlar bulmak
    Y1 = Y * [0; 0; 0; 1];
    x(3) = Y1(1);
    y(3) = Y1(2);
    % dördüncü nokta bulma
    
    %dönüþüm matrisi
    Y = R1 * T2 * R2 * T3 * R3 * T4;
    
    % Yeni koordinatlar bulmak
    Y1 = Y * [0; 0; 0; 1];
    x(4) = Y1(1);
    y(4) = Y1(2);

 
    
    %Bir sonraki satýrýn çizileceði zaman 
    %görülmeyecek þekilde önceden çizilen çizgiyi siler.
    delete(l);
    delete(l5);
    delete(l6);
    delete(l7);
    delete(l8);
    % çizgi çizip eksenleri düzeltir
    l = line(x, y);
    hold on;
    l1 = plot(x(1), y(1), 'r.');
    l2 = plot(x(2), y(2), 'r.');
    l3 = plot(x(3), y(3), 'r.');
    l4 = plot(x(4), y(4), 'ro');
    l1.MarkerSize = 1;
    l2.MarkerSize = 1;
    l3.MarkerSize = 1;
    l4.MarkerSize = 5;
    l5 = plot(x(1), y(1), 'gs');
    l6 = plot(x(2), y(2), 'gs');
    l7 = plot(x(3), y(3), 'gs');
    l8 = plot(x(4), y(4), 'gs');
    axis([-5 5 -5 5]);
    % Sonraki iterasyona geçmeden önce 0.01 saniye bekle
    pause(0.01);
end
% --- Executes on button press in temiz.
function temiz_Callback(hObject, eventdata, handles)
% hObject    handle to temiz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
cla('reset')

set(handles.edit4,'String',' ');
set(handles.edit5,'String',' ');
set(handles.edit6,'String',' ');




% --- Executes on button press in kapat.
function kapat_Callback(hObject, eventdata, handles)
% hObject    handle to kapat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1);



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val1 = get(hObject,'Value') ;
set(handles.edit4,'String',val1);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val2 = get(hObject,'Value') ;
set(handles.edit5,'String',val2);

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val3 = get(hObject,'Value') ;
set(handles.edit6,'String',val3);

% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
