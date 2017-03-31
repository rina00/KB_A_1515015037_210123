
DOMAINS   
benda            = buku(judul, pengarang) ;     // pada program ini hanya terdiri dari 4 section yaitu domains,predicates,clauses dan goal. p ada domain digunakan untuk mendeklarasikan objek yang 
						   diperlukan dalam suatu data. misal pada buku mempunyai judul dan pengarang.
							  
kuda(nama) ; kapal ;        
bukubank(saldo)  //pada buku bank terdapat saldo. 
 judul, pengarang, nama = symbol //pada judul dan pengarang berserta nama bertipe data symbol karena predikat pada argumennya memiliki nilai berupa kumpulan karakter yang terdiri dari huruf
                                   atau kata.
					    
saldo                = real  //dan saldo memakai tipe data real karena pada saldo memakai angka atau nomor dan bisa juga memakai bilangan desimal.
 
PREDICATES   
nondeterm milik(nama,benda) //pada section ini berfungsi untuk memberikan gambaran akan fakta-fakta yang ada pada section clause .

CLAUSES  
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).   //pada perintah ini untuk menyatakan bahwa erwin memiliki buka dengan judul markesot bertutur dan pengarangnya Emha Ainun Najib.
milik(erwin, kuda(buraq)).    //erwin memiliki kuda atau bisa jadi kuda milik erwin.
milik(erwin, kapal).       //erwin memiliki kapan atau bisa jadi kapal milik erwin.
milik(erwin, bukubank(1000)).  //erwin memiliki bukubank atau bisa juga bukubank milik erwin.
 
 
GOAL   			//pada goal ini digunakan untuk mencetak hasil output yang dicari. misalnya seperti perintah disamping untuk mencari benda milik erwin.
milik(erwin, Benda).   

