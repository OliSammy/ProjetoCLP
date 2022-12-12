--função que filtra os números cartelas cujos números tiverem uma diferença de 5 entre os dois primeiros;
function filter_lines(arquivo)do
  local file = io.open(arquivo, "r")
  local filtered_lines = {}
  for line in file:lines() do
    local num1, num2 = line:match("^%s(%d+)%s(%d+)")
    if num1 and num2 then
      num1 = tonumber(num1)
      num2 = tonumber(num2)
      if math.abs(num1 - num2) ~= 5  then
        table.insert(filtered_lines, line)
      end
    end
  end
  file:close()

  local arquivo_filtro = io.open(arquivo, "w")
  for i in ipairs(filtered_lines)do
    arquivo_filtro:write(filtered_lines[i].."\n")
  end
end
end

filter_lines("filtro.txt")
