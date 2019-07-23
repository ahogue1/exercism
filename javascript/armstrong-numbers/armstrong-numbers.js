//
// This is only a SKELETON file for the 'Armstrong numbers' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const validate = (number) => {
  let numArray = number.toString().split('');
  let convertedNumber = numArray.map(num => Math.pow(Number(num), numArray.length)).reduce((a, b) => a + b);

  return convertedNumber === number
};

