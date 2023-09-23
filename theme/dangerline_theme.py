import os
import subprocess
from tabulate import tabulate

# Data dari file "data.sh"
data = []
with open('current_alias.data', 'r') as file:
    lines = file.readlines()
    for line in lines:
        key, value = map(str.strip, line.strip().split(':'))
        data.append([key, value])

# Mengambil lebar kolom dari hasil perintah 'tput cols'
try:
    max_columns = int(subprocess.check_output(["tput", "cols"]))
except (subprocess.CalledProcessError, ValueError):
    max_columns = 80  # Default 80 kolom jika 'tput cols' gagal

# Menentukan lebar header "Kunci" dan "Nilai" sesuai dengan setengah dari lebar maksimum
kunci_width = max_columns // 2
nilai_width = max_columns // 2

# Nama kolom
headers = ["RAPSHEET".center(kunci_width), "R.P.D".center(nilai_width)]

# Mengubah ukuran tabel sesuai dengan jumlah kolom
table = tabulate(data, headers=headers, tablefmt="grid")
# Mengganti panjang baris tabel sesuai dengan lebar tput cols
table_lines = table.split('\n')
table_adjusted = '\n'.join(line[0:max_columns] for line in table_lines)

# Menampilkan tabel tanpa border di sisi kiri
print(table_adjusted)
