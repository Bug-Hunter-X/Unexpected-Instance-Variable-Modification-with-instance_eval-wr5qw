```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

my_object.instance_variable_set(:@value, 20) # Modify the instance variable directly
puts my_object.value # => 20

#Another way to modify the instance variable, this example is the bug
my_object.instance_eval { @value = 30 }
puts my_object.value # => 30
```