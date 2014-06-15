Config = {hello = "Hello Lua", world = "World"}

Config.word = "Hello"
Config.num = 100
Config["name"] = "Zhang san"

print(Config.word)
print(Config.num)
print(Config["name"])

for key, var in pairs(Config) do
	print(key, var)
end