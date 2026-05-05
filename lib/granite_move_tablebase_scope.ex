defmodule GraniteMoveTablebaseScope do
  @threshold 163
  @risk_penalty 5
  @latency_penalty 3
  @weight_bonus 5

  def score(%{demand: demand, capacity: capacity, latency: latency, risk: risk, weight: weight}) do
    demand * 2 + capacity + weight * @weight_bonus - latency * @latency_penalty - risk * @risk_penalty
  end

  def classify(signal), do: if(score(signal) >= @threshold, do: "accept", else: "review")
end
