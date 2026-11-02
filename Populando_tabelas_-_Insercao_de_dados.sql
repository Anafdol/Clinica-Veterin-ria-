INSERT INTO Tutor (id_tutor, nome, cpf, telefone) VALUES 
(1, 'Ana Silva', '11122233344', '910000001'),
(2, 'Carlos Sousa', '22233344455', '910000002'),
(3, 'Beatriz Costa', '33344455566', '910000003'),
(4, 'Daniel Oliveira', '44455566677', '910000004'),
(5, 'Eliana Souza', '55566677788', '910000005'),
(6, 'Fernando Lima', '66677788899', '910000006'),
(7, 'Gabriela Santos', '77788899900', '910000007'),
(8, 'Henrique Alves', '88899900011', '910000008'),
(9, 'Isabela Ribeiro', '99900011122', '910000009'),
(10, 'Julio Cesar', '00011122233', '910000010'),
(11, 'Karina Mendes', '11100022233', '910000011'),
(12, 'Leonardo Pereira', '22211133344', '910000012'),
(13, 'Mariana Rocha', '33322244455', '910000013'),
(14, 'Nelson Barbosa', '44433355566', '910000014'),
(15, 'Olivia Martins', '55544466677', '910000015'),
(16, 'Paulo Ferreira', '66655577788', '910000016'),
(17, 'Quiteria Gomes', '77766688899', '910000017'),
(18, 'Rafael Carvalho', '88877799900', '910000018'),
(19, 'Sandra Nunes', '99988800011', '910000019'),
(20, 'Thiago Araujo', '00099911122', '910000020');

SELECT *FROM tutor;

INSERT INTO Veterinario (id_veterinario, nome, crmv) VALUES 
(1, 'Dr. João Pedro', 'CRMV-1234'),
(2, 'Dra. Mariana', 'CRMV-5678'),
(3, 'Dr. Rui Santos', 'CRMV-9012'),
(4, 'Dra. Carla Dias', 'CRMV-3456'),
(5, 'Dr. Marcos Paulo', 'CRMV-7890');

SELECT *FROM veterinario

INSERT INTO Animal (id_animal, nome, especie, id_tutor) VALUES
(1, 'Rex', 'Cachorro', 1),
(2, 'Mimi', 'Gato', 2),
(3, 'Bolinha', 'Cachorro', 2),
(4, 'Thor', 'Cachorro', 3),
(5, 'Mel', 'Gato', 4),
(6, 'Bob', 'Cachorro', 5),
(7, 'Nina', 'Gato', 6),
(8, 'Zeus', 'Cachorro', 7),
(9, 'Luna', 'Gato', 8),
(10, 'Pingo', 'Cachorro', 9),
(11, 'Lola', 'Gato', 10),
(12, 'Princesa', 'Cachorro', 1),
(13, 'Chiquinho', 'Gato', 3),
(14, 'Pandora', 'Cachorro', 5),
(15, 'Simba', 'Gato', 7),
(16, 'Toby', 'Cachorro', 11),
(17, 'Cleo', 'Gato', 12),
(18, 'Max', 'Cachorro', 13),
(19, 'Mia', 'Gato', 14),
(20, 'Spike', 'Cachorro', 15),
(21, 'Amora', 'Gato', 16),
(22, 'Duque', 'Cachorro', 17),
(23, 'Frida', 'Gato', 18),
(24, 'Marley', 'Cachorro', 19),
(25, 'Nala', 'Gato', 20);

SELECT *FROM animal

SELECT t.nome AS tutor, a.nome AS animal, a.especie
FROM Animal a
JOIN Tutor t ON a.id_tutor = t.id_tutor
ORDER BY t.nome;

INSERT INTO Medicamento (id_medicamento, nome_medicamento) VALUES 
(1, 'Antipulgas Plus'),
(2, 'Antibiótico Vet'),
(3, 'Anti-inflamatório'),
(4, 'Vermífugo Total'),
(5, 'Colírio Veterinário'),
(6, 'Vitamina C Canina'),
(7, 'Pomada Cicatrizante'),
(8, 'Probiótico Pet'),
(9, 'Analgésico Felino'),
(10, 'Calmante Natural');

INSERT INTO Agendamento (id_agendamento, id_animal, id_veterinario, data_hora, status) VALUES
(1, 1, 1, '2026-03-01 10:00:00', 'realizado'),   
(2, 2, 2, '2026-03-02 14:00:00', 'realizado'),   
(3, 3, 1, '2026-03-05 09:00:00', 'realizado'),   
(4, 4, 3, '2026-03-10 11:00:00', 'realizado'),   
(5, 5, 4, '2026-03-12 15:30:00', 'realizado'),   
(6, 6, 5, '2026-03-15 08:30:00', 'realizado'),   
(7, 7, 1, '2026-03-18 16:00:00', 'realizado'),   
(8, 8, 2, '2026-03-20 09:30:00', 'realizado'),   
(9, 9, 3, '2026-03-22 13:00:00', 'realizado'),   
(10, 10, 4, '2026-03-25 10:30:00', 'realizado'), 
(11, 11, 5, '2026-03-27 14:30:00', 'realizado'), 
(12, 12, 1, '2026-03-28 09:00:00', 'realizado'), 
(13, 13, 2, '2026-03-29 11:30:00', 'realizado'), 
(14, 14, 3, '2026-03-30 15:00:00', 'realizado'), 
(15, 15, 4, '2026-03-31 10:00:00', 'realizado'), 

(16, 16, 5, CURRENT_TIMESTAMP + INTERVAL '1 day', 'agendado'),  
(17, 17, 1, CURRENT_TIMESTAMP + INTERVAL '2 days', 'agendado'), 
(18, 18, 2, CURRENT_TIMESTAMP + INTERVAL '3 days', 'agendado'), 
(19, 19, 3, CURRENT_TIMESTAMP + INTERVAL '4 days', 'agendado'), 
(20, 20, 4, CURRENT_TIMESTAMP + INTERVAL '5 days', 'agendado'), 
(21, 21, 5, CURRENT_TIMESTAMP + INTERVAL '6 days', 'agendado'), 
(22, 22, 1, CURRENT_TIMESTAMP + INTERVAL '7 days', 'agendado'), 
(23, 23, 2, CURRENT_TIMESTAMP + INTERVAL '8 days', 'agendado'), 
(24, 24, 3, CURRENT_TIMESTAMP + INTERVAL '9 days', 'agendado'), 
(25, 25, 4, CURRENT_TIMESTAMP + INTERVAL '10 days', 'agendado'); 

SELECT ag.id_agendamento, t.nome AS tutor, a.nome AS animal, ag.data_hora, ag.status
FROM Agendamento ag
JOIN Animal a ON ag.id_animal = a.id_animal
JOIN Tutor t ON a.id_tutor = t.id_tutor
ORDER BY ag.data_hora;

INSERT INTO Atendimento (id_atendimento, id_agendamento, historico) VALUES
(1, 1, 'Animal apresentou alergia leve. Receitado medicamento.'),
(2, 2, 'Consulta de rotina. Animal saudável.'),
(3, 3, 'Animal com dor na pata. Feito raio-X.'),
(4, 4, 'Vacinação anual em dia.'),
(5, 5, 'Limpeza de tártaro realizada com sucesso.'),
(6, 6, 'Otite externa tratada com pomada.'),
(7, 7, 'Check-up geriátrico sem alterações.'),
(8, 8, 'Exame de sangue preventivo solicitado.'),
(9, 9, 'Queda de pelos investigada, receitado suplemento.'),
(10, 10, 'Animal recuperado de cirurgia recente.'),
(11, 11, 'Controle de peso orientado. Ajuste na alimentação.'),
(12, 12, 'Aplicação de vermífugo e antipulgas.'),
(13, 13, 'Retorno pós-vacinação sem reações adversas.'),
(14, 14, 'Infecção urinária leve. Receitado antibiótico.'),
(15, 15, 'Consulta de rotina. Animal saudável e ativo.');

SELECT * FROM Atendimento;

INSERT INTO Procedimento (id_procedimento, id_atendimento, descricao, custo) VALUES 
(1, 1, 'Consulta Geral', 50.00),
(2, 2, 'Consulta Ortopédica', 70.00),
(3, 3, 'Consulta Geral', 50.00),
(4, 3, 'Raio-X', 120.00),
(5, 4, 'Aplicação de Vacina', 90.00),
(6, 5, 'Limpeza de Tártaro', 200.00),
(7, 6, 'Consulta Dermatológica', 80.00),
(8, 7, 'Consulta Geriátrica', 100.00),
(9, 8, 'Coleta de Sangue', 40.00),
(10, 9, 'Consulta Geral', 50.00),
(11, 10, 'Revisão Pós-Cirúrgica', 60.00),
(12, 4, 'Exame Clínico', 50.00),
(13, 6, 'Limpeza de Ouvido', 45.00),
(14, 2, 'Corte de Unhas', 25.00),
(15, 5, 'Anestesia', 150.00);

SELECT * FROM Procedimento;
SELECT descricao, custo FROM Procedimento;
SELECT * FROM Procedimento WHERE custo > 100.00;

SELECT 
    t.nome AS tutor,
    a.nome AS animal,
    p.descricao AS procedimento,
    p.custo
FROM Tutor t
INNER JOIN Animal a ON t.id_tutor = a.id_tutor
INNER JOIN Agendamento ag ON a.id_animal = ag.id_animal
INNER JOIN Atendimento at ON ag.id_agendamento = at.id_agendamento
INNER JOIN Procedimento p ON at.id_atendimento = p.id_atendimento;

CREATE TABLE Prescricao (
  id_atendimento INTEGER,
  id_medicamento INTEGER,
  CONSTRAINT pk_prescricao PRIMARY KEY(id_atendimento, id_medicamento),
  CONSTRAINT fk_presc_atend FOREIGN KEY(id_atendimento) REFERENCES Atendimento(id_atendimento),
  CONSTRAINT fk_presc_med FOREIGN KEY(id_medicamento) REFERENCES Medicamento(id_medicamento)
);

INSERT INTO Prescricao (id_atendimento, id_medicamento) VALUES
(1, 1),
(2, 4),
(3, 3),
(3, 7),
(4, 6),
(5, 2),
(6, 5),
(6, 7),
(7, 10),
(8, 6),
(9, 8),
(10, 3),
(11, 9),   
(12, 2),   
(12, 6),   
(14, 1),   
(14, 8);

SELECT * FROM Prescricao;

SELECT 
    t.nome AS tutor,
    a.nome AS animal,
    at.historico AS atendimento,
    m.nome_medicamento AS medicamento_prescrito
FROM Tutor t, Animal a, Agendamento ag, Atendimento at, Prescricao pr, Medicamento m
WHERE t.id_tutor = a.id_tutor
  AND a.id_animal = ag.id_animal
  AND ag.id_agendamento = at.id_agendamento
  AND at.id_atendimento = pr.id_atendimento
  AND pr.id_medicamento = m.id_medicamento;

  UPDATE Tutor SET telefone = '919999999' WHERE id_tutor = 1;

SELECT * FROM Tutor WHERE id_tutor = 1;

INSERT INTO Agendamento (id_agendamento, id_animal, id_veterinario, data_hora, status) 
VALUES (99, 1, 1, '2026-12-31 10:00:00', 'cancelado');

INSERT INTO Agendamento (id_agendamento, id_animal, id_veterinario, data_hora, status)
VALUES (26, 22, 1, CURRENT_TIMESTAMP + INTERVAL '7 days', 'cancelado');

SELECT * FROM Agendamento WHERE id_agendamento = 26;

DELETE FROM Agendamento WHERE id_agendamento = 99;

SELECT * FROM Agendamento WHERE id_agendamento = 99;

