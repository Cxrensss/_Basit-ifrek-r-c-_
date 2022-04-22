#sifre tokatliyici
import random
sf="3574"
numbers='0123456789'
sale=[]
password_len=int(input("şifrenizin uzunluğu ne kadar olsun"))
password_count=int(input("kaç adet şifre oluşturulsun"))
for x in range(0,password_count):
    password=""
    for x in range(0,password_len):
        password_num=random.choice(numbers)
        password=password+password_num
    sale.append(password)
print(sale)

for i in range(0,10000):
        if sf==sale[i]:
            print("şifre kirildi")
            print("kırılan şifre:",sale[i])
            break
        else:
             print(".")
