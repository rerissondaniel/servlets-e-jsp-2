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