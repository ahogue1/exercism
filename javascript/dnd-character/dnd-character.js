//
// This is only a SKELETON file for the 'DnD Character' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const abilityModifier = (ability) => {
  if (ability < 3) {
    throw new Error("Ability scores must be at least 3");
  } else if (ability > 18){
    throw new Error('Ability scores can be at most 18');
  } else {
    return Math.floor((ability - 10) / 2);
  }
};


export class Character {
  static rollAbility() {
    let rolls = [0, 0, 0, 0].map(roll => roll = Math.floor(Math.random() * 6) + 1).sort();
    rolls.shift();
    return rolls.reduce((a, b) => a + b);
  };

  constructor(){
    this._strength = Character.rollAbility();
    this._dexterity = Character.rollAbility();
    this._constitution = Character.rollAbility();
    this._intelligence = Character.rollAbility();
    this._wisdom = Character.rollAbility();
    this._charisma = Character.rollAbility();
  }

  get strength() {
    return this._strength;
  }

  get dexterity() {
    return this._dexterity;
  }

  get constitution() {
    return this._constitution;
  }

  get intelligence() {
    return this._intelligence;
  }

  get wisdom() {
    return this._wisdom;
  }

  get charisma() {
    return this._charisma;
  }

  get hitpoints() {
    return 10 + abilityModifier(this._constitution);
  }
}
