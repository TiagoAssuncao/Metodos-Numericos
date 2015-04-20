function varargout = recebeDadosJogoBissecao(varargin)
% RECEBEDADOSJOGOBISSECAO MATLAB code for recebeDadosJogoBissecao.fig
%      RECEBEDADOSJOGOBISSECAO, by itself, creates a new RECEBEDADOSJOGOBISSECAO or raises the existing
%      singleton*.
%
%      H = RECEBEDADOSJOGOBISSECAO returns the handle to a new RECEBEDADOSJOGOBISSECAO or the handle to
%      the existing singleton*.
%
%      RECEBEDADOSJOGOBISSECAO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECEBEDADOSJOGOBISSECAO.M with the given input arguments.
%
%      RECEBEDADOSJOGOBISSECAO('Property','Value',...) creates a new RECEBEDADOSJOGOBISSECAO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before recebeDadosJogoBissecao_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to recebeDadosJogoBissecao_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help recebeDadosJogoBissecao

% Last Modified by GUIDE v2.5 26-Mar-2015 21:49:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @recebeDadosJogoBissecao_OpeningFcn, ...
                   'gui_OutputFcn',  @recebeDadosJogoBissecao_OutputFcn, ...
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


% --- Executes just before recebeDadosJogoBissecao is made visible.
function recebeDadosJogoBissecao_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to recebeDadosJogoBissecao (see VARARGIN)

% Choose default command line output for recebeDadosJogoBissecao
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes recebeDadosJogoBissecao wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = recebeDadosJogoBissecao_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function funcao_Callback(hObject, eventdata, handles)
% hObject    handle to funcao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcao as text
%        str2double(get(hObject,'String')) returns contents of funcao as a double


% --- Executes during object creation, after setting all properties.
function funcao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funcao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rangeA_Callback(hObject, eventdata, handles)
% hObject    handle to rangeA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rangeA as text
%        str2double(get(hObject,'String')) returns contents of rangeA as a double


% --- Executes during object creation, after setting all properties.
function rangeA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rangeA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rangeB_Callback(hObject, eventdata, handles)
% hObject    handle to rangeB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rangeB as text
%        str2double(get(hObject,'String')) returns contents of rangeB as a double


% --- Executes during object creation, after setting all properties.
function rangeB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rangeB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function erroMaximo_Callback(hObject, eventdata, handles)
% hObject    handle to erroMaximo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of erroMaximo as text
%        str2double(get(hObject,'String')) returns contents of erroMaximo as a double


% --- Executes during object creation, after setting all properties.
function erroMaximo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to erroMaximo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global funcao rangeA rangeB erroMaximo
funcao = get(handles.funcao, 'String');
rangeA = get(handles.rangeA, 'String');
rangeB = get(handles.rangeB, 'String');
erroMaximo = get(handles.erroMaximo, 'String');

rangeA = str2num(rangeA);
rangeB = str2num(rangeB);
erroMaximo = str2num(erroMaximo);

save arq rangeA rangeB funcao erroMaximo;
close
