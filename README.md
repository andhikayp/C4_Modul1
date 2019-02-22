# C4_Modul1

No 1.

```
//BASH SCRIPT
#!/bin/bash
iter=0    
for gambarnya in /home/andhika/sisop19/modul1/nature/*.jpg
do
base64 -d $gambarnya | xxd -r > /home/andhika/sisop19/modul1/gambar_kebuka/$iter.jpg
iter=$((iter + 1))
done
```
PENJELASAN
- Pertama, extract isi nature.zip ke direktori yang diinginkan, disini kami menggunakan direktori /home/andhika/sisop19/modul1/nature/.

- Selanjutnya dalam bash script yang akan dijalankan, buat sebuah variable untuk penamaan file berdasarkan variable tersebut, pada script ini digunakan variable ITER dengan value awal 0 dan akan terus bertambah sampai loop selesai.

```for gambarnya in /home/andhika/sisop19/modul1/nature/*.jpg```
- variable gambarnya akan menyimpan file *.jpg selama file jpg di folder tersebut masih ada.

```base64 -d $gambarnya```
- akan men-decode base64 pada $gambarnya, xxd -r akan mengconvert hexdump ke binary. iter=$((iter + 1)) akan meng-increment iter.
```
//CRONTAB
14 14 14 2 5 /bin/bash /home/andhika/sisop19/modul1/soal1.sh
```
- Kemudian, buka crontab -e dan masukkan 14 14 14 2 5 /bin/bash /home/andhika/sisop19/modul1/soal1.sh dengan tujuan agar pada pukul 14:14 pada tanggal 14 Februari atau pada hari jumat bulan februari, script soal1.sh akan di-bash.

