DOMAINS
nama = orang(symbol,symbol)/*(Pertama,Kedua)*/    				//pada domain ini orang memakai tipe data symbol karena memiliki nilai berupa kumpulan karakter yang terdiri dari huruf atau kata.
hari_lahir = tanggal_lahir(integer,symbol,integer)/*(Hari,Bulan,Tahun)*/  //hari lahir bertipe data integer karena ada yang bersifat angka dan bulan bertipe data symbol karena memiliki nilai yang terdapat huruf dan tahun 
telepon=symbol/*Nomor Telepon*/					            bertipe data integer karena tahun bersifat angka atau angka bilangan bulat. dan nomor telepon bertipe data symbol katena symbol ini memiliki nilai.

PREDICATES
nondeterm daftar_telepon(nama,symbol,hari_lahir)	//predicates ini untuk memberikan gambaran atau fakta-fakta yang ada pada fungsi clause	
yang_ulang_tahun_bulan_ini
konversi_bulan(symbol,integer)
cek_bulan_ulang_tahun(integer,hari_lahir)
cetak_orang(nama)

CLAUSES									//pada section clauses ini prolog akan melakukan perintah yang digunakan untuk mencari goal, pada perintah write digunakan untuk menulis didalam goal secara langsung tanpa
yang_ulang_tahun_bulan_ini:-						  tanpa melalui seleksi. 

write("****Daftar Orang Yang Ulang Tahun Bulan Ini****"),nl,		   //dan tanda /t digunakan untuk membuat tab pada goal.
write("*********************************************************"),nl,   
date(_,Bulan_ini,_),/*Ambil bulan Pada sistem komputer*/       //perintah date(_,Bulan_ini,) digunakan untuk mengambil data bulan dan perintah daftar telepon digunakan untuk mencari objek orang dan objek tanggal bulan ulang tahun.		  
daftar_telepon(Orang,_,Tanggal),		// daftar_telepon(orang,_,tanggal) untuk mencari objek orang dan objek tanggal.
cek_bulan_ulang_tahun(Bulan_ini,Tanggal),	//   Bulan_ini,Tanggal digunakan untuk mengecek siapa yang berulang tahun dibulan ini dengan cara mencocokkan objek yang berada didalam predicate date dan objek di
						      dalam predicate daftar_telepon. 
write("Nama Pertama\t\tNama Kedua\n"),					 
cetak_orang(Orang),                        //cetak orang digunakan untuk mencetak nama orang yang berulang tahun bulan ini
fail.

yang_ulangtahun_bulan_ini:-		   //ini digunakan untuk membaca kembali goal.
write("\n\nTekan sembarang tombol..."),nl,
readchar(_).

cetak_orang(orang(Pertama,Kedua)):-   		//cetak_orang (orang(pertama,kedua) digunakan untuk menampilkan nama orang yang berulang tahun pada bulan ini.
write("",Pertama,"\t\t\t",Kedua),nl.		//dan tanda /t digunakan untuk membuat tab  pada goal dan nl digunakan untuk membuat baris baru. 

cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):-   //cek_bulan_ulang_tahun(Bul,tanggal_lahir(_bulan,_)) digunakan untuk perumpamaan  yang nantinya perumpaan tersebut akan dicari dengan
konversi_bulan(Bulan,Bulan1),				  menggunakan perintah konversi_bulan.
Bul=Bulan1.

daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)).		// daftar nomor telepon ini memuat tentang data yang dimasukan dan yang akan dicek sehingga ditemukan data
daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)).		   yang sesuai dengan goal yang diminta
daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar,1935)).
daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)).
daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)).
daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)).
daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,mar,1986)).
daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)).
daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)).
daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)).
daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)).
daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)).
daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)).
daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)).

konversi_bulan(jan,1).		//konversi bulan digunakan untuk mengkonversi bulan menjadi angka yang berurutan misalnya februari jika di konversi kan maka akan menjadi angka 2
konversi_bulan(feb,2).		  karena februari adalah bulan kedua.
konversi_bulan(mar,3).
konversi_bulan(apr,4).
konversi_bulan(may,5).
konversi_bulan(jun,6).
konversi_bulan(jul,7).
konversi_bulan(aug,8).
konversi_bulan(sep,9).
konversi_bulan(oct,10).
konversi_bulan(nov,11).
konversi_bulan(dec,12).

GOAL
yang_ulang_tahun_bulan_ini.	//goal ini berfungsi untuk perintah yang mencari siapa saja yang ulang tahun pada bulan ini.


