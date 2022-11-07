model System
  PI pi annotation(
    Placement(visible = true, transformation(origin = {15, -1}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine(f = 10)  annotation(
    Placement(visible = true, transformation(origin = {-106, 2}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
equation
  connect(pi.u1, sine.y) annotation(
    Line(points = {{-42, 2.5}, {-88, 2.5}, {-88, 2}}, color = {0, 0, 127}));
  connect(pi.u2, pi.y) annotation(
    Line(points = {{-42, -12}, {62, -12}, {62, 14}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")));
end System;
