%Arthur Luis Komatsu Aroeira - Trabalho da formiga
%13/0102750

function varargout = formiga(varargin)
% FORMIGA M-file for formiga.fig
%      FORMIGA, by itself, creates a new FORMIGA or raises the existing
%      singleton*.
%
%      H = FORMIGA returns the handle to a new FORMIGA or the handle to
%      the existing singleton*.
%
%      FORMIGA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FORMIGA.M with the given input arguments.
%
%      FORMIGA('Property','Value',...) creates a new FORMIGA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before formiga_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to formiga_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help formiga

% Last Modified by GUIDE v2.5 18-Oct-2014 15:02:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @formiga_OpeningFcn, ...
                   'gui_OutputFcn',  @formiga_OutputFcn, ...
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


% --- Executes just before formiga is made visible.
function formiga_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to formiga (see VARARGIN)

% Choose default command line output for formiga
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes formiga wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global pos_x dist area Fragelli xpol ypol x2 y2;

pos_x = 0;
dist = 0;
area = 0;
Fragelli=0;
xpol = [0];
ypol = [0];
x2=[0];
y2=[0];


% --- Outputs from this function are returned to the command line.
function varargout = formiga_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in botao01.
function botao01_Callback(hObject, eventdata, handles)
% hObject    handle to botao01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global pos_x incr dist xpol ypol area Fragelli;

if Fragelli==0
    text10=strcat('Escolha a função primeiro, jovem!');
    set(handles.text10,'string',text10);
end

%sin(x^2)
if Fragelli==1
    text10=strcat('');
    set(handles.text10,'string',text10);
    x0=pos_x;
    y0=sin(x0^2);
  
    valor=get(handles.incr_obj, 'value');
    list_incr=[0.5 0.1 0.05 0.01];
    incr = list_incr(valor);
    pos_x = pos_x+incr;

if (pos_x>1)
    pos_x=1;
end

if(pos_x<=1)
    x=0:0.01:1;
    y=sin(x.^2);

    x1=pos_x;
    y1=sin(x1^2);

    x2=[x1];
    y2=[y1];

    dist=dist+sqrt((x1-x0)^2+(y1-y0)^2);
    area = area+(x1-x0)*(y0+y1)/2;

    texto_x=strcat('x: ',num2str(x2));
    texto_y=strcat('y: ',num2str(y2));
    texto_dist=num2str(dist);
    texto_area=num2str(area);

    set(handles.x_obj,'string',texto_x);
    set(handles.y_obj,'string',texto_y);
    set(handles.dist_obj,'string',texto_dist);
    set(handles.area_obj,'string',texto_area);

    tam = length(xpol);
    xpol(tam+1) = x1;
    ypol(tam+1) = y1;

    cla;
    hold on;

    for i=1:tam
        patch([xpol(i) xpol(i) xpol(i+1) xpol(i+1)], [0 ypol(i) ypol(i+1) 0], 'c');
    end

    plot(x, y);
    plot(x2, y2, '-mo', 'MarkerFaceColor', 'c');

    hold off;
end
end

%-x^x^2+1
if Fragelli==2
    text10=strcat('');
    set(handles.text10,'string',text10);
    x0=pos_x;
    y0=-x0^(x0^2)+1;
  
    valor=get(handles.incr_obj, 'value');
    list_incr=[0.5 0.1 0.05 0.01];
    incr = list_incr(valor);
    pos_x = pos_x+incr;

if (pos_x>1)
    pos_x=1;
end

if(pos_x<=1)
    x=0:0.01:1;
    y=-x.^(x.^2)+1;

    x1=pos_x;
    y1=-x1^(x1^2)+1;

    x2=[x1];
    y2=[y1];

    dist=dist+sqrt((x1-x0)^2+(y1-y0)^2);
    area = area+(x1-x0)*(y0+y1)/2;

    texto_x=strcat('x: ',num2str(x2));
    texto_y=strcat('y: ',num2str(y2));
    texto_dist=num2str(dist);
    texto_area=num2str(area);

    set(handles.x_obj,'string',texto_x);
    set(handles.y_obj,'string',texto_y);
    set(handles.dist_obj,'string',texto_dist);
    set(handles.area_obj,'string',texto_area);

    tam = length(xpol);
    xpol(tam+1) = x1;
    ypol(tam+1) = y1;

    cla;
    hold on;

    for i=1:tam
        patch([xpol(i) xpol(i) xpol(i+1) xpol(i+1)], [0 ypol(i) ypol(i+1) 0], 'c');
    end

    plot(x, y);
    plot(x2, y2, '-mo', 'MarkerFaceColor', 'c');

    hold off;
end
end 

%-exp(-x^2)+1
if Fragelli==3
    text10=strcat('');
    set(handles.text10,'string',text10);
    x0=pos_x;
    y0=-exp(-x0^2)+1;
  
    valor=get(handles.incr_obj, 'value');
    list_incr=[0.5 0.1 0.05 0.01];
    incr = list_incr(valor);
    pos_x = pos_x+incr;

if (pos_x>1)
    pos_x=1;
end

if(pos_x<=1)
    x=0:0.01:1;
    y=-exp(-x.^2)+1;

    x1=pos_x;
    y1=-exp(-x1^2)+1;

    x2=[x1];
    y2=[y1];

    dist=dist+sqrt((x1-x0)^2+(y1-y0)^2);
    area = area+(x1-x0)*(y0+y1)/2;

    texto_x=strcat('x: ',num2str(x2));
    texto_y=strcat('y: ',num2str(y2));
    texto_dist=num2str(dist);
    texto_area=num2str(area);

    set(handles.x_obj,'string',texto_x);
    set(handles.y_obj,'string',texto_y);
    set(handles.dist_obj,'string',texto_dist);
    set(handles.area_obj,'string',texto_area);

    tam = length(xpol);
    xpol(tam+1) = x1;
    ypol(tam+1) = y1;

    cla;
    hold on;

    for i=1:tam
        patch([xpol(i) xpol(i) xpol(i+1) xpol(i+1)], [0 ypol(i) ypol(i+1) 0], 'c');
    end

    plot(x, y);
    plot(x2, y2, '-mo', 'MarkerFaceColor', 'c');

    hold off;
end
end

% --- Executes on selection change in incr_obj.
function incr_obj_Callback(hObject, eventdata, handles)
% hObject    handle to incr_obj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns incr_obj contents as cell array
%        contents{get(hObject,'Value')} returns selected item from incr_obj


% --- Executes during object creation, after setting all properties.
function incr_obj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to incr_obj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in botao02.
function botao02_Callback(hObject, eventdata, handles)
% hObject    handle to botao02 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global pos_x dist xpol ypol area Fragelli;

xpol = [0];
ypol = [0];
dist = 0;
area = 0;
pos_x = 0;
x2=[0];
y2=[0];

if Fragelli==1
    x=0:0.01:1;
    y=sin(x.^2);
    plot(x,y, x2, y2,'o');
end

if Fragelli==2
    x=0:0.01:1;
    y=-x.^(x.^2)+1;
    plot(x,y, x2, y2,'o');
end

if Fragelli==3
    x=0:0.01:1;
    y=-exp(-x.^2)+1;
    plot(x,y, x2, y2,'o');
end

set(handles.x_obj,'string','0');
set(handles.y_obj,'string','0');
set(handles.dist_obj,'string','0');
set(handles.area_obj,'string','0');
text10=strcat('');
set(handles.text10,'string',text10);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%-exp(-x^2)+1
global pos_x dist xpol ypol area Fragelli;
xpol = [0];
ypol = [0];
dist = 0;
area = 0;
pos_x = 0;
Fragelli=3;
x=0:0.01:1;
y=-exp(-x.^2)+1;
plot(x, y);

text10=strcat('');
set(handles.text10,'string',text10);

text11=strcat('Função: 1 - exp(-x^2)');
set(handles.text11,'string',text11);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%-x^x^2+1
global pos_x dist xpol ypol area Fragelli;
xpol = [0];
ypol = [0];
dist = 0;
area = 0;
pos_x = 0;
Fragelli=2;
x=0:0.01:1;
y=-x.^(x.^2)+1;
plot(x, y);

text10=strcat('');
set(handles.text10,'string',text10);

text11=strcat('Função: 1 - x^(x^2)');
set(handles.text11,'string',text11);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%sin(x^2)
global pos_x dist xpol ypol area Fragelli;
xpol = [0];
ypol = [0];
dist = 0;
area = 0;
pos_x = 0;
Fragelli=1;
x=0:0.01:1;
y=sin(x.^2);
plot(x, y);

text10=strcat('');
set(handles.text10,'string',text10);

text11=strcat('Função: sin(x^2)');
set(handles.text11,'string',text11);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over incr_obj.
function incr_obj_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to incr_obj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
