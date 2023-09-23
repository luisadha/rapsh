import os
from tabulate import tabulate

# Data dari file "data.sh"
data = []
with open('data.sh', 'r') as file:
    lines = file.readlines()
    for line in lines:
        key, value = map(str.strip, line.strip().split(':'))
        data.append([key, value])

# Nama kolom
headers = ["Kunci", "Nilai"]

# Menghitung jumlah kolom yang sesuai dengan $COLUMNS
columns = int(os.getenv('COLUMNS', 80))  # Default 80 kolom jika $COLUMNS tidak ada

# Mencetak tabel dengan batas (border) sesuai dengan jumlah kolom
table = tabulate(data, headers=headers, tablefmt="grid")
for i in range(columns):
    table = table.replace(' ', '_', )  # Mengganti spasi pertama di setiap baris dengan underscore
print(table)
