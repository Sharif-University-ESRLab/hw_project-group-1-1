Project Number 10

Throttle Valve Controller System Design

Group 1

Members:

Ali Hashemabadi


In a car, when you apply pressure to the gas pedal, fuel and air rushes in the motor. The more pressure applied, the more fuel used. The amount of fuel and air is determined by how much the throttle valve is opened. Our goal is to design a throttle valve controller and simulate the system and watch the result.
The system is designed using OpenModelica which is a free and open-source software. This software uses the Modelica language which is an object-oriented language.
You can download the latest version of OpenModelica from the link below: (I have used the version 1.20.0 which was the latest version at the time)

https://openmodelica.org/download/download-windows


First, make sure to download the files inside the Code folder. After you've installed OpenModelica, run the software. Then, go to "File" -> "System Libraries" -> "Modelica" -> "4.0.0". This way you can import the library of OpenModelica which is essential for running the project.

Then, go to "File" -> "Open Model/Library File" and select all the files you've downloaded from Code folder. Then right-click on the file named "System" and select "Open Class" option. On the toolbar, you'll find a symbol of "S" inside a square which is called the simulation setup. click on it and you can set your start and stop time. make sure that the simulate box at the end of simulation setup window is selected. click OK.

The project is getting compiled and simulated now. after the simulation is completed, on the "Variable Browser" section on the bottom-right side of your screen, click on the little triangle beside "PI". you'll find u1 and u2 with square boxes next to them. u1 is the input and u2 the output. select them and you'll see the input and output drawn.

If you want to learn how to run the project in OpenModelica with more detail and also how the system is desinged with each part explained briefly, you can watch the video linked below:

https://drive.google.com/file/d/1K3g6JpC55BCiVtYjkt1NAH0CRbncfd0h/view?usp=drivesdk
