const displayDate = () => {
  date = new Date();
  day = date.getDate();
  month = date.getMonth() + 1;
  year = date.getFullYear();
  window.alert(`Today's date is ${day}/${month}/${year}.`);
};

const promptDemo = () => {
  let num = window.prompt("Enter a number...");
  console.log("Your number is " + num);
  let fact = 1;
  for (let i = num; i > 1; i--) {
    fact *= i;
  }
  window.alert("The factorial of " + num + " is " + fact + ".");
};

const alertDemo = () => {
  let num = window.prompt("Enter a number...");
  str = "";
  for (let i = 1; i <= 10; i++) {
    str += `${num} x ${i} = ${num * i} \n`;
  }
  window.alert("Multiplication table of " + parseInt(num) + "\n" + str);
};

const confirmDemo = () => {
  let num1 = window.prompt("Enter number 1...");
  if (
    window.confirm("Press OK if number 2 = 10\nPress Cancel if number 2 = 20")
  ) {
    num2 = 10;
  } else {
    num2 = 20;
  }
  let num3 = window.prompt("Enter number 3...");
  num1 = parseInt(num1);
  num2 = parseInt(num2);
  num3 = parseInt(num3);
  window.alert(
    num1 + " + " + num2 + " + " + num3 + " = " + (num1 + num2 + num3)
  );
};

const convertRoman = () => {
  let num = window.prompt("Enter a number...");
  let og = num;
  let i = 0;
  var l = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
  var sym = [
    "M",
    "CM",
    "D",
    "CD",
    "C",
    "XC",
    "L",
    "XL",
    "X",
    "IX",
    "V",
    "IV",
    "I",
  ];
  var str = "";
  while (num > 0) {
    if (l[i] <= num) {
      str += sym[i];
      num -= l[i];
    } else {
      i++;
    }
  }
  window.alert("The number " + og + " in Roman Numerals is " + str + ".");
};
