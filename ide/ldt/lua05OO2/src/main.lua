function People(name)
	local self = {}
	
	local function init()
		self.name = name
	end
	
	self.sayHi = function ()
		print("Hi "..self.name)
	end
	
	init()
	
	return self
end

local p = People("Zhang san")
p:sayHi()

function Man(name)
  local self = People(name)
  
--  local function init()
--  	
--  end

  self.sayHello = function ()
  	print("Hello "..self.name)
  end
  
  return self
end

local m = Man("Lisi")
m:sayHi()
m:sayHello()
