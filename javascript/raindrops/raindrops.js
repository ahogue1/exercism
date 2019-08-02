//
// This is only a SKELETON file for the 'Raindrops' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const convert = (number) => {
  const factors = []
  if (number % 3 === 0) {
    if (factors.indexOf(3) === -1 ){
      factors.push(3);
    }
  }
  if (number % 5 === 0) {
    if (factors.indexOf(5) === -1){
      factors.push(5);
    }
  }
  if (number % 7 === 0) {
    if (factors.indexOf(7) === -1){
      factors.push(7);
    }
  }
  const song = factors.sort((a, b) => a - b).map( factor => {
      return notes[factor];
  }).join("");
    if (song === ""){
      return number.toString();
    } else {
      return song;
    }

};

const notes = {
  3: "Pling",
  5: "Plang",
  7: "Plong"
}

