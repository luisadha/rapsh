from tabulate import tabulate

# Data tabel awal
#data = [
#    ["PROFILE", "", "1) SUMMARY"],
#    ["COST TO STATE", "", "2) VEHICLE DATABASE"],
#    ["CARS IMPOUNDED", "", "3) INFRACTIONS"],
#    ["CARS MONITORED", "", "4) COST TO STATE"],
#    ["BOUNTY", "", "5) TOP 5 PURSUITS"],
#    ["FINES DUE", "", "6) RANKINGS"],
#    ["PURSUITS EVADED", "", "7) SAVE CURRENT PROGRESS"],
#    ["BUSTED", "", "0) EXIT"]
#]

data = []
# Nama kolom

# Membaca data dari file "data.sh" dan memasukkannya ke dalam tabel

# Membaca data dari file "data.sh" dan memasukkannya ke dalam tabel

with open('data.sh', 'r') as file:
    lines = file.readlines()
    for line in lines:
        # Memisahkan Nama dan Nilai dari setiap baris berdasarkan tanda ":" (atau sesuaikan dengan format file "data.sh" Anda)
#        parts = line.strip().split(":")
 #       if len(parts) == 2:
  #          nama = parts[0].strip()
   #         nilai = parts[1].strip()
    #        data.append([nama, "", nilai])
        # Memisahkan kunci dan nilai dari setiap baris berdasarkan tanda ":"
        key, value = map(str.strip, line.strip().split(':'))
        data.append([key, value])
# Nama kolom
headers = ["    RAPSHEET     ", "    R.P.D    "]

# Mencetak tabel dengan batas (border)
table = tabulate(data, headers=headers, tablefmt="grid")
print(table)
