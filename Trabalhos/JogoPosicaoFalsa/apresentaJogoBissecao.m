function varargout = apresentaJogoBissecao(varargin)
% APRESENTAJOGOBISSECAO MATLAB code for apresentaJogoBissecao.fig
%      APRESENTAJOGOBISSECAO, by itself, creates a new APRESENTAJOGOBISSECAO or raises the existing
%      singleton*.
%
%      H = APRESENTAJOGOBISSECAO returns the handle to a new APRESENTAJOGOBISSECAO or the handle to
%      the existing singleton*.
%
%      APRESENTAJOGOBISSECAO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APRESENTAJOGOBISSECAO.M with the given input arguments.
%
%      APRESENTAJOGOBISSECAO('Property','Value',...) creates a new APRESENTAJOGOBISSECAO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before apresentaJogoBissecao_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to apresentaJogoBissecao_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help apresentaJogoBissecao

% Last Modified by GUIDE v2.5 27-Mar-2015 17:06:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @apresentaJogoBissecao_OpeningFcn, ...
                   'gui_OutputFcn',  @apresentaJogoBissecao_OutputFcn, ...
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


% --- Executes just before apresentaJogoBissecao is made visible.
function apresentaJogoBissecao_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to apresentaJogoBissecao (see VARARGIN)

% Choose default command line output for apresentaJogoBissecao
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes apresentaJogoBissecao wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = apresentaJogoBissecao_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

global acertou;
% --- Executes on button press in jogar.
function jogar_Callback(hObject, eventdata, handles)
% hObject    handle to jogar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.jogar, 'Enable', 'off')
calculaBissecao(handles)

function calculaBissecao(handles)

load arq2;

     maior = 0;
     chuteH = get(handles.edit1, 'String');
     chuteH = str2num(chuteH);
     set(handles.display, 'String', chuteH);
     pause(2);
     if(((pontoC + erro) > chuteH )&& ((pontoC - erro) < chuteH))
         fechou;
         waitfor(fechou);
         close;
     else
         set(handles.display, 'String', 'Voce errou!! O seu oponente ira jogar')
         pause(2);
         if(chuteH > pontoC)
             set(handles.display, 'String', 'A resposta eh menor')
         else
             set(handles.display, 'String', 'A resposta eh maior')
             maior = 1;
         end
         pause(1);
     end

     if(maior == 1)
        chutePC = (chuteH + a)/2;
     else
        chutePC = (chuteH + b)/2;
     end

     set(handles.display, 'String', strcat('O valor digitado pela maquina foi: ', num2str(chutePC) ))
     pause(4);
     set(handles.display, 'String', 'Carregando resultado...')
     pause(2);
     if(((pontoC + erro) > chutePC )&& ((pontoC - erro) < chutePC))
         set(handles.display, 'String', 'Voce Perdeu!!')
         pause(2);
         set(handles.display, 'String', 'A maquina ganhou')
         pause(2);
         close;
     else
         set(handles.display, 'String', 'A maquina errou. Tente novamente')
         
         pause(3);
         if(chuteH > pontoC)
             set(handles.display, 'String', 'A resposta da maquina foi menor que o resultado')
            pause(3);
         else
             set(handles.display, 'String', 'A resposta da maquina foi maior que o resultado')
             
         pause(3);
         end
     end
     set(handles.jogar, 'Enable', 'on');
     set(handles.display, 'String', 'Jogue um novo valor!!');

     
% --- Executes on button press in iniciar.
function iniciar_Callback(hObject, eventdata, handles)
% hObject    handle to iniciar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.iniciar, 'Visible', 'off')
i=0;
texto = 'Carregando';
while(i<10)
    
     set(handles.display, 'String', texto)
    texto = strcat(texto, '.');
    pause(0.5);
    i = i+1;
end

set(handles.display, 'String', 'Pronto para Jogar!!!')
    pause(1);
set(handles.display, 'String', 'Dê seu melhor golpe')
set(handles.jogar, 'String', 'Mandar o Golpe')



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
