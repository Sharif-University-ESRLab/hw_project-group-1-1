model MotorDC
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(visible = true, transformation(origin = {-34, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.PowerConverters.DCDC.HBridge HBridge annotation(
    Placement(visible = true, transformation(origin = {-17, 35}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {8, -106}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {-90, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm annotation(
    Placement(visible = true, transformation(origin = {66, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-158, -82}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {90, -88}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {180, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {180, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {140, 32}, extent = {{10, 10}, {-10, -10}}, rotation = 270)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 1) annotation(
    Placement(visible = true, transformation(origin = {60, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(visible = true, transformation(extent = {{120, -30}, {100, -10}}, rotation = 0)));
  Modelica.Electrical.PowerConverters.DCDC.Control.SignalPWM pwm annotation(
    Placement(visible = true, transformation(origin = {-8, -36}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
equation
  connect(signalVoltage.n, ground.p) annotation(
    Line(points = {{-24, -94}, {8, -94}, {8, -96}}, color = {0, 0, 255}));
  connect(signalVoltage.v, u) annotation(
    Line(points = {{-34, -82}, {-158, -82}}, color = {0, 0, 127}));
  connect(voltageSensor.v, y) annotation(
    Line(points = {{151, 32}, {180, 32}, {180, 36}}, color = {0, 0, 127}));
  connect(HBridge.dc_p2, inductor.p) annotation(
    Line(points = {{6, 48}, {32, 48}, {32, 40}, {60, 40}}, color = {0, 0, 255}));
  connect(inductor.n, dcpm.pin_ap) annotation(
    Line(points = {{60, 20}, {72, 20}, {72, -8}}, color = {0, 0, 255}));
  connect(torque.flange, dcpm.flange) annotation(
    Line(points = {{100, -20}, {89, -20}, {89, -18}, {76, -18}}));
  connect(signalVoltage.v, torque.tau) annotation(
    Line(points = {{-34, -82}, {122, -82}, {122, -20}}, color = {0, 0, 127}));
  connect(ground1.p, HBridge.dc_n1) annotation(
    Line(points = {{-90, 2}, {-40, 2}, {-40, 22}}, color = {0, 0, 255}));
  connect(signalVoltage.p, HBridge.dc_p1) annotation(
    Line(points = {{-44, -94}, {-40, -94}, {-40, 48}}, color = {0, 0, 255}));
  connect(inductor.p, voltageSensor.n) annotation(
    Line(points = {{60, 40}, {140, 40}, {140, 42}}, color = {0, 0, 255}));
  connect(dcpm.pin_an, HBridge.dc_n2) annotation(
    Line(points = {{60, -8}, {6, -8}, {6, 22}}, color = {0, 0, 255}));
  connect(dcpm.pin_an, voltageSensor.p) annotation(
    Line(points = {{60, -8}, {140, -8}, {140, 22}}, color = {0, 0, 255}));
  connect(signalVoltage.p, pwm.dutyCycle) annotation(
    Line(points = {{-44, -94}, {-44, -59}, {-22, -59}, {-22, -36}}, color = {0, 0, 255}));
  connect(HBridge.fire_p, pwm.fire) annotation(
    Line(points = {{-30, 8}, {-16, 8}, {-16, -22}}, color = {255, 0, 255}));
  connect(HBridge.fire_n, pwm.notFire) annotation(
    Line(points = {{-4, 8}, {0, 8}, {0, -22}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram);
end MotorDC;
