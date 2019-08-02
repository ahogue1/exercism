//
// This is only a SKELETON file for the 'Hamming' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const compute = (strand1, strand2) => {
  checkStrands(strand1, strand2)

  let count = 0;

  for (const [i, nucl] of strand1.split('').entries()){
    if (nucl != strand2.charAt(i)) {
      count ++
    }
    }
  return count
};


const checkStrands = (strand1, strand2) => {
  if (strand1.length != strand2.length) {
    if (strand1 === '') {
      throw "left strand must not be empty";
    } else if (strand2 === '') {
      throw "right strand must not be empty";
    } else {
      throw 'left and right strands must be of equal length';
    }
  }
}
