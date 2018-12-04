class RealItem < Item

  def initialize(options)
    @weight = options[:weight]
    super
  end

  def info
    yield(weight)
    super
  end

end