defmodule TickerWeb.Support.ExpectedHttpClientResponse do
  def logm do
    %{
      "history" => %{
        "2020-01-02" => %{
          "close" => "85.67",
          "high" => "86.03",
          "low" => "85.66",
          "open" => "86.00",
          "volume" => "588325"
        },
        "2020-01-03" => %{
          "close" => "85.56",
          "high" => "85.77",
          "low" => "85.41",
          "open" => "85.41",
          "volume" => "935899"
        },
        "2020-01-06" => %{
          "close" => "86.05",
          "high" => "86.07",
          "low" => "85.55",
          "open" => "85.57",
          "volume" => "1047952"
        },
        "2020-01-07" => %{
          "close" => "86.10",
          "high" => "86.19",
          "low" => "85.72",
          "open" => "85.93",
          "volume" => "459215"
        },
        "2020-01-08" => %{
          "close" => "85.99",
          "high" => "86.25",
          "low" => "85.92",
          "open" => "86.10",
          "volume" => "1142805"
        },
        "2020-01-09" => %{
          "close" => "85.89",
          "high" => "86.10",
          "low" => "85.78",
          "open" => "86.07",
          "volume" => "572088"
        },
        "2020-01-10" => %{
          "close" => "86.02",
          "high" => "86.06",
          "low" => "85.86",
          "open" => "85.98",
          "volume" => "257513"
        },
        "2020-01-13" => %{
          "close" => "86.12",
          "high" => "86.12",
          "low" => "85.90",
          "open" => "86.03",
          "volume" => "563499"
        },
        "2020-01-14" => %{
          "close" => "86.09",
          "high" => "86.11",
          "low" => "85.95",
          "open" => "86.01",
          "volume" => "848912"
        },
        "2020-01-15" => %{
          "close" => "85.88",
          "high" => "86.10",
          "low" => "85.88",
          "open" => "86.00",
          "volume" => "764051"
        },
        "2020-01-16" => %{
          "close" => "86.15",
          "high" => "86.15",
          "low" => "85.96",
          "open" => "86.05",
          "volume" => "669617"
        },
        "2020-01-17" => %{
          "close" => "86.55",
          "high" => "86.63",
          "low" => "86.11",
          "open" => "86.11",
          "volume" => "780842"
        }
      },
      "name" => "LOGM"
    }
  end

  def goog do
    %{
      "history" => %{
        "2020-01-02" => %{
          "close" => "1367.37",
          "high" => "1368.14",
          "low" => "1341.55",
          "open" => "1341.55",
          "volume" => "1406731"
        },
        "2020-01-03" => %{
          "close" => "1360.66",
          "high" => "1372.50",
          "low" => "1345.54",
          "open" => "1347.86",
          "volume" => "1187006"
        },
        "2020-01-06" => %{
          "close" => "1394.21",
          "high" => "1396.50",
          "low" => "1350.00",
          "open" => "1350.00",
          "volume" => "1733149"
        },
        "2020-01-07" => %{
          "close" => "1393.34",
          "high" => "1402.99",
          "low" => "1390.38",
          "open" => "1397.94",
          "volume" => "1511693"
        },
        "2020-01-08" => %{
          "close" => "1404.32",
          "high" => "1411.58",
          "low" => "1390.84",
          "open" => "1392.08",
          "volume" => "1529177"
        },
        "2020-01-09" => %{
          "close" => "1419.83",
          "high" => "1427.33",
          "low" => "1410.27",
          "open" => "1420.57",
          "volume" => "1502664"
        },
        "2020-01-10" => %{
          "close" => "1429.73",
          "high" => "1434.93",
          "low" => "1418.35",
          "open" => "1427.56",
          "volume" => "1821566"
        },
        "2020-01-13" => %{
          "close" => "1439.23",
          "high" => "1440.52",
          "low" => "1426.02",
          "open" => "1436.13",
          "volume" => "1372369"
        },
        "2020-01-14" => %{
          "close" => "1430.88",
          "high" => "1441.80",
          "low" => "1428.37",
          "open" => "1439.01",
          "volume" => "1560453"
        },
        "2020-01-15" => %{
          "close" => "1439.20",
          "high" => "1441.40",
          "low" => "1430.21",
          "open" => "1430.21",
          "volume" => "1282685"
        },
        "2020-01-16" => %{
          "close" => "1451.70",
          "high" => "1451.99",
          "low" => "1440.92",
          "open" => "1447.44",
          "volume" => "1173688"
        },
        "2020-01-17" => %{
          "close" => "1480.39",
          "high" => "1481.30",
          "low" => "1458.22",
          "open" => "1462.91",
          "volume" => "2163938"
        }
      },
      "name" => "GOOG"
    }
  end
end
