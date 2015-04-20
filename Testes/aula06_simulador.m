function varargout = aula06_simulador(varargin)
% AULA06_SIMULADOR MATLAB code for aula06_simulador.fig
%      AULA06_SIMULADOR, by itself, creates a new AULA06_SIMULADOR or raises the existing
%      singleton*.
%
%      H = AULA06_SIMULADOR returns the handle to a new AULA06_SIMULADOR or the handle to
%      the existing singleton*.
%
%      AULA06_SIMULADOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AULA06_SIMULADOR.M with the given input arguments.
%
%      AULA06_SIMULADOR('Property','Value',...) creates a new AULA06_SIMULADOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before aula06_simulador_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to aula06_simulador_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help aula06_simulador

% Last Modified by GUIDE v2.5 07-Sep-2014 22:21:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @aula06_simulador_OpeningFcn, ...
                   'gui_OutputFcn',  @aula06_simulador_OutputFcn, ...
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


% --- Executes just before aula06_simulador is made visible.
function aula06_simulador_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to aula06_simulador (see VARARGIN)

% Choose default command line output for aula06_simulador
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes aula06_simulador wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = aula06_simulador_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function n_mantissa_Callback(hObject, eventdata, handles)
% hObject    handle to n_mantissa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_mantissa as text
%        str2double(get(hObject,'String')) returns contents of n_mantissa as a double


% --- Executes during object creation, after setting all properties.
function n_mantissa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_mantissa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_expoente_Callback(hObject, eventdata, handles)
% hObject    handle to n_expoente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_expoente as text
%        str2double(get(hObject,'String')) returns contents of n_expoente as a double


% --- Executes during object creation, after setting all properties.
function n_expoente_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_expoente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_x_Callback(hObject, eventdata, handles)
% hObject    handle to n_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_x as text
%        str2double(get(hObject,'String')) returns contents of n_x as a double


% --- Executes during object creation, after setting all properties.
function n_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_y_Callback(hObject, eventdata, handles)
% hObject    handle to n_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_y as text
%        str2double(get(hObject,'String')) returns contents of n_y as a double


% --- Executes during object creation, after setting all properties.
function n_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_y (see GCBO)
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

t_x = get(handles.n_x, 'String');
t_y = get(handles.n_y, 'String');
t_m = get(handles.n_mantissa, 'String');
t_e = get(handles.n_expoente, 'String');

v_x = str2num(t_x); % valor de x
v_y = str2num(t_y); % valor de y
v_m = str2num(t_m); % mantissa
v_e = str2num(t_e); % expoente

if (~isempty(v_x) && ~isempty(v_y) && ~isempty(v_m) && ~isempty(v_e))
    
    if (v_m<1)
        v_m = 4;
        set(handles.n_mantissa, 'String', num2str(v_m));
    end
    
    if (v_m>50)
        v_m = 50;
        set(handles.n_mantissa, 'String', num2str(v_m));
    end
    
    if (v_e<1)
        v_e = 10;
        set(handles.n_expoente, 'String', num2str(v_e));
    end
    
    if (v_e>300)
        v_e = 300;
        set(handles.n_expoente, 'String', num2str(v_e));
    end

    if (v_x~=0)
        exp_x = floor(log10(abs(v_x)))+1;
    else
        exp_x = 0;
    end
    
    if (v_y~=0)
        exp_y = floor(log10(abs(v_y)))+1;
    else
        exp_y = 0;
    end

    if (abs(exp_x)<v_e)
        v_a = floor(v_x/10^(exp_x-v_m))/10^(v_m);
        t_a = num2str(v_a);

        for i=1:(v_m-length(t_a)+2)
            t_a = strcat(t_a,'0');
        end

        t_a = strcat(t_a,' E ',num2str(exp_x));
        v_a = v_a*10^(exp_x);
    elseif (exp_x>v_e)
        t_a = 'overflow';
    else
        t_a = 'underflow';
    end

    if (abs(exp_y)<v_e)
        v_b = floor(v_y/10^(exp_y-v_m))/10^(v_m);
        t_b = num2str(v_b);

        for i=1:(v_m-length(t_b)+2)
            t_b = strcat(t_b,'0');
        end

        t_b = strcat(t_b,' E ',num2str(exp_y));
        v_b = v_b*10^(exp_y);
    elseif (exp_y>v_e)
        t_b = 'overflow';
    else
        t_b = 'underflow';
    end

    if (strcmp(t_a,'overflow') || strcmp(t_a,'underflow') || strcmp(t_b,'overflow') || strcmp(t_b,'underflow'))

        t_soma = '--';
        t_subtracao = '--';
        t_multiplicacao = '--';
        t_divisao = '--';

        set(handles.n_a, 'String', t_a);
        set(handles.n_b, 'String', t_b);
        
    else

        set(handles.n_a, 'String', t_a);
        set(handles.n_b, 'String', t_b);

        v_soma = v_a+v_b;
        v_subtracao = v_a-v_b;
        v_multiplicacao = v_a*v_b;
        v_divisao = v_a/v_b;
        
        if (v_soma~=0)
            exp_soma = floor(log10(abs(v_soma)))+1;
        else
            exp_soma = 0;
        end
        if (v_subtracao~=0)
            exp_subtracao = floor(log10(abs(v_subtracao)))+1;
        else
            exp_subtracao = 0;
        end
        
        if (v_multiplicacao~=0)
            exp_multiplicacao = floor(log10(abs(v_multiplicacao)))+1;
        else
            exp_multiplicacao = 0;
        end
        
        if (v_divisao~=0)
            exp_divisao = floor(log10(abs(v_divisao)))+1;
        else
            exp_divisao = 0;
        end

        if (abs(exp_soma)<v_e)
            v_soma = floor(v_soma/10^(exp_soma-v_m))/10^(v_m);
            t_soma = num2str(v_soma);

            for i=1:(v_m-length(t_soma)+2)
                t_soma = strcat(t_soma,'0');
            end

            t_soma = strcat(t_soma,' E ',num2str(exp_soma));
        elseif (exp_soma>v_e)
            t_soma = 'overflow';
        else
            t_soma = 'underflow';
        end

        if (abs(exp_subtracao)<v_e)
            v_subtracao = floor(v_subtracao/10^(exp_subtracao-v_m))/10^(v_m);
            t_subtracao = num2str(v_subtracao);

            for i=1:(v_m-length(t_subtracao)+2)
                t_subtracao = strcat(t_subtracao,'0');
            end

            t_subtracao = strcat(t_subtracao,' E ',num2str(exp_subtracao));
        elseif (exp_subtracao>v_e)
            t_subtracao = 'overflow';
        else
            t_subtracao = 'underflow';
        end

        if (abs(exp_multiplicacao)<v_e)
            v_multiplicacao = floor(v_multiplicacao/10^(exp_multiplicacao-v_m))/10^(v_m);
            t_multiplicacao = num2str(v_multiplicacao);

            for i=1:(v_m-length(t_multiplicacao)+2)
                t_multiplicacao = strcat(t_multiplicacao,'0');
            end

            t_multiplicacao = strcat(t_multiplicacao,' E ',num2str(exp_multiplicacao));
        elseif (exp_multiplicacao>v_e)
            t_multiplicacao = 'overflow';
        else
            t_multiplicacao = 'underflow';
        end

        if (abs(exp_divisao)<v_e)
            v_divisao = floor(v_divisao/10^(exp_divisao-v_m))/10^(v_m);
            t_divisao = num2str(v_divisao);

            for i=1:(v_m-length(t_divisao)+2)
                t_divisao = strcat(t_divisao,'0');
            end

            t_divisao = strcat(t_divisao,' E ',num2str(exp_divisao));
        elseif (exp_divisao>v_e)
            t_divisao = 'overflow';
        else
            t_divisao = 'underflow';
        end
    end

    set(handles.n_soma, 'String', t_soma);
    set(handles.n_subtracao, 'String', t_subtracao);
    set(handles.n_multiplicacao, 'String', t_multiplicacao);
    set(handles.n_divisao, 'String', t_divisao);

end




function n_a_Callback(hObject, eventdata, handles)
% hObject    handle to n_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_a as text
%        str2double(get(hObject,'String')) returns contents of n_a as a double


% --- Executes during object creation, after setting all properties.
function n_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_b_Callback(hObject, eventdata, handles)
% hObject    handle to n_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_b as text
%        str2double(get(hObject,'String')) returns contents of n_b as a double


% --- Executes during object creation, after setting all properties.
function n_b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_soma_Callback(hObject, eventdata, handles)
% hObject    handle to n_soma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_soma as text
%        str2double(get(hObject,'String')) returns contents of n_soma as a double


% --- Executes during object creation, after setting all properties.
function n_soma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_soma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_subtracao_Callback(hObject, eventdata, handles)
% hObject    handle to n_subtracao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_subtracao as text
%        str2double(get(hObject,'String')) returns contents of n_subtracao as a double


% --- Executes during object creation, after setting all properties.
function n_subtracao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_subtracao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_multiplicacao_Callback(hObject, eventdata, handles)
% hObject    handle to n_multiplicacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_multiplicacao as text
%        str2double(get(hObject,'String')) returns contents of n_multiplicacao as a double


% --- Executes during object creation, after setting all properties.
function n_multiplicacao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_multiplicacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_divisao_Callback(hObject, eventdata, handles)
% hObject    handle to n_divisao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_divisao as text
%        str2double(get(hObject,'String')) returns contents of n_divisao as a double


% --- Executes during object creation, after setting all properties.
function n_divisao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_divisao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
