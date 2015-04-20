function varargout = fechou(varargin)
% FECHOU MATLAB code for fechou.fig
%      FECHOU, by itself, creates a new FECHOU or raises the existing
%      singleton*.
%
%      H = FECHOU returns the handle to a new FECHOU or the handle to
%      the existing singleton*.
%
%      FECHOU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FECHOU.M with the given input arguments.
%
%      FECHOU('Property','Value',...) creates a new FECHOU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fechou_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fechou_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fechou

% Last Modified by GUIDE v2.5 26-Mar-2015 23:35:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fechou_OpeningFcn, ...
                   'gui_OutputFcn',  @fechou_OutputFcn, ...
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


% --- Executes just before fechou is made visible.
function fechou_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fechou (see VARARGIN)

% Choose default command line output for fechou
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fechou wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fechou_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
