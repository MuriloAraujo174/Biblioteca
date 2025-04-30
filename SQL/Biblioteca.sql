create database SistemaBiblioteca;
use SistemaBiblioteca;
create table Autores(
    id_autores int primary key auto_increment not null,
    nome varchar(50) not null,
    nacionalidade varchar(50) not null,
    editora varchar(50) not null,
    codigo_autor int not null,
    data_nascimento date not null
);


create Clientes(
    id_Clientes int primary key auto_increment,
    nome_completo varchar(50) not null,
    data_nascimento date,
    cpf varchar(15) unique not null,
    Sexo varchar(10) not null,
    nome_resposavel varchar(50) not null, 
    cep varchar(10) not null,
    logradouro varchar(100) not null,
    numero int not null,
    complemento varchar(50),
    bairro varchar(50) not null,
    cidade varchar(50) not null,
    estado varchar(50) not null,
    telefone varchar(15) not null,
    email varchar(50) not null,
    senha varchar(20) not null
);
create funcionarios(
    id_funcionarios int primary key auto_increment,
    nome varchar(50) not null,
    data_nascimento date not null,
    cpf varchar(15) unique not null,
    endereco varchar(100) not null,
    telefone varchar(15) not null,
    email varchar(50) not null,
    senha varchar(20) not null
);
create Livros(
    id_livros int primary key auto_increment,
    titulo varchar(100) not null,
    subtituto varchar(100) not null,
    edicao varchar(50) not null,
    idioma varchar(50) not null,
    genero varchar(50) not null,
    ano_publicacao int not null,
    codigo_livro int not null,
    id_autores int not null,
    foreign key (id_autores) references Autores(id_autores)
);
create Emprestimos(
    id_emprestimos int primary key auto_increment,
    id_livros int not null,
    id_usuarios int not null,
    data_emprestimo date not null,
    data_devolucao date not null,
    status varchar(20) not null,
    foreign key (id_livros) references Livros(id_livros),
    foreign key (id_usuarios) references Usuarios(id_usuarios)
);
create Devolucoes(
    id_devolucoes int primary key auto_increment,
    id_emprestimos int not null,
    data_devolucao date not null,
    foreign key (id_emprestimos) references Emprestimos(id_emprestimos)
);
create Multas(
    id_multas int primary key auto_increment,
    id_emprestimos int not null,
    valor decimal(10,2) not null,
    data_multas date not null,
    foreign key (id_emprestimos) references Emprestimos(id_emprestimos)
);