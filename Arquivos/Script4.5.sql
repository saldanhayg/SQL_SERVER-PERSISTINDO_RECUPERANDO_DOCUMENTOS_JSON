SELECT * FROM EMPRESA;

-- Alterar o salário 30000 para 25000
-- Criar Hobbies ["Praia","Cinema"]
-- Alterar o nome do dependente ESPOSA de Elisabeth para Maria
-- Apagar a propriedade Sexo

SELECT 
JSON_MODIFY(
JSON_MODIFY(
JSON_MODIFY(
JSON_MODIFY(FUNCIONARIO,'$.Salario',25000)
,'$.Hobbies',JSON_QUERY('["Praia","Cinema"]')
),'$.Dependentes[1].Nome_Dependente','Maria'
),'$.Sexo', null) as Novo_Json

FROM EMPRESA