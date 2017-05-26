class Friend
  def greeting(name = nil)
    return "Hello, #{name}!" if name != nil
    "Hello!"
  end
end
