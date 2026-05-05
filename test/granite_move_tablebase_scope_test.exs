defmodule GraniteMoveTablebaseScopeTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 74, capacity: 81, latency: 24, risk: 18, weight: 6}
    assert GraniteMoveTablebaseScope.score(signal_case_1) == 97
    assert GraniteMoveTablebaseScope.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 96, capacity: 74, latency: 27, risk: 23, weight: 6}
    assert GraniteMoveTablebaseScope.score(signal_case_2) == 100
    assert GraniteMoveTablebaseScope.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 79, capacity: 78, latency: 23, risk: 7, weight: 12}
    assert GraniteMoveTablebaseScope.score(signal_case_3) == 192
    assert GraniteMoveTablebaseScope.classify(signal_case_3) == "accept"
  end
end
