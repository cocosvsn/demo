/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2013/11/30 10:47:04                          */
/*==============================================================*/


drop table if exists category;

drop table if exists file;

drop table if exists film;

drop table if exists menu;

drop table if exists menu_film;

/*==============================================================*/
/* Table: category                                              */
/*==============================================================*/
create table category
(
   id                   int not null auto_increment comment 'The id of the category',
   ckey                 varchar(45) comment 'The key of the category',
   cval                 varchar(255) comment 'The value of the category',
   last_update          timestamp default current_timestamp comment 'The last update time of the category',
   remark               varchar(255) comment 'The remark of the category',
   primary key (id)
);

alter table category comment 'the categorys table';

/*==============================================================*/
/* Table: file                                                  */
/*==============================================================*/
create table file
(
   id                   int not null auto_increment comment 'The id of the file',
   film_id              varchar(20) not null comment 'The id of the film',
   file_name            varchar(255) comment 'The name of the file',
   file_size            bigint comment 'The size of the file',
   last_update          timestamp default current_timestamp comment 'The last update time of the file',
   remark               varchar(255) comment 'The remark of the file',
   category_film        int comment 'The file type of the film',
   primary key (id, film_id)
);

alter table file comment 'the film file table';

/*==============================================================*/
/* Table: film                                                  */
/*==============================================================*/
create table film
(
   id                   varchar(20) not null comment 'The id of the film',
   title                varchar(255) comment 'The title of the film',
   ratings              varchar(45) comment 'The ratings of the film',
   release_year         varchar(20) comment 'The release year of the film',
   language             varchar(255) comment 'The language of the film',
   genre                varchar(255) comment 'The genre of the film',
   actor                varchar(255) comment 'The actor of the film',
   director             varchar(255) comment 'The director of the film',
   country              varchar(45) comment 'The country of the film',
   length               smallint comment 'The length of the film (unit: min)',
   last_update          timestamp default current_timestamp comment 'The last update time of the film',
   description          text comment 'The description of the film',
   remark               varchar(255) comment 'The remark of the film',
   primary key (id)
);

alter table film comment 'the film table';

/*==============================================================*/
/* Table: menu                                                  */
/*==============================================================*/
create table menu
(
   id                   int not null auto_increment comment 'The id of the menu',
   parent               int comment 'The parent of the menu',
   category_style       int comment 'The terminal display style of the menu',
   name                 varchar(45) comment 'The name of the menu',
   display_order        int comment 'The display sub menu order of the parent menu',
   path                 varchar(45) comment 'The path of the menu',
   has_child            bool comment 'Has child of the menu',
   valid                bool comment 'Is valid of menu',
   level                int comment 'The level of the menu',
   icon                 varchar(255) comment 'The icon of the menu',
   focus_icon           varchar(255) comment 'The  focus icon of the menu',
   last_update          timestamp default current_timestamp comment 'The last update time of the menu',
   remark               varchar(255) comment 'The remark of the menu',
   primary key (id)
);

alter table menu comment 'terminal display menu';

/*==============================================================*/
/* Table: menu_film                                             */
/*==============================================================*/
create table menu_film
(
   menu_id              int not null comment 'The id of the menu',
   film_id              varchar(20) not null comment 'The id of the film',
   display_order        int comment 'The display film order of the menu',
   icon                 varchar(255) comment 'The icon of the menu film',
   last_update          timestamp default current_timestamp comment 'The last update time of the menu film',
   remark               varchar(255) comment 'The remark of the menu film',
   primary key (menu_id, film_id)
);

alter table menu_film comment 'the menu film table';

alter table file add constraint fk_file_category_film foreign key (category_film)
      references category (id) on delete restrict on update restrict;

alter table file add constraint fk_film_file foreign key (film_id)
      references film (id) on delete restrict on update restrict;

alter table menu add constraint fk_menu_parent foreign key (parent)
      references menu (id) on delete restrict on update restrict;

alter table menu add constraint fk_menu_style foreign key (category_style)
      references category (id) on delete restrict on update restrict;

alter table menu_film add constraint fk_fim_menu foreign key (film_id)
      references film (id) on delete restrict on update restrict;

alter table menu_film add constraint fk_menu_film foreign key (menu_id)
      references menu (id) on delete restrict on update restrict;

