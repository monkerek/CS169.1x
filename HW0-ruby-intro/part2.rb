def hello(name)
	"Hello, " + name
end

def starts_with_consonant?(s)
	s[0] =~ /[bcdfghjklmnprstvwxyz]/i
end

def binary_multiple_of_4?(s)
  if s =~ /(0|1)+/ && ! s =~ /0+/
    return s.to_i(2) % 4 == 0
  end
  false
end
