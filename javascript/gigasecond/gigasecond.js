//
// This is only a SKELETON file for the 'Gigasecond' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const gs = Math.pow(10, 12);

export const gigasecond = (date) => {
  return new Date(date.getTime() + gs);
};
