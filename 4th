4th Develop, test and validate an XHTML document that has checkboxes for apple (59 cents each), orange (49 cents each), and banana (39 cents each) along with submit button. Each check boxes should have its own onclick event handler. These handlers must add the cost of their fruit to a total cost. An event handler for the submit button must produce an alert window with the message your total cost is $xxx", where xxx is the total cost of the chose fruit, including 5 percent sales tax. This handler must return,„false" (to avoid actual submission of the fo.m data). Modify the document to accept quantity for each item using textboxes.
!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Fruit Cost Calculator</title>
    <script type="text/javascript">
        var totalCost = 0;

        function updateCost() {
            // Reset total cost
            totalCost = 0;

            // Get quantities
            var appleQty = document.getElementById("appleQty").value;
            var orangeQty = document.getElementById("orangeQty").value;
            var bananaQty = document.getElementById("bananaQty").value;

            // Get checkbox states
            var appleChecked = document.getElementById("apple").checked;
            var orangeChecked = document.getElementById("orange").checked;
            var bananaChecked = document.getElementById("banana").checked;

            // Calculate total cost based on checked fruits and their quantities
            if (appleChecked) {
                totalCost += 0.59 * appleQty;
            }
            if (orangeChecked) {
                totalCost += 0.49 * orangeQty;
            }
            if (bananaChecked) {
                totalCost += 0.39 * bananaQty;
            }

            // Update total cost display
            document.getElementById("totalCost").innerText = "Total Cost (before tax): $" + totalCost.toFixed(2);
        }

        function submitForm() {
            // Calculate total cost with tax
            var totalWithTax = totalCost * 1.05; // 5% tax
            alert("Your total cost is $" + totalWithTax.toFixed(2));
            return false; // Prevent form submission
        }
    </script>
</head>
<body>
    <h1>Fruit Cost Calculator</h1>
    <form onsubmit="return submitForm();">
        <div>
            <input type="checkbox" id="apple" onclick="updateCost();" />
            <label for="apple">Apple (59 cents each)</label>
            <input type="text" id="appleQty" value="0" onchange="updateCost();" />
        </div>
        <div>
            <input type="checkbox" id="orange" onclick="updateCost();" />
            <label for="orange">Orange (49 cents each)</label>
            <input type="text" id="orangeQty" value="0" onchange="updateCost();" />
        </div>
        <div>
            <input type="checkbox" id="banana" onclick="updateCost();" />
            <label for="banana">Banana (39 cents each)</label>
            <input type="text" id="bananaQty" value="0" onchange="updateCost();" />
        </div>
        <div>
            <p id="totalCost">Total Cost (before tax): $0.00</p>
        </div>
        <div>
            <input type="submit" value="Submit" />
        </div>
    </form>
</body>
</html>
