People = {}

--function People.sayHi()
--  print("People say Hi")
--end

function clone(tab)
  local self = {}
	for key, var in pairs(tab) do
		self[key] = var
	end
	return self
end

People.new = function (name)
	local self = clone(People)
	self.name = name
	return self
end

People.sayHi = function (self)
	print("People say Hi : " .. self.name)
end

local p = People.new("Zhang san")
--p.sayHi(p)
p:sayHi()

function copy(tab)
	local self = {}
	self = People.new("Lisi")
	for key, var in pairs(tab) do
		self[key] = var
	end
	return self
end

Man = {}

Man.new = function ()
	local self = copy(Man)
	return self
end

Man.sayHi = function (self)
  print("May say Hi " .. self.name)
end

Man.sayHello = function ()
	print("Man say hello")
end

local m = Man.new()
m:sayHi()
m:sayHello()


