model System
  PI pi annotation(
    Placement(visible = true, transformation(origin = {-141, 53}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
  MotorDC motorDC annotation(
    Placement(visible = true, transformation(origin = {-2, 52}, extent = {{-32, -32}, {32, 32}}, rotation = 0)));
  ThrottleBody throttleBody annotation(
    Placement(visible = true, transformation(origin = {138, 54}, extent = {{-34, -34}, {34, 34}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 5, falling = 2.5, period = 8, rising = 2.5, width = 0)  annotation(
    Placement(visible = true, transformation(origin = {-210, 94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(pi.y, motorDC.u) annotation(
    Line(points = {{-93, 68}, {26, 68}, {26, 24}}, color = {0, 0, 127}));
  connect(motorDC.y, throttleBody.u) annotation(
    Line(points = {{56, 64}, {68, 64}, {68, 66}, {82, 66}}, color = {0, 0, 127}));
  connect(throttleBody.y, pi.u2) annotation(
    Line(points = {{178, 68}, {-198, 68}, {-198, 42}}, color = {0, 0, 127}));
  connect(trapezoid.y, pi.u1) annotation(
    Line(points = {{-198, 94}, {-198, 56}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end System;
