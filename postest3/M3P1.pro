DOMAINS
kali,jumlah = integer   /* domain ini sebagai pendeklarasi struktur data apa yang dipakai jadi kali dan jumlah memakai tipe data integer karena disini program akan melakukan perhitungan dan 
			   tipe data interger ini untuk data yang berbentuk angka bilangan bulat */

PREDICATES
tambahkan(jumlah,jumlah,jumlah) // predikat ini merupakan nama simbol untuk relasi predikat tambahkan maka simbolnya tambah dan predikat kalikan maka simbolnya kali karena pada program
kalikan(kali,kali,kali)		   ini akan melakukan pertambahan dan parkalian.

CLAUSES
tambahkan(X,Y,Jumlah):-Jumlah=X+Y. // jadi dalam hal ini X dan Y dapat dikatakan siapa merupakan variabel X dan apa merupakan variabel Y. sehingga jika tambah maka tambah=X+Y. 
kalikan(X,Y,Kali):-Kali=X*Y.	      jika kali maka kali=X*Y. ini merupakan rumus perhitungan dari pertambahan dan perkalian yang nantinya dibagian GOAL akan menanyaan tentang
				      siapa dan apa yang di tambahkan atau dikalikan, tetapi tentunya dalam bentuk nilai atau angka karena dibagian domain sudah memakai interger.

GOAL
tambahkan(32,54,Jumlah). // goal untuk menyatakan pertanyaan atau tujuan, jadi disini pertanyaannya 32+54 jumlahnya adalah, jadi ketika program berjalan maka akan menjawab hasilnya
			    yaitu 86. 