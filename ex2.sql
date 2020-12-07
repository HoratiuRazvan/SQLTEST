
SELECT productID, SUM(Quantity) 
from Order_Detail
group by productID 
having SUM(Quantity) = (select MAX(sumaMax)  
   from (select SUM(Quantity)  sumaMax 
     from Order_Detail
     group by productID));