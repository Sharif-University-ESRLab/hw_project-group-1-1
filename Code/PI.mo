model PI
  Modelica.Blocks.Math.Add throttleError(k1 = +1, k2 = -1)  annotation(
    Placement(visible = true, transformation(origin = {-95, -9}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  Modelica.Blocks.Math.Gain PropGain(k = 2)  annotation(
    Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain IntGain(k = 1)  annotation(
    Placement(visible = true, transformation(origin = {-30, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {110, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {158, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {136, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator annotation(
    Placement(visible = true, transformation(origin = {51, -49}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u1 annotation(
    Placement(visible = true, transformation(origin = {-169, 17}, extent = {{-13, -13}, {13, 13}}, rotation = 0), iconTransformation(origin = {-162, 10}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u2 annotation(
    Placement(visible = true, transformation(origin = {-169, -27}, extent = {{-13, -13}, {13, 13}}, rotation = 0), iconTransformation(origin = {-162, -34}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  connect(throttleError.y, PropGain.u) annotation(
    Line(points = {{-78, -8}, {-42, -8}, {-42, 50}}, color = {0, 0, 127}));
  connect(throttleError.y, IntGain.u) annotation(
    Line(points = {{-78, -8}, {-42, -8}, {-42, -48}}, color = {0, 0, 127}));
  connect(PropGain.y, add.u1) annotation(
    Line(points = {{-18, 50}, {98, 50}, {98, 20}}, color = {0, 0, 127}));
  connect(add.y, y) annotation(
    Line(points = {{121, 14}, {158, 14}, {158, 32}}, color = {0, 0, 127}));
  connect(IntGain.y, integrator.u) annotation(
    Line(points = {{-18, -48}, {30, -48}}, color = {0, 0, 127}));
  connect(integrator.y, add.u2) annotation(
    Line(points = {{70, -48}, {98, -48}, {98, 8}}, color = {0, 0, 127}));
  connect(u1, throttleError.u1) annotation(
    Line(points = {{-168, 18}, {-112, 18}, {-112, 0}}, color = {0, 0, 127}));
  connect(throttleError.u2, u2) annotation(
    Line(points = {{-112, -18}, {-168, -18}, {-168, -26}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end PI;
