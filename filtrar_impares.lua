--função que filtra todas as cartelas que tiverem números ímpares;
function filtrar_num_impares(arquivo)
    local file = io.open(arquivo, "r")
    local lines = {}
    for line in file:lines() do
      if not string.match(line, "%s*[13579]") then
        table.insert(lines, line)
      end
    end
    file:close()
    arquivo_filtro = io.open(arquivo,"w")
    for i in ipairs(lines) do
        arquivo_filtro:write(lines[i].."\n")
    end
  end

filtrar_num_impares("cartelas.txt")

