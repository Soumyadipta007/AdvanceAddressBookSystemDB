alter table AddressBook add type varchar(20),name varchar(20)
update AddressBook set type='Superstars' where firstName='Ranbir' or firstName='Shahrukh'
update AddressBook set name='MumbaiContacts' where firstName='Ranbir' or firstName='Shahrukh'
update AddressBook set type='Me' where firstName='Soumya'
update AddressBook set name='SelfContact' where firstName='Soumya'
