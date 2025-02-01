
# Picasso Robot Control Project

This project involves controlling a Mitsubishi Industrial Robot (MIR) named **Picasso** using **MATLAB** and predefined commands. The goal is to program the robot to perform precise movements and tasks, such as defining positions and moving through them via serial communication.

---

## **Files Overview**

### **1. lab5puzzle1.m**
- **Purpose:** 
  - Defines and stores a series of positions for the Picasso robot.
  - Sends serial commands to the robot to move between these defined positions.
  - Implements a sequence of movements using MATLAB's serial communication features.
  
- **Key Commands:** 
  - `PRN PD`: Define a position in memory.
  - `PRN MDP`: Move to a defined position.
  - `PRN HO`: Move the robot to a predefined home position.

---

### **2. lab5puzzle2attempt2.m**
- **Purpose:** 
  - Builds upon the first script with additional movement sequences and position definitions.
  - Establishes multiple positions and moves the robot through these points.

- **Key Features:** 
  - Serial communication setup on `COM1` with a baud rate of 9600.
  - Executes multiple `PRN` commands to control robot actions and positioning.

---

## **Programming Language**
- The code files are written in **MATLAB**, utilizing:
  - Serial communication for interaction with the robot.
  - Command execution through string formatting and functions like `fprintf()`.

---

## **Robot Information**
- **Robot:** Mitsubishi Industrial Robot (Picasso)
- **Degrees of Freedom (DOF):** 5
- **Control Modes:** 
  - **Teach Mode:** Manual control using a teach pendant.
  - **Software Mode:** Programmed through MATLAB or using proprietary MELFA Basic commands.

---

## **How to Use**
1. Connect the Mitsubishi Industrial Robot to a computer via a serial port (e.g., `COM1`).
2. Run the MATLAB scripts to define positions and send movement commands.
3. Monitor the robot's operation and ensure safety by respecting position boundaries.

---

## **Sample Code Snippet**
Here's a snippet demonstrating how to define and move to a position:

```matlab
% Open a serial connection
port = serial('COM1', 'BaudRate', 9600, 'DataBits', 8, 'Parity', 'none', 'StopBits', 1, 'Timeout', 5000);
fopen(port);

% Define a position
pNumber = 1;
x = 250;
y = -40;
z = 237;
command = sprintf('PRN PD,%1.1f,%1.1f,%1.1f,%1.1f', pNumber, x, y, z);
fprintf(port, command);

% Move to the defined position
command = sprintf('PRN MDP,%1.1f', pNumber);
fprintf(port, command);
pause(3);

% Close the connection
fclose(port);
```

---

## **References**
- [MELFA RV-2AJ Documentation](www.eurobots.net/other-robots-robots-melfa-rv-2aj-p259-en.html)
- Saeed B. Niku, "Introduction to Robotics"

---
