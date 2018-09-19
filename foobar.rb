class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    int_array = a.map(&:to_i)
    plus_2 = int_array.map {|item| item + 2}
    even = plus_2.values_at(* plus_2.each_index.select {|i| i.odd?})
    unique = even.uniq
    less_than_10 = unique.reject {|x| x >= 10}
    return less_than_10.inject(0){|sum,x| sum + x }
  end
end
