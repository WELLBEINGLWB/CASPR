% Please cite the following paper when using this algorithm:
% A. L. Cruz-Ruizy, S. Caro, P. Cardou and F.Guay "ARACHNIS: Analysis
% of robots actuated by cables with handy and neat interface software", 
% in Proceedings of the Cable-Driven Paralle Robots, 2015.
function inWorkspace = wrench_feasible_capacity_margin(desired_wrench_set,dynamics)
    m = CapacityMarginMetric(desired_wrench_set);
    temp_value = m.evaluate(dynamics);
    inWorkspace = temp_value*(temp_value>=0);
end