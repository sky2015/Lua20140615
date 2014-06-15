--arr = {1, 2, 3, 4, "Hello"}
--
--for key, var in pairs(arr) do
--	print(key, var)
--end

arr = {}

for var=1, 100 do
  table.insert(arr,1,var)
	table.insert(arr,table.maxn(arr)+1,var)
end

--for key, var in pairs(arr) do
--	print(key, var)
--end

print(table.maxn(arr))

function compare(a, b)
	if a > b then
		return true
	else
	 return false
	end
end

table.sort(arr,compare)

for key, var in pairs(arr) do
	print(key,var)
end