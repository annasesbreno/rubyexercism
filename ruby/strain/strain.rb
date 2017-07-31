module Strain
  def keep
    res = []
    each { |i| res << i if (yield i) }
    res
  end

  def discard
    res = []
    each { |i| res << i unless (yield i) }
    res
  end
end

class Array
  include Strain
end