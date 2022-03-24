/*
Eğer not null olması gereken bir kolon ise kolonu oluşturduğumuzda ona bir default değer set etmeliyiz.
YOksa veri akışı salayan uygulama canlıya alınıncaya dek sistem fail edecektir.*/

-- any model change in the code should be compatible with the current database schema.


alter table patients add patient_status char(1) default '0' not null;


/* Örnek olarak aşağıdaki sorguyu çalıştırdığımda sistem bana 
ERROR: column "patient_a" contains null values bu hatayı vermektedir.*/

alter table patients add patient_a char(100)  not null;

/*Sisteme kayıt yapılırken null bir şekilde aynı kolonu eklemeye çalıştırdığımda sıkıntısız bir şekilde eklemiş oldum.
*/
alter table patients add patient_a char(100)   null;