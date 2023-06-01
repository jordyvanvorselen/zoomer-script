const x = true;

function getText() {
  const y = "Hello!";

  return y;
}

if (x) {
  console.log(getText());
} else {
  throw Error("x should be true");
}
