// # Currency Converter

// Remember to use `console.log()` to examine the return values of your functions.

// 1. [Find the exchange rate between dollars and pounds](http://www.bloomberg.com/quote/GBPUSD:CUR)

// 2. Write a function `dollarsToPounds()`
//   * **Input**: a number representing the dollar amount
//   * **Returns**: a number representing the equivalent pounds

//   ```javascript
//   dollarsToPounds("5"); //=> 2.99096727881797
//   ```

// 3. Write a function `poundsToDollars()` that performs the opposite conversion.

//   ```javascript
//   poundsToDollars("10"); //=> 16.717
//   ```

// 4. Write a function `currencyConverter()`
//   * **Input**:
//     * a string representing the currency it is converting from
//     * a string representing the currency it is converting to
//     * a number representing the initial amount
//   * **Returns**: a number representing the converted amount

//   ```javascript
//   currencyConverter("dollars", "pounds", "5"); //=> 2.99096727881797
//   currencyConverter("pounds", "dollars", "10"); //=> 16.717
//   ```

// 5. Can you make sure the output is only 2 decimal places?

//   Hint: Spend some time perusing the [MDN docs on Number objects](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)

//   ```javascript
//   currencyConverter("dollars", "pounds", "5"); //=> 2.99
//   ```

function dollarsToPounds(dollar_amount_input){
  return dollar_amount_input * 0.5966
}

function poundsToDollars(pounds_amount_input){
  return pounds_amount_input * 1.6763
}


function currencyConverter(input_currency_string, output_currency_string, input_amount){
  if (input_currency_string == "USD" && output_currency_string == "GBP"){
    return dollarsToPounds((parseFloat(input_amount), 02));
  }
  if (input_currency_string == "GBP" && output_currency_string == "USD"){
    poundsToDollars((parseFloat(input_amount), -2));
  }
}


currencyConverter("USD", "GBP", "5")

