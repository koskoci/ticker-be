defmodule RequestFixture do
  def json do
    """
        {
        "stocks": [
            {
                "ticker": "LOGM",
                "startDate": "2020-01-01",
                "initialValue": 70
            },
            {
                "ticker": "GOOG",
                "startDate": "2020-01-01",
                "initialValue": 30
            }
        ]
    }
    """
  end
end
