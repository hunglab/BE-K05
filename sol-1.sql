-- https://leetcode.com/problems/capital-gainloss/description/

SELECT stock_name,
SUM( CASE WHEN s.operation = 'Sell' THEN s.price
    ELSE s.price * -1
    END
) AS capital_gain_loss
FROM Stocks AS s
GROUP BY stock_name