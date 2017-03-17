PREDICATES					//Predikat ini adalah nama simbol untuk relasi. Putra ("ikhsan","bentang") maka predikat dari fakta tersebut di tulis 
putra(STRING,STRING)				  putra (STRING,STRING). Dimana Putra adalah nama predikat sedangkan ikhsan dan bentang adalah menunjukan argumen
saudara_perempuan(STRING,STRING)
saudara_laki(STRING,STRING)
menikah(STRING,STRING)
ayah(STRING ayah,STRING putra)
kakek(STRING kakek,STRING cucu)
nondeterm ipar_perempuan(STRING,STRING)		//kata nondeterm ini berfungsi untuk memberitahu bahwa predikat tersebut mempunyai lebih dari kemungkinan jawaban.

CLAUSES
putra("Ikhsan","Bentang").                //dalam bahasa formal ikhsan putra bentang.
saudara_perempuan("Dini","Dina").	  // dini adalah saudara perempuannya dina.
saudara_laki("Adi","Lintang").		  // adi adalah saudara laki-lakinya lintang.
menikah("Ikhsan","Dini").		  // ikhsan menikah dengan dini.
menikah("Lintang","Surga").	          // lintang menikah dengan surga
ayah(A,B):-putra(B,A).			  // A adalah ayah dari B hanya jika B adalah putra dari A
kakek(A,B):-ayah(A,C), ayah(C,B).	  // A adalah kakek dari B hanya jika A adalah ayah dari C dan C adalah ayah dari B.	
ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B). //A adalah ipar perempuan dari B hanya jika  A menikah dengan C dan C adalah saudara perempuan dari B.
ipar_perempuan(A,B):-saudara_laki(A,C), menikah(C,B). //A adalah ipar perempuan B hanya jika A saudara laki dari C dan C menikah dengan B.

GOAL
ipar_perempuan("Ikhsan",X). // pada bagian goal ini dapat disebut sebagai sebuah kalimat pertanyaan atau tujuan. jadi arti dari goal tersebut jika di artikan dalam bahasa normal
				yaitu : siapa ipar perempuan ikhsan? karena disitu terdapat variabel X, jadi jika dikatakan dalam bahasa normal dapat di artikan sebagai "siapa".
				sehingga ketika program dijalan kan otomatis program akan menyebut Dina sebagai ipar perempuan ikhsan karena pada bagian Clauses terdapat 
				menikah ("ikhsan","dini") yang artinya ikhsan menikah dengan dini, dan saudara_perempuan("dini","dina") yang artinya dini adalah saudara perempuan dina, 
				sehingga dalam bahasa normalnya ketika ikhsan menikah dengan dini dan dina sebagai saudara perempuan dini maka dina sebagai ipar perempuannya ikhsan.