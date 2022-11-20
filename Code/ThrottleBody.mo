model ThrottleBody
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 2)  annotation(
    Placement(visible = true, transformation(origin = {-86, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {58, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(visible = true, transformation(origin = {-122, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.SpringDamper springDamper(c = 1e4, d = 20) annotation(
    Placement(visible = true, transformation(origin = {-36, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-166, 36}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-166, 36}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {120, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(torque.flange, inertia.flange_a) annotation(
    Line(points = {{-112, -8}, {-96, -8}, {-96, 4}}));
  connect(inertia.flange_b, springDamper.flange_a) annotation(
    Line(points = {{-76, 4}, {-52, 4}, {-52, 2}, {-46, 2}}));
  connect(u, torque.tau) annotation(
    Line(points = {{-166, 36}, {-134, 36}, {-134, -8}}, color = {0, 0, 127}));
  connect(angleSensor.phi, y) annotation(
    Line(points = {{70, 4}, {120, 4}, {120, 44}}, color = {0, 0, 127}));
  connect(springDamper.flange_b, angleSensor.flange) annotation(
    Line(points = {{-26, 2}, {48, 2}, {48, 4}}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end ThrottleBody;
