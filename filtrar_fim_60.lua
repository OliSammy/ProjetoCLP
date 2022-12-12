--função que filtra todas as cartelas que tiverem 60 como seu último número;
function filtrar_numeros_fim_60(arquivo)
    local file = io.open(arquivo, "r")
    local lines = {}
    for line in file:lines() do
      if not string.match(line, "%s60$") then
        table.insert(lines, line)
      end
    end
    arquivo_filtro = io.open(arquivo,"w")
    for i in ipairs(lines)do
       arquivo_filtro:write(lines[i].."\n")
    end
  end

filtrar_numeros_fim_60("cartelas.txt")
