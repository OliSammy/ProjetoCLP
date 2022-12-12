--filtra todos as cartelas que iniciaram em 1;
function filtrar_linhas_inicio_um(arquivo)
    local file = io.open(arquivo, "r")
    local lines = {}
    for line in file:lines() do
      if not string.match(line, "^1%s") then
        table.insert(lines, line)
      end
    end
    file:close()
    arquivo_filtro = io.open(arquivo,"w")
    for i in ipairs(lines)do
        arquivo_filtro:write(lines[i].."\n")
    end
  end

filtrar_linhas_inicio_um("cartelas.txt")
  
