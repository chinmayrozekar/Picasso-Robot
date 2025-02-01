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

port = serial('COM1', 'BaudRate', 9600, 'DataBits', 8, 'Parity', 'none',...
'StopBits', 1, 'Timeout',5000, 'Terminator', 13);

pause(0.5);
if (~isempty(port)) 
    fopen(port); pause(0.5);
end

%% Turn Servos on

command = sprintf('PRN SVO'); fprintf(port, command); ;

%% Send a MovePoint serial command to Picasso x = 302;

x = 302;
y = 0;
z = 300;
command = sprintf('PRN MP,%1.1f,%1.1f,%1.1f', x, y, z);
fprintf(port, command);
%pause(3);

%% Position Definitiaon #1

pNumber=1;
x = 250;
y = -120;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)

pNumber=2;

x = 250;
y = -100;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)


pNumber=3;
x = 250;
y = -80;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=4;
x = 250;
y = -60;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=5;
x = 280;
y = -120;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=6;
x = 280;
y = -100;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=7;
x = 280;
y = -80;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=8;
x = 280;
y = -60;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=9;
x = 310;
y = -120;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=10;

x = 310;
y = -100;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=11;
x = 310;
y = -80;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=12;
x = 310;
y = -60;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=13;
x = 340;
y = -120;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=14;
x = 340;
y = -100;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)
pNumber=15;
x = 340;
y = -80;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)

pNumber=16;
x = 340;
y = -60;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)

%% pick up action
pNumber=17;
x = 340;
y = -100;
z = 300;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)

%% put down action
pNumber=18;
x = 340;
y = -80;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)

%%  left midpoint 
pNumber=19;
x = 290;
y = -130;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)

%%  right midpoint 
pNumber=20;
x = 290;
y = -50;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f',pNumber,x,y,z) ;
fprintf(port, command);
%pause(3)

%% Move to Defined Position #1 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 2); fprintf(port, command); pause(3);

%% Move to Defined Position #2 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 3); fprintf(port, command); pause(3);

%% Move to Defined Position #3 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 7); fprintf(port, command); pause(3);

%% Move to Defined Position #4 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 8); fprintf(port, command); pause(3);

%% Move to Defined Position #5 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 12); fprintf(port, command); pause(3);

%% Move to Defined Position #6 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 11); fprintf(port, command); pause(3);

%% Move to Defined Position #7 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 15); fprintf(port, command); pause(3);

%% Move to Defined Position #8 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 14); fprintf(port, command); pause(3);

%% Move to Defined Position #9 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 10); fprintf(port, command); pause(3);

%% Move to Defined Position #10 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 9); fprintf(port, command); pause(3);

%% Move to Defined Position #11 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 5); fprintf(port, command); pause(3);

%% Move to Defined Position #12 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 6); fprintf(port, command); pause(3);

%% Move to Defined Position #13 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 10); fprintf(port, command); pause(3);

%% Move to Defined Position #14 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 11); fprintf(port, command); pause(3);

%% Move to Defined Position #15 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 7); fprintf(port, command); pause(3);

%% Move to Defined Position #16 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 6); fprintf(port, command); pause(3);

%% Move to Defined Position #17 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 2); fprintf(port, command); pause(3);

%% Move to Defined Position #18 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 1); fprintf(port, command); pause(3);

%% Move to Defined Position #19 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 5); fprintf(port, command); pause(3);

%% Move to Defined Position #20 "MDP pNumber"
command = sprintf('PRN MDPR,%1.1f,%1.1f,%1.1f', 5, 19, 9); fprintf(port, command); pause(3);

%% Move to Defined Position #21 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 13); fprintf(port, command); pause(3);

%% Move to Defined Position #22 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 14); fprintf(port, command); pause(3);

%% Move to Defined Position #23 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 17); fprintf(port, command); pause(3);

%% Move to Defined Position #24 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 15); fprintf(port, command); pause(3);

%% Move to Defined Position #25 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 18); fprintf(port, command); pause(3);

%% Move to Defined Position #26 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 16); fprintf(port, command); pause(3);

%% Move to Defined Position #27 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 12); fprintf(port, command); pause(3);

%% Move to Defined Position #28 "MDP pNumber"
command = sprintf('PRN MDPR,%1.1f,%1.1f,%1.1f', 12, 20, 8); fprintf(port, command); pause(3);

%% Move to Defined Position #29 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 4); fprintf(port, command); pause(3);

%% Move to Defined Position #30 "MDP pNumber"
command = sprintf('PRN MDP,%1.1f', 3); fprintf(port, command); pause(3);

%% "HO" Command used for moving the robot to a predefined home position
command = sprintf('PRN HO'); fprintf(port, command); pause(3);
fclose(port);
