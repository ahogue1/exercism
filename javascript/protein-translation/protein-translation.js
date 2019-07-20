//
// This is only a SKELETON file for the 'Protein Translation' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const codon_to_protein = {
  AUG: 'Methionine',
  UUU: 'Phenylalanine',
  UUC: 'Phenylalanine',
  UUA: 'Leucine',
  UUG: 'Leucine',
  UCU: 'Serine',
  UCC: 'Serine',
  UCA: 'Serine',
  UCG: 'Serine',
  UAU: 'Tyrosine',
  UAC: 'Tyrosine',
  UGU: 'Cysteine',
  UGC: 'Cysteine',
  UGG: 'Tryptophan',
  UAA: 'stop',
  UAG: 'stop',
  UGA: 'stop'
}

export const translate = (codons) => {
  if (codons === undefined){
    return [];
  };

  let codon_array = codons.match(/.{1,3}/g).map(codon =>
    codon_to_protein[codon]
  );

  if (codon_array.some(codon => codon === undefined)){
    throw "Invalid codon";
  } else if (codon_array.some(codon => codon === 'stop')){
    let stop_index = codon_array.indexOf('stop');
    return codon_array.slice(0, stop_index);
  } else {
    return codon_array;
  }

};
