<h1 align="center">Modelagem de Dados SQL</h1>

---
## Sobre o REPO

> Repositório criado após sentir dificuldade em lembrar comandos básicos para projeção de dados de duas tabelas, que deveria trazer uma quantidade **`x`** de dados em ordem a depender de um quantitativo de vendas, ordenar em > para <. 
>> Exemplo: Dado as tabelas `CLIENTES(id, nome)` e  Tabela `COMPRAS(id_cliente, valor)` faça uma query que traga os 9 maiores compradores.


```sql
SELECT c.nome as "Os 9 Maiores Compradores" FROM clientes c INNER JOIN vendas v on v.id_cliente = c.id ORDER BY v.valor DESC LIMIT 9
```


### 1 Forma Normal.

1. Todo campo vetorizado torna-se outra tabela.

1. Todo campo múlti valorado torna-se outra tabela.

1. Toda tabela necessita de pelo menos um campo que identifique todo registro como sendo único.
---

### 2 Etapas de Modelagem.

1. Modelo Conceitual.

1. Modelo Logico "(Tipado)".

1. Modelo Fisico "(Script)".