class RandNumGenerator

  def self.create_num
    rand(100000).to_s.rjust(5, "0")
  end

end
