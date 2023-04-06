const displayDate = () => {
    date = new Date();
    day = date.getDate();
    month = date.getMonth() + 1;
    year = date.getFullYear();
    window.alert(`Today's date is ${day}/${month}/${year}.`);
  };

  const promtDemo = () => {
    let n = window.prompt("Enter a number...");
    console.log("your number is " + n);
    let fact = 1;
    for (let i = n; i > 1; i--) {
      fact *= i;
    }
    window.alert(" The factorial of " + n + " is " + fact + ".");
  };

  const alertDemo = () => {
    let n = window.prompt("Enter a number...");
    str = "";
    for (let i = 1; i <= 10; i++) {
      str += `${n} x ${i} = ${n * i} \n`;
    }
    window.alert("Multiplication table of " + parseInt(n) + "\n" + str);
  };

  const confirmDemo = () => {
    let num1 = window.prompt("Enter number 1");
    if (
      window.confirm(
        "Press OK if number 2 = 10\nPress Cancel if number 2 = 20"
      )
    ) {
      num2 = 10;
    } else {
      num2 = 20;
    }
    let num3 = window.prompt("Enter number 3");
    num1 = parseInt(num1);
    num2 = parseInt(num2);
    num3 = parseInt(num3);
    window.alert(
      num1 + " + " + num2 + " + " + num3 + " = " + (num1 + num2 + num3)
    );
  };