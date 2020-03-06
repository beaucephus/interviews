class CFFile
  def initialize(name, target)
    @name = name
  end

  def create
    "touch #{@name}"
  end

  def delete
    "rm #{@name}"
  end
end