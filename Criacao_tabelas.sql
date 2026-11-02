CREATE TABLE Tutor (
id_tutor INTEGER,
nome 	VARCHAR(100) CONSTRAINT nn_tutor_name NOT NULL,
CPF		VARCHAR(11)  CONSTRAINT un_tutor_cpf UNIQUE,
telefone VARCHAR(15) CONSTRAINT nn_tutor_tel NOT NULL,
CONSTRAINT pk_id_tutor PRIMARY KEY (id_tutor)
);

CREATE TABLE Veterinario (
  id_veterinario INTEGER,
  nome           VARCHAR(100) CONSTRAINT nn_vet_nome NOT NULL,
  crmv           VARCHAR(20)  CONSTRAINT un_vet_crmv UNIQUE,
  CONSTRAINT pk_id_vet PRIMARY KEY(id_veterinario)
);

CREATE TABLE Animal (
  id_animal INTEGER,
  nome      VARCHAR(100) CONSTRAINT nn_animal_nome NOT NULL,
  especie   VARCHAR(50)  CONSTRAINT nn_animal_especie NOT NULL,
  id_tutor  INTEGER      CONSTRAINT nn_animal_tutor NOT NULL,
  CONSTRAINT pk_id_animal PRIMARY KEY(id_animal),
  CONSTRAINT fk_animal_tutor FOREIGN KEY(id_tutor) REFERENCES Tutor(id_tutor)
);

CREATE TABLE Agendamento (
  id_agendamento INTEGER,
  id_animal      INTEGER      CONSTRAINT nn_agend_animal NOT NULL,
  id_veterinario INTEGER      CONSTRAINT nn_agend_vet NOT NULL,
  data_hora      TIMESTAMP,
  status         VARCHAR(20)  CONSTRAINT chk_status CHECK (status IN ('agendado', 'realizado', 'cancelado')),
  CONSTRAINT pk_id_agendamento PRIMARY KEY(id_agendamento),
  CONSTRAINT fk_agend_animal FOREIGN KEY(id_animal) REFERENCES Animal(id_animal),
  CONSTRAINT fk_agend_vet FOREIGN KEY(id_veterinario) REFERENCES Veterinario(id_veterinario)
);

CREATE TABLE Atendimento (
  id_atendimento INTEGER,
  id_agendamento INTEGER,
  historico      VARCHAR(255) CONSTRAINT nn_atend_hist NOT NULL,
  CONSTRAINT pk_id_atendimento PRIMARY KEY(id_atendimento),
  CONSTRAINT fk_atend_agend FOREIGN KEY(id_agendamento) REFERENCES Agendamento(id_agendamento)
);

CREATE TABLE Procedimento (
  id_procedimento INTEGER,
  id_atendimento  INTEGER      CONSTRAINT nn_proc_atend NOT NULL,
  descricao       VARCHAR(100) CONSTRAINT nn_proc_desc NOT NULL,
  custo           NUMERIC(7,2),
  CONSTRAINT pk_id_procedimento PRIMARY KEY(id_procedimento),
  CONSTRAINT fk_proc_atend FOREIGN KEY(id_atendimento) REFERENCES Atendimento(id_atendimento)
);

CREATE TABLE Medicamento (
  id_medicamento   INTEGER,
  nome_medicamento VARCHAR(100) CONSTRAINT nn_med_nome NOT NULL,
  CONSTRAINT pk_id_medicamento PRIMARY KEY(id_medicamento)
);