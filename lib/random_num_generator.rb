class RandNumGenerator

  def self.create_num
    rand(100_000).to_s.rjust(5, '0')
  end

end
