PROCEDURE Peminjaman_Buku
    INPUT nama_peminjam
    INPUT judul_buku
    IF buku_available(judul_buku) THEN
        UPDATE status_buku(judul_buku) TO "Dipinjam"
        PRINT "Buku", judul_buku, "telah berhasil dipinjam oleh", nama_peminjam, "jangan lupa untuk mengembalikan buku tepat waktu"
    ELSE
        PRINT "Maaf, buku", judul_buku, "sedang tidak tersedia untuk dipinjam"
    END IF
END PROCEDURE

PROCEDURE Pengembalian_Buku
    INPUT judul_buku
    IF buku_dipinjam(judul_buku) THEN
        UPDATE status_buku(judul_buku) TO "Tersedia"
        PRINT "Buku", judul_buku, "telah berhasil dikembalikan"
    ELSE
        PRINT "Maaf, buku", judul_buku, "belum dipinjam"
    END IF
END PROCEDURE
