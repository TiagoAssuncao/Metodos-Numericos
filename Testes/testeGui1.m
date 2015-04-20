function varargout = testeGui1(varargin)
% TESTEGUI1 MATLAB code for testeGui1.fig
%      TESTEGUI1, by itself, creates a new TESTEGUI1 or raises the existing
%      singleton*.
%
%      H = TESTEGUI1 returns the handle to a new TESTEGUI1 or the handle to
%      the existing singleton*.
%
%      TESTEGUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTEGUI1.M with the given input arguments.
%
%      TESTEGUI1('Property','Value',...) creates a new TESTEGUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before testeGui1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to testeGui1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help testeGui1

% Last Modified by GUIDE v2.5 25-Mar-2015 23:59:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @testeGui1_OpeningFcn, ...
                   'gui_OutputFcn',  @testeGui1_OutputFcn, ...
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


% --- Executes just before testeGui1 is made visible.
function testeGui1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to testeGui1 (see VARARGIN)

% Choose default command line output for testeGui1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes testeGui1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = testeGui1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ponto1_Callback(hObject, eventdata, handles)
% hObject    handle to ponto1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ponto1 as text
%        str2double(get(hObject,'String')) returns contents of ponto1 as a double


% --- Executes during object creation, after setting all properties.
function ponto1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ponto1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ponto2_Callback(hObject, eventdata, handles)
% hObject    handle to ponto2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ponto2 as text
%        str2double(get(hObject,'String')) returns contents of ponto2 as a double


% --- Executes during object creation, after setting all properties.
function ponto2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ponto2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function resultado_Callback(hObject, eventdata, handles)
% hObject    handle to resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultado as text
%        str2double(get(hObject,'String')) returns contents of resultado as a double


% --- Executes during object creation, after setting all properties.
function resultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fechar.
function fechar_Callback(hObject, eventdata, handles)
% hObject    handle to fechar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;

% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
% hObject    handle to calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p1 = str2num(get(findobj(gcf, 'Tag', 'ponto1'), 'String'));
p2 = str2num(get(findobj(gcf, 'Tag', 'ponto2'), 'String'));
parte1=p2+p1;
% parte2 = parte1.^2;
% parte3 = sum(parte2);
% d = sqrt(parte3);

set(findobj(gcf, 'Tag', 'resultado'), 'String', parte1);
