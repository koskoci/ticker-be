defmodule ExpectedApiRequest do
  def goog do
    """
    https://api.worldtradingdata.com/api/v1/history?symbol=GOOG&sort=newest&api_token=TEST_KEY&date_from=2020-01-01
    """
  end

  def logm do
    """
    https://api.worldtradingdata.com/api/v1/history?symbol=LOGM&sort=newest&api_token=TEST_KEY&date_from=2020-01-01
    """
  end
end
