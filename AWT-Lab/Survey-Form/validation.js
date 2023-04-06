const validate = () => {
    const phVal = document.getElementById("phone").value;
    const pwdVal = document.getElementById("pwd").value;
    const fnameVal = document.getElementById("name").value;
    const lnameVal = document.getElementById("lname").value;

    if (String(phVal).length != 10) {
      alert("Phone no. should have 10 digits");
      return false;
    }

    if (!/^[a-zA-z]*$/g.test(fnameVal)) {
      alert("First name has to be characters only!");
      return false;
    }

    if (!/^[a-zA-z]*$/g.test(lnameVal)) {
      alert("Last name has to be characters only!");
      return false;
    }

    if (pwdVal.length < 7) {
      alert("Password should be greater than 6 characters!");
      return false;
    }

    return true;
  };