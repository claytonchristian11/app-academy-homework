function hammerTime () {
  window.setTimeout(function () {
    alert('HAMMER TIME!');
  },5000);
}


function hammerTime2 (time) {
  window.setTimeout(function () {
    alert(`${time} is HAMMER TIME!`);
  },5000);
}

const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  let first, second;

  reader.question('Would you like some tea?', (res) => {

    reader.question('Would you like some biscuits?', (res) => {

      first = res;
      console.log(`You replied ${res}.`
      second = res;
      console.log(`You replied ${res}.`);
      const firstRes = (first === 'yes') ? 'do' : 'don\'t';
      const secondRes = (second === 'yes') ? 'do' : 'don\'t';
      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });

  );
});



  const firstRes = (first === 'yes') ? 'do' : 'don\'t';
  const secondRes = (second === 'yes') ? 'do' : 'don\'t';
  console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
  reader.close();
}
