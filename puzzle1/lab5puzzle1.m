%10/12/2011 Picasso Lab5 with MELFA BASIC
% Eyup Cinar & Ryan M. Bowen
% Example Matlab File that calls predefined Picasso Commands according
% to the interpreter file written in MELFA Basic
%% Open a serial connection with the Picasso robot
% Close previous serial connections
previous = instrfind('Type','serial');
if(~isempty(previous))
fclose(previous);
end
%% Open a serial connection (default COM1, can be changed)
port = serial('COM1', 'BaudRate', 9600, 'DataBits', 8, 'Parity', 'none','StopBits', 1, 'Timeout',5000, 'Terminator', 13)
pause(0.5);
if (~isempty(port)) fopen(port); pause(0.5);
end
%% Turn Servos on
command = sprintf('PRN SVO'); fprintf(port, command); pause(3);
%% Send a MovePoint serial command to Picasso 
x = 300;
y = 0;
z = 300;
command = sprintf('PRN MP,%1.1f,%1.1f,%1.1f', x, y, z);
fprintf(port, command);
pause(3);
%% Position Definitiaon
pNumber=1;
x = 250;
y = -40;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

% Number of Index for your position that will be stored
%in the position memory should be UNIQUE for Each position
pNumber=2;
x = 310;
y = -40;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

%% Define another position #2 with different x,y,z
pNumber=3;
x = 370;
y = -40;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=4;
x = 280;
y = -70;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
pNumber=5;
x = 310;
y = -70;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=6;
x = 340;
y = -70;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=7;
x = 250;
y = -100;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=8;
x = 280;
y = -100;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=9;
x = 340;
y = -100;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=10;
x = 370;
y = -100;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=11;
x = 280;
y = -130;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=12;
x = 310;
y = -130;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=13;
x = 340;
y = -130;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=14;
x = 250;
y = -160;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=15;
x = 310;
y = -160;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

pNumber=16;
x = 370;
y = -160;
z = 237;

command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);

% pNumber=17;
% x = 275;
% y = 124;
% z = 237;
% 
% command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
% fprintf(port, command);
% 
% pNumber=18;
% x = 325;
% y = 124;
% z = 237;
% 
% command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
% fprintf(port, command);
% 
% pNumber=19;
% x = 325;
% y = 72;
% z = 237;
% command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
% fprintf(port, command);
% 
% pNumber=20;
% x = 325;
% y = 24;
% z = 237;
% 
% command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
% fprintf(port, command);
% 
% pNumber=21;
% x = 275;
% y = 24;
% z = 237;
% 
% command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
% fprintf(port, command);
% 
% pNumber=22;
% x = 225;
% y = 24;
% z = 237;
% 
% command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
% fprintf(port, command);
% pause(3)
%% Move to Defined Position #1 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 1); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 2); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 4); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 5); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 6); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 2); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 3); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 10); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 6); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 9); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 5); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 8); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 4); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 7); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 11); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 8); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 12); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 11); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 15); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 13); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 12); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 9); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 13); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 10); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 16); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 15); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 14); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 7); fprintf(port, command); pause(3);
command = sprintf('PRN MDP,%1.1f', 1); fprintf(port, command); pause(3);


%% Move to Defined Position #2 "MDP pNumber"
%command = sprintf('PRN MDP,%1.1f', 2); fprintf(port, command); pause(3);
%% "HO" Command used for moving the robot to a predefined home position
command = sprintf('PRN HO'); fprintf(port, command); pause(3);
fclose(port);