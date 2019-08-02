//
// This is only a SKELETON file for the 'Raindrops' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const convert = (number) => {
  const factors = []
  if (number % 3 === 0) {
    factors.push(3);
  }
  if (number % 5 === 0) {
    factors.push(5);
  }
  if (number % 7 === 0) {
    factors.push(7);
  }

  const removeDuplicates = new Set (factors);

  const song = [...removeDuplicates].map( factor => {
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

