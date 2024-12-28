```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def update_value(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

my_object.instance_variable_set(:@value, 20) # Modify the instance variable directly
puts my_object.value # => 20

# Safer way to modify the instance variable
my_object.update_value(30)
puts my_object.value # => 30
```