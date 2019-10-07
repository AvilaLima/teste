class Contents
  def can_make_sentence?(contents)
    res=false
    fraseArray = contents[-1].split(' ')
    contents.pop
    fraseArray.each do | palavraDaFrase |
        if contents.map(&:upcase).include?(palavraDaFrase.upcase)
            return res
        else
            res=true
        end    
    end
    return res
  end
end
