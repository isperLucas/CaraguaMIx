CREATE DATABASE cm_dados;
USE cm_dados;

CREATE TABLE Usuario(
    email_user  VARCHAR(50) PRIMARY KEY,
    ip_user     INT,
    nome_user   VARCHAR(20),
    senha_user  VARCHAR(50),
    sexo_user   CHAR,
    dtNasc_user DATE,
    dtCad_user  DATE,   
    imgProfile_user VARCHAR(50)
);

CREATE TABLE Pagina(
    id_pg   INT PRIMARY KEY,
    src_pg  VARCHAR(50),
    emailUser_pg    VARCHAR(50),
    titulo_pg   VARCHAR(20),
    logo_pg VARCHAR(50),
    FOREIGN KEY (emailUser_pg) REFERENCES Usuario(email_user)
    
    
);