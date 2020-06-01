
function varargout = PN(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PN_OpeningFcn, ...
                   'gui_OutputFcn',  @PN_OutputFcn, ...
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

function PN_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);
load value.mat record
record.clear
save value.mat record -nocompression

function varargout = PN_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function note28_Callback(hObject, eventdata, handles)
xx1 = setkey2note(28);
soundsc(xx1);



function note30_Callback(hObject, eventdata, handles)
xx1 = setkey2note(30);
soundsc(xx1);

function Untitled_1_Callback(hObject, eventdata, handles)

function note32_Callback(hObject, eventdata, handles)
xx1 = setkey2note(32);
soundsc(xx1);


function note35_Callback(hObject, eventdata, handles)
xx1 = setkey2note(35);
soundsc(xx1);

function note33_Callback(hObject, eventdata, handles)
xx1 = setkey2note(33);
soundsc(xx1);

function note37_Callback(hObject, eventdata, handles)
 xx1 = setkey2note(37);
soundsc(xx1);

function note39_Callback(hObject, eventdata, handles)
xx1 = setkey2note(39);
soundsc(xx1);

function note40_Callback(hObject, eventdata, handles)
xx1 = setkey2note(40);
soundsc(xx1);


function note42_Callback(hObject, eventdata, handles)
xx1 = setkey2note(42);
soundsc(xx1);

function note44_Callback(hObject, eventdata, handles)
xx1 = setkey2note(44);
soundsc(xx1);

function note45_Callback(hObject, eventdata, handles)
xx1 = setkey2note(45);
soundsc(xx1);


function note49_Callback(hObject, eventdata, handles)
xx1 = setkey2note(49);
soundsc(xx1);

function note47_Callback(hObject, eventdata, handles)
xx1 = setkey2note(47);
soundsc(xx1);


function note52_Callback(hObject, eventdata, handles)
xx1 = setkey2note(52);
soundsc(xx1);

function note51_Callback(hObject, eventdata, handles)
xx1 = setkey2note(51);
soundsc(xx1);


function note56_Callback(hObject, eventdata, handles)
xx1 = setkey2note(56);
soundsc(xx1);


function note54_Callback(hObject, eventdata, handles)
xx1 = setkey2note(54);
soundsc(xx1);

function note57_Callback(hObject, eventdata, handles)
xx1 = setkey2note(57);
soundsc(xx1);

function note59_Callback(hObject, eventdata, handles)
xx1 = setkey2note(59);
soundsc(xx1);

function note61_Callback(hObject, eventdata, handles)
xx1 = setkey2note(61);
soundsc(xx1);

function note63_Callback(hObject, eventdata, handles)
xx1 = setkey2note(63); 
soundsc(xx1);

function note29_Callback(hObject, eventdata, handles)
xx1 = setkey2note(29);
soundsc(xx1);


function note43_Callback(hObject, eventdata, handles)
xx1 = setkey2note(43);
soundsc(xx1);

function note41_Callback(hObject, eventdata, handles)
xx1 = setkey2note(41);
soundsc(xx1);


function note38_Callback(hObject, eventdata, handles)
xx1 = setkey2note(38);
soundsc(xx1);

function note36_Callback(hObject, eventdata, handles)
xx1 = setkey2note(36);
soundsc(xx1);


function note34_Callback(hObject, eventdata, handles)
xx1 = setkey2note(34);
soundsc(xx1);

function note31_Callback(hObject, eventdata, handles)
xx1 = setkey2note(31);
soundsc(xx1);

function note53_Callback(hObject, eventdata, handles)
xx1 = setkey2note(53);
soundsc(xx1);


function note50_Callback(hObject, eventdata, handles)
xx1 = setkey2note(50);
soundsc(xx1);

function note48_Callback(hObject, eventdata, handles)
xx1 = setkey2note(51);
soundsc(xx1);

function note62_Callback(hObject, eventdata, handles)
xx1 = setkey2note(62);
soundsc(xx1);

function note55_Callback(hObject, eventdata, handles)
xx1 = setkey2note(55);
soundsc(xx1);

function note46_Callback(hObject, eventdata, handles)
xx1 = setkey2note(46);
soundsc(xx1);

function note60_Callback(hObject, eventdata, handles)
xx1 = setkey2note(60);
soundsc(xx1);


function note58_Callback(hObject, eventdata, handles)
xx1 = setkey2note(58);
soundsc(xx1);



function record_Callback(hObject, eventdata, handles)
global val;
val = get(handles.record,'value');


function play_Callback(hObject, eventdata, handles)
global val;
if(val==1)
    load value.mat record;
    scale.durations  = 1*ones(1,record.size);
    fs = 11025;
    xx = zeros(1, sum(scale.durations)*fs + record.size);
    n1 = 1;
    for kk = 1:record.size;
        keynum    = record.poll;
    
        tone      = key2note(1*exp(j*pi),keynum,scale.durations(kk));
    
        n2        = n1 + length(tone) - 1;
        xx(n1:n2) = xx(n1:n2) + tone;
        n1 = n2 + 1;
    end 
    dur = length(xx);
    env = [linspace(70,120,floor(dur/10)) linspace(120,80,floor(dur/10)) linspace(80,65,floor(dur/2)) linspace(65,0,floor(3*dur/10))];
    fark= length(xx) - length(env); 
    env = [env zeros(1,fark)];
    xx = env.*xx;
    soundsc(xx,fs);
else
    disp('No recorded song')
end

function pushbutton49_Callback(hObject, eventdata, handles)

load value.mat record
record.clear
save value.mat record -nocompression

function signal_Callback(hObject, eventdata, handles)


function spectrogram_Callback(hObject, eventdata, handles)
