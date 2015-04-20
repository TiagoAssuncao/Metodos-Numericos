function varargout = splines(varargin)
% SPLINES MATLAB code for splines.fig
%      SPLINES, by itself, creates a new SPLINES or raises the existing
%      singleton*.
%
%      H = SPLINES returns the handle to a new SPLINES or the handle to
%      the existing singleton*.
%
%      SPLINES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPLINES.M with the given input arguments.
%
%      SPLINES('Property','Value',...) creates a new SPLINES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before splines_OpeningFcn gets caulled.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to splines_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help splines

% Last Modified by GUIDE v2.5 10-Nov-2014 23:32:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @splines_OpeningFcn, ...
                   'gui_OutputFcn',  @splines_OutputFcn, ...
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


% --- Executes just before splines is made visible.
function splines_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to splines (see VARARGIN)

% Choose default command line output for splines
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% Posição do Gráfico:

pos_graf = get(handles.axes1, 'position');

% Posição dos pontos dentro do gráfico:

pos_bt1 = get(handles.bt1, 'position')-pos_graf;
pos_bt2 = get(handles.bt2, 'position')-pos_graf;
pos_bt3 = get(handles.bt3, 'position')-pos_graf;
pos_bt4 = get(handles.bt4, 'position')-pos_graf;
pos_bt5 = get(handles.bt5, 'position')-pos_graf;

vx1 = pos_bt1(1)+1;
vy1 = pos_bt1(2)+.5;
vx2 = pos_bt2(1)+1;
vy2 = pos_bt2(2)+.5;
vx3 = pos_bt3(1)+1;
vy3 = pos_bt3(2)+.5;
vx4 = pos_bt4(1)+1;
vy4 = pos_bt4(2)+.5;
vx5 = pos_bt5(1)+1;
vy5 = pos_bt5(2)+.5;


set(handles.posicoes, 'Data', {vx1 vy1; vx2 vy2; vx3 vy3; vx4 vy4; vx5 vy5});

% Splines (insira aqui o código para gerar as Splines)

vx = [vx1 vx2 vx3 vx4 vx5];
vy = [vy1 vy2 vy3 vy4 vy5];

plot(vx, vy);
axis([0,pos_graf(3),0,pos_graf(4)]);

% UIWAIT makes splines wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = splines_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in bt1.
function bt1_Callback(hObject, eventdata, handles)
% hObject    handle to bt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on button press in bt2.
function bt2_Callback(hObject, eventdata, handles)
% hObject    handle to bt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bt3.
function bt3_Callback(hObject, eventdata, handles)
% hObject    handle to bt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bt4.
function bt4_Callback(hObject, eventdata, handles)
% hObject    handle to bt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bt5.
function bt5_Callback(hObject, eventdata, handles)
% hObject    handle to bt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global mover;

if mover
    mover = false;
else
    mover = true;
        pos = get(handles.figure1, 'currentPoint');
    pos(1) = pos(1)-1;
    pos(2) = pos(2)-.5;
    pos(3) = 2;                                     % largura do botão
    pos(4) = 1;                                     % altura do botão

    % Posição do Gráfico:

    pos_graf = get(handles.axes1, 'position');

    if (pos(1)-pos_graf(1)+1>0 && pos(1)-pos_graf(1)+1<80 && pos(2)-pos_graf(2)+.5>0 && pos(2)-pos_graf(2)+.5<25)


        % ----- Verificando qual o botão mais próximo do mouse (quando clicado)
        %                 e modificando sua posição ---------

        pos_bt1 = get(handles.bt1, 'position');
        pos_bt2 = get(handles.bt2, 'position');
        pos_bt3 = get(handles.bt3, 'position');
        pos_bt4 = get(handles.bt4, 'position');
        pos_bt5 = get(handles.bt5, 'position');

        dx12 = pos_bt2(1)-pos_bt1(1);
        dx23 = pos_bt3(1)-pos_bt2(1);
        dx34 = pos_bt4(1)-pos_bt3(1);
        dx45 = pos_bt5(1)-pos_bt4(1);

        if (pos(1)<pos_bt1(1)+dx12/2)
            set(handles.bt1, 'position', pos)    
        elseif (pos(1)<pos_bt2(1)+dx23/2)
            set(handles.bt2, 'position', pos)    
        elseif (pos(1)<pos_bt3(1)+dx34/2)
            set(handles.bt3, 'position', pos)    
        elseif (pos(1)<pos_bt4(1)+dx45/2)
            set(handles.bt4, 'position', pos)    
        else
            set(handles.bt5, 'position', pos)    
        end

        % ------- Desenhando splines_2 (Modificar esta parte para as splines_2 Cúbicas)


        % Posição dos pontos dentro do gráfico:

        pos_bt1 = get(handles.bt1, 'position')-pos_graf;
        pos_bt2 = get(handles.bt2, 'position')-pos_graf;
        pos_bt3 = get(handles.bt3, 'position')-pos_graf;
        pos_bt4 = get(handles.bt4, 'position')-pos_graf;
        pos_bt5 = get(handles.bt5, 'position')-pos_graf;

        vx1 = pos_bt1(1)+1;
        vy1 = pos_bt1(2)+.5;
        vx2 = pos_bt2(1)+1;
        vy2 = pos_bt2(2)+.5;
        vx3 = pos_bt3(1)+1;
        vy3 = pos_bt3(2)+.5;
        vx4 = pos_bt4(1)+1;
        vy4 = pos_bt4(2)+.5;
        vx5 = pos_bt5(1)+1;
        vy5 = pos_bt5(2)+.5;

        dados = {vx1 vy1; vx2 vy2; vx3 vy3; vx4 vy4; vx5 vy5};
        set(handles.posicoes, 'Data', dados);


        % splines_2 (insira aqui o código para gerar as splines_2)

        vx = [vx1 vx2 vx3 vx4 vx5];
        vy = [vy1 vy2 vy3 vy4 vy5];

        plot(vx, vy);
        axis([0,pos_graf(3),0,pos_graf(4)]);

    end
end



% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

pos = get(handles.figure1, 'currentPoint');
pos(1) = pos(1)-1;
pos(2) = pos(2)-.5;
pos(3) = 2;                                     % largura do botão
pos(4) = 1;                                     % altura do botão

% Posição do Gráfico:

pos_graf = get(handles.axes1, 'position');

if (pos(1)-pos_graf(1)+1>0 && pos(1)-pos_graf(1)+1<80 && pos(2)-pos_graf(2)+.5>0 && pos(2)-pos_graf(2)+.5<25)


    % ----- Verificando qual o botão mais próximo do mouse (quando clicado)
    %                 e modificando sua posição ---------

    pos_bt1 = get(handles.bt1, 'position');
    pos_bt2 = get(handles.bt2, 'position');
    pos_bt3 = get(handles.bt3, 'position');
    pos_bt4 = get(handles.bt4, 'position');
    pos_bt5 = get(handles.bt5, 'position');

    dx12 = pos_bt2(1)-pos_bt1(1);
    dx23 = pos_bt3(1)-pos_bt2(1);
    dx34 = pos_bt4(1)-pos_bt3(1);
    dx45 = pos_bt5(1)-pos_bt4(1);

    if (pos(1)<pos_bt1(1)+dx12/2)
        set(handles.bt1, 'position', pos)    
    elseif (pos(1)<pos_bt2(1)+dx23/2)
        set(handles.bt2, 'position', pos)    
    elseif (pos(1)<pos_bt3(1)+dx34/2)
        set(handles.bt3, 'position', pos)    
    elseif (pos(1)<pos_bt4(1)+dx45/2)
        set(handles.bt4, 'position', pos)    
    else
        set(handles.bt5, 'position', pos)    
    end

    % ------- Desenhando Splines (Modificar esta parte para as Splines Cúbicas)


    % Posição dos pontos dentro do gráfico:

    pos_bt1 = get(handles.bt1, 'position')-pos_graf;
    pos_bt2 = get(handles.bt2, 'position')-pos_graf;
    pos_bt3 = get(handles.bt3, 'position')-pos_graf;
    pos_bt4 = get(handles.bt4, 'position')-pos_graf;
    pos_bt5 = get(handles.bt5, 'position')-pos_graf;

    vx1 = pos_bt1(1)+1;
    vy1 = pos_bt1(2)+.5;
    vx2 = pos_bt2(1)+1;
    vy2 = pos_bt2(2)+.5;
    vx3 = pos_bt3(1)+1;
    vy3 = pos_bt3(2)+.5;
    vx4 = pos_bt4(1)+1;
    vy4 = pos_bt4(2)+.5;
    vx5 = pos_bt5(1)+1;
    vy5 = pos_bt5(2)+.5;

    dados = {vx1 vy1; vx2 vy2; vx3 vy3; vx4 vy4; vx5 vy5};
    set(handles.posicoes, 'Data', dados); 

    % Splines (insira aqui o código para gerar as Splines)

    vx = [vx1 vx2 vx3 vx4 vx5];
    vy = [vy1 vy2 vy3 vy4 vy5];

    %cálculo de a:
    
    a1 = vy1;
    a2 = vy2;
    a3 = vy3;
    a4 = vy4;
    a5 = vy5;
    
    %cálculo de c:
    
    h1 = vx2-vx1;
    h2 = vx3-vx2;
    h3 = vx4-vx3;
    h4 = vx5-vx4;
    
    MA = [1 0 0 0 0 ; ...
         h1 2*(h1+h2) h2 0 0; ...
         0 h2 2*(h2+h3) h3 0; ...
         0 0 h3 2*(h3+h4) h4; ...
         0 0 0 0 1];
    
    Mb = [ 0; ...
        3/h2*(a3-a2) - 3/h1*(a2-a1); ...
        3/h3*(a4-a3)- 3/h2*(a3-a2); ...
        3/h4*(a5-a4)- 3/h3*(a4-a3); ...
        0];
    
    %Resolver o sistema MA*c= Mb para encontrar c1,c2,c3 e c4.
    
    Mc = MA\Mb;
      
    c1 = Mc(1);
    c2 = Mc(2);
    c3 = Mc(3);
    c4 = Mc(4);
    c5 = Mc(5);
    
    %Cálculo de b e d:
    
    b1 = 1/h1*(a2-a1) - h1/3*(2*c1+c2);
    b2 = 1/h2*(a3-a2) - h2/3*(2*c2+c3);
    b3 = 1/h3*(a4-a3) - h3/3*(2*c3+c4);
    b4 = 1/h4*(a5-a4) - h4/3*(2*c4+c5);
    
    d1 = (c2-c1)/(3*h1);
    d2 = (c3-c2)/(3*h2);
    d3 = (c4-c3)/(3*h3);
    d4 = (c5-c4)/(3*h4);
        
    % Gráfico
    
    vx_gr1 = linspace(vx1,vx2,20);
    for i=1: 20;
         vy_gr1(i) = a1+b1*(vx_gr1(i)-vx1)+c1*(vx_gr1(i)-vx1)^2+d1*(vx_gr1(i)-vx1)^3;
    end
    
    vx_gr2 = linspace(vx2,vx3,20);
    for i=1:20;
        vy_gr2(i) = a2+b2*(vx_gr2(i)-vx2)+c2*(vx_gr2(i)-vx2)^2+d2*(vx_gr2(i)-vx2)^3;
    end
    
    vx_gr3 = linspace(vx3,vx4,20);
    for i=1:20;
        vy_gr3(i) = a3+b3*(vx_gr3(i)-vx3)+c3*(vx_gr3(i)-vx3)^2+d3*(vx_gr3(i)-vx3)^3;
    end
    
    vx_gr4 = linspace(vx4,vx5,20);
    for i=1:20;
        vy_gr4(i) = a4+b4*(vx_gr4(i)-vx4)+c4*(vx_gr4(i)-vx4)^2+d4*(vx_gr4(i)-vx4)^3;
    end
    
    
    plot(vx_gr1, vy_gr1, vx_gr2, vy_gr2, vx_gr3, vy_gr3, vx_gr4, vy_gr4);
    axis([0,pos_graf(3),0,pos_graf(4)]);

end