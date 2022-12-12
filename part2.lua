-- Abre o arquivo de texto em modo de leitura e escrita
local file = io.open("cartelas.txt", "r+")

-- Inicializa uma variável para armazenar as linhas do arquivo
local linhas = {}

-- Itera sobre cada linha do arquivo de texto
for linha in file:lines() do
  -- Inicializa uma variável para armazenar o número de números sequenciais
  -- encontrados na linha atual
  local num_numeros_sequenciais = 0

  -- Utiliza a função string.gmatch para encontrar todos os números sequenciais
  -- de quatro dígitos na linha atual
  for numero in string.gmatch(linha, "%d%d%d%d") do
    -- Incrementa o número de números sequenciais encontrados
    num_numeros_sequenciais = num_numeros_sequenciais + 1
  end

  -- Verifica se foram encontrados quatro ou mais números sequenciais
  if num_numeros_sequenciais >= 4 then
    -- Substitui a linha inteira por uma string vazia, o que a remove do arquivo
    linha = string.gsub(linha, ".*", "")
  end

  -- Adiciona a linha atualizada ao array de linhas
  table.insert(linhas, linha)
end

-- Fecha o arquivo
file:close()

-- Abre o arquivo novamente em modo de escrita
file = io.open("cartelas.txt", "w")

-- Escreve as linhas atualizadas de volta para o arquivo
for _, linha in ipairs(linhas) do
  file:write(linha .. "\n")
end

-- Fecha o arquivo
file:close()
