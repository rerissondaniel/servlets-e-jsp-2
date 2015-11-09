drop database if exists library;

create database if not exists library;

use library;

create table if not exists tb_admin(
	id_admin integer primary key auto_increment,
	name varchar(255),
	password varchar(255)
);

create table if not exists tb_volume(
	id_volume integer primary key auto_increment,
	title varchar(255),
	description varchar(255),
	type varchar(255),
	publisher varchar(255),
	pages integer,
	publication_year integer
);

create table if not exists tb_volume_author(
	id_volume integer,
	author_name varchar(255),
	constraint fk_tb_volume 
	foreign key tb_volume_author(id_volume) 
	references tb_volume(id_volume) on delete cascade,

	primary key (id_volume, author_name)
);



    	<tr>
    		<td>Breve Descrição</td>
    		<td><jsp:getProperty name="volume" property="volume.description" /></td>
    	</tr>
    	
    	<tr>
    		<td>Tipo</td>
    		<td><jsp:getProperty name="volume" property="volume.type" /></td>
    	</tr>
    	
    	<tr>
    		<td>Editora</td>
    		<td><jsp:getProperty name="volume" property="volume.publisher" /></td>
    	</tr>
    	
    	<tr>
    		<td>Ano de Publicação</td>
    		<td><jsp:getProperty name="volume" property="volume.publicationYear" /></td>
    	</tr>
    	
    	<tr>
    		<td>Número de Páginas</td>
    		<td><jsp:getProperty name="volume" property="volume.numberOfPages" /></td>
    	</tr>
    	
    	<tr>
    		<td>Autores</td>
    		<td>
    			<c:forEach items="${volume.authors}" var="author">  
				    ${author}<br>
				</c:forEach>
			</td>
    	</tr>