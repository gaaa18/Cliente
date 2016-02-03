class Cliente < ActiveRecord::Base
  def self.search(search)
    if search
      where('nombre LIKE ? ', "%#{search}%")
    else
      all
    end
  end
  
end
