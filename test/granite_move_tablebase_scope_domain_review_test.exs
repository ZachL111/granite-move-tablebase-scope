defmodule GraniteMoveTablebaseScope.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 54, slack: 42, drag: 19, confidence: 65}
    assert GraniteMoveTablebaseScope.DomainReview.score(item) == 158
    assert GraniteMoveTablebaseScope.DomainReview.lane(item) == "ship"
  end
end
