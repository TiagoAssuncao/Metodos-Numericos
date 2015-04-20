function varargout = newton(varargin)
%NEWTON M-file for newton.fig
%      NEWTON, by itself, creates a new NEWTON or raises the existing
%      singleton*.
%
%      H = NEWTON returns the handle to a new NEWTON or the handle to
%      the existing singleton*.
%
%      NEWTON('Property','Value',...) creates a new NEWTON using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to newton_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      NEWTON('CALLBACK') and NEWTON('CALLBACK',hObject,...) call the
%      local function named CALLBACK in NEWTON.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newton

% Last Modified by GUIDE v2.5 01-Apr-2015 17:32:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newton_OpeningFcn, ...
                   'gui_OutputFcn',  @newton_OutputFcn, ...
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


% --- Executes just before newton is made visible.
function newton_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for newton
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newton wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newton_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
funcao = get(handles.getfuncao, 'String');
valor = get(handles.getvalor, 'String');
precisao = get(handles.getprecisao, 'String');


set(handles.resposta, 'String', funcao)


function getfuncao_Callback(hObject, eventdata, handles)
% hObject    handle to getfuncao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of getfuncao as text
%        str2double(get(hObject,'String')) returns contents of getfuncao as a double


% --- Executes during object creation, after setting all properties.
function getfuncao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to getfuncao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function getvalor_Callback(hObject, eventdata, handles)
% hObject    handle to getvalor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of getvalor as text
%        str2double(get(hObject,'String')) returns contents of getvalor as a double


% --- Executes during object creation, after setting all properties.
function getvalor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to getvalor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function getprecisao_Callback(hObject, eventdata, handles)
% hObject    handle to getprecisao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of getprecisao as text
%        str2double(get(hObject,'String')) returns contents of getprecisao as a double


% --- Executes during object creation, after setting all properties.
function getprecisao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to getprecisao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
