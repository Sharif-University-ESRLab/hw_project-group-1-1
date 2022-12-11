model ThrottleBody
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {58, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-166, 36}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-166, 36}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {120, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(visible = true, transformation(origin = {-122, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-86, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 1)  annotation(
    Placement(visible = true, transformation(origin = {-50, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-50, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring(c = 5)  annotation(
    Placement(visible = true, transformation(origin = {-8, -20}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Rotational.Components.Fixed fixed1 annotation(
    Placement(visible = true, transformation(origin = {-6, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(angleSensor.phi, y) annotation(
    Line(points = {{70, 4}, {120, 4}, {120, 44}}, color = {0, 0, 127}));
  connect(u, torque.tau) annotation(
    Line(points = {{-166, 36}, {-134, 36}, {-134, -8}}, color = {0, 0, 127}));
  connect(torque.flange, inertia.flange_a) annotation(
    Line(points = {{-112, -8}, {-96, -8}, {-96, 4}}));
  connect(damper.flange_a, fixed.flange) annotation(
    Line(points = {{-50, -30}, {-50, -56}}));
  connect(inertia.flange_b, damper.flange_b) annotation(
    Line(points = {{-76, 4}, {-50, 4}, {-50, -10}}));
  connect(spring.flange_b, fixed1.flange) annotation(
    Line(points = {{-8, -30}, {-8, -43}, {-6, -43}, {-6, -56}}));
  connect(damper.flange_b, spring.flange_a) annotation(
    Line(points = {{-50, -10}, {-8, -10}}));
  connect(spring.flange_a, angleSensor.flange) annotation(
    Line(points = {{-8, -10}, {48, -10}, {48, 4}}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end ThrottleBody;
