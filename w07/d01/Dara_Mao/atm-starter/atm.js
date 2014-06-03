$(document).ready(function(){
    //Checking Deposit/Withdrawal Total Balance
    var checking_balance = $("#checkingAccount > div");
    var checking_input = $("#checkingAccount > input:text");
    var checking_sum = 0;
    this.checking_sum = checking_sum;
    this.checking_input = checking_input;

    //Saving Deposit/Withdrawal Total Balance
    var savings_balance = $("#savingsAccount > div");
    var savings_input = $("#savingsAccount > input:text");
    var savings_sum = 0;
    this.savings_sum = savings_sum;

    //Checking Deposit Click Event
    $($("#checkingAccount > input:button:first")).click(function(){
        //Checking Deposit Update Balance
        if (!isNaN(checking_input.val()) && checking_input.val() > 0 ){
            checking_sum += parseFloat(checking_input.val());
        } else {
            alert("Please enter a valid deposit!");
        }
        checking_balance.html(both_sum());
        checking_input.val("");
        change_c_color(checking_sum);
    });

    //Checking Withdrawal Click Event
    $($("#checkingAccount > input:button:last")).click(function(){
        //Checking Withdrawal Update Balance

        if (checking_input.val() > checking_balance.html()){
            alert("Not enough money in your account!")
        } else if (!isNaN(checking_input.val()) && checking_input.val() > 0){
            checking_sum -= parseFloat(checking_input.val());
        } else {
            alert("Please enter a valid withdrawal amount!")
        }
        checking_balance.html(checking_sum);
        checking_input.val("");
        change_c_color(checking_sum);
    });

    function change_c_color(sum){
        if (sum === 0){
            checking_balance.css("color","red");
        } else {
            checking_balance.css("color","grey");
        }
    }

    //Savings Deposit Click Event
    $($("#savingsAccount > input:button:first")).click(function(){
        //Savings Deposit Update Balance
        if (!isNaN(savings_input.val()) && savings_input.val() > 0 ){
            savings_sum += parseFloat(savings_input.val());
        } else {
            alert("Please enter a valid deposit!");
        }
        savings_balance.html(savings_sum);
        savings_input.val("");
    //Balance color turns red when 0
        if (savings_sum === 0){
            savings_balance.css("color","red");
        } else {
            savings_balance.css("color","grey");
        }
    });

    //Savings Withdrawal Click Event
    $($("#savingsAccount > input:button:last")).click(function(){
        //Savings Withdrawal Update Balance
        if (savings_input.val() > savings_balance.html()){
            alert("Not enough money in your account!")
        } else if (!isNaN(savings_input.val()) && savings_input.val() > 0){
            savings_sum -= parseFloat(savings_input.val());
        } else {
            alert("Please enter a valid withdrawal amount!")
        }

        savings_balance.html(savings_sum);
        savings_input.val("");
         //Balance color turns red when 0
        if (savings_sum === 0){
            savings_balance.css("color","red");
        } else {
            savings_balance.css("color","grey");
        }
    });
});


function both_sum(checking_sum, savings_sum, checking_input)
{
    var overdraft = checking_sum + savings_sum - checking_input;
    return overdraft;
}


function withdrawFunds(amount, primary, secondary)
{

}








