
SELECT * FROM EMPRESA

DROP TABLE EMPRESA;
CREATE TABLE EMPRESA (FUNCIONARIO VARCHAR(MAX), NOVO_FUNCIONARIO VARCHAR(MAX));
INSERT INTO EMPRESA VALUES ('{
  "Cpf": "12345678966",
  "Sexo": "M",
  "Salario": 30000,
  "Endereco": "Rua das Flores 751 São Paulo SP",
  "Nome_Meio": "B",
  "Dependentes": [
    {
      "Sexo": "F",
      "Parentesco": "Filha",
      "Data_Nascimento": "1988-01-30",
      "Nome_Dependente": "Alicia"
    },
    {
      "Sexo": "F",
      "Parentesco": "Esposa",
      "Data_Nascimento": "1967-01-05",
      "Nome_Dependente": "Elizabeth"
    },
    {
      "Sexo": "M",
      "Parentesco": "Filho",
      "Data_Nascimento": "1988-01-01",
      "Nome_Dependente": "Michael"
    }	
  ],
  "Ultimo_Nome": "Silva",
  "Primeiro_Nome": "João",
  "Cpf_Supervisor": "33344555587",
  "Data_Nascimento": "1965-01-01T00:09:00",
  "Numero_Departamento": "5"
}', NULL);

SELECT JSON_MODIFY(FUNCIONARIO,'$.Sexo', NULL) FROM EMPRESA

UPDATE EMPRESA SET NOVO_FUNCIONARIO = JSON_MODIFY(FUNCIONARIO,'$.Sexo', NULL)

SELECT * FROM EMPRESA;