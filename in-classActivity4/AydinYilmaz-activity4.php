<!DOCTYPE html>
<html lang="en">
<head>
	<title>Currency Converter</title>
    <meta name="description" content="Currency Converter" />
</head>
<body>
    <form action = "activity4.php" method="GET">
        <table>
            <tr>
                <td>
					From:
				</td>
                <td>
					<input type="text" name="fromAmount" id="fromAmount">
				</td>
                <td>
					Currency:
				</td>
                <td>
                    <select name="fromCurrency" id="fromCurrency">
                        <option value="USD">USD</option>
                        <option value="CAD">CAD</option>
                        <option value="EUR">EUR</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
					To:
				</td>
                <td>
					<input type="text" name="toAmount" id="toAmount">
				</td>
                <td>
					Currency:
				</td>
                <td>
                    <select name="toCurrency" id="toCurrency">
                        <option value="USD">USD</option>
                        <option value="CAD">CAD</option>
                        <option value="EUR">EUR</option>
                    </select>
                </td>
            </tr>
            <tr>
				<td>
				</td>
				<td>	
				</td>
				<td>		
				</td>
                <td>
					<input type="button" value="convert" onclick="currencyConvertion()">
				</td>
            </tr>
        </table>
    </form>

    <script>
        var exchangeRates = {};

        function fetchExchangeRates() {
            exchangeRates = {
                USD_USD: 1,
                USD_CAD: 1.35, 
                USD_EUR: 0.92,
				CAD_CAD: 1,
				CAD_USD: 0.74,
				CAD_EUR: 0.68,
				EUR_EUR: 1,
				EUR_USD: 1.09,
				EUR_CAD: 1.47,
            };
        }

        function currencyConvertion() { 
            var fromAmount = parseFloat(document.getElementById("fromAmount").value);
            var fromCurrency = document.getElementById("fromCurrency").value;
            var toCurrency = document.getElementById("toCurrency").value;
            var rate = exchangeRates[fromCurrency + '_' + toCurrency];
            var toAmount = fromAmount * rate;
            document.getElementById("toAmount").value = toAmount.toFixed(0);
        }

        window.onload = fetchExchangeRates;
    </script>
</body>
</html>