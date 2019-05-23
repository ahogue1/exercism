class PhoneNumber

  def self.clean(number)
    clean = number.scan(/[0-9]/).join
    if clean[-7] =='0' || clean[-7] =='1' || clean[-10] =='0' || clean[-10] == '1'
      nil
    elsif clean.length == 10 && clean[0] !='0' && clean[0] !='1'
      clean
    elsif clean.length == 11 && clean[0] =='1'
      clean.slice(1..-1)
    else
      nil
    end
  end

end
