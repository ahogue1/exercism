//
// This is only a SKELETON file for the 'Triangle' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Triangle {
  constructor(a, b, c) {
    this.sides = [a, b, c];
  };

  kind() {
    if (this.sides.some(side => side <= 0)) {
      throw 'sides must be greater than zero'
    }

    if (this.sides[0] + this.sides[1] < this.sides[2] ||
        this.sides[1] + this.sides[2] < this.sides[0] ||
        this.sides[2] + this.sides[0] < this.sides[1]
       ) {
      throw 'violates triangle inequality rule'
    }

    const side_count = (new Set(this.sides)).size;
    return side_count === 1 ? 'equilateral'
      : side_count === 2 ? 'isosceles'
      : 'scalene';
  }
}
