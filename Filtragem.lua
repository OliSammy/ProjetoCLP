function file_existente(file)

local f = io.open(file,"r")
if f then f:close()
  end
  return f ~=nil
end

file_existente("cartelas.txt")
-- abre o arquivo em modo de leitura
local file = io.open("cartelas.txt", "r")

-- lê o conteúdo do arquivo e armazena em uma variável
 local conteudo = file:read()

-- cria uma lista para armazenar os números em sequência
local numeros_sequencia = {}

-- percorre cada número da cartela
for i, numero in ipairs(conteudo) do
  -- verifica se o número é seguido por outro número igual a ele mais um
  if conteudo[i + 1] == numero + 1 then
    -- se for, armazena esse número em sequência na lista
    table.insert(numeros_sequencia, numero)
    
  end
end
-- Fechamento do arquivo
file:close()

  print(numeros_sequencia)