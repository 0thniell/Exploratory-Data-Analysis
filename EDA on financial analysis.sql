SELECT * 
FROM Portfolio..bankruptcy;

--Financial Ratio
--Liquidity ratio to meet short term obligations
SELECT Attr4 AS Current_ratio, 
       Attr46 AS Quick_ratio,
	   Attr50 AS Cash_ratio
FROM Portfolio..bankruptcy;

 --slovenvy ratio to meet long term obligations
SELECT Attr2 AS Debt_to_Assets_Ratio,
    CASE WHEN Attr10 = 0 THEN 0
        ELSE (1 - Attr10) / Attr10 
    END AS Debt_to_Equity_Ratio,
	Attr14 AS Interest_Coverage_Ratio
FROM Portfolio..bankruptcy;

 --Profitability Ratio
SELECT Attr23 AS Profit_margin,
       Attr1 AS Return_on_Assets,
       CASE WHEN Attr10 = 0 THEN 0 ELSE Attr23 / Attr10 END AS Return_on_Equity
FROM Portfolio..bankruptcy;

--Efficiency Ratio
SELECT Attr60 AS Inventory_Turnover_Ratio, 
	   Attr61 AS Accounts_Receivable_Turnover_Ratio, 
	   Attr36 AS Assets_Turnover_Ratio
FROM Portfolio..bankruptcy;




