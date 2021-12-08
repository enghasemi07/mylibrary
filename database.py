import mysql.connector

def newbook():
    mydb = mysql.connector.connect(
        host="localhost",
        user="maryam",
        password="123456m",
        database="mylibrary"
    )
    mycursor = mydb.cursor()

    sql = "INSERT INTO `book`( `name`, `shabak`, `price`, `subject`, `count`) VALUES ('%s','%s','%s','%s','%s')"
    name=input("pls enter book name")
    shabak=input("pls enter book shabak")
    price=input("pls enter book price")
    subject=input("pls enter book subject")
    count=input("pls enter book count")
    val = ('name','shabak','price','subject','count')
    mycursor.execute(sql, val)

    mydb.commit()
    print(mycursor.rowcount, "record inserted.")


def newmember():
    mydb = mysql.connector.connect(
        host="localhost",
        user="maryam",
        password="123456m",
        database="mylibrary"
  )
    mycursor = mydb.cursor()

    sql = "INSERT INTO `members`( `name`, `lastname`, `codemeli`, `phone`) VALUES ('%s','%s','%s','%s')"
    name = input("pls enter member name")
    lastname = input("pls enter member lastname")
    codemeli = input("pls enter member codemeli")
    phone = input("pls enter member phone")

    val = ('name','lastname','codemeli','phone')
    mycursor.execute(sql, val)

    mydb.commit()
    print(mycursor.rowcount, "record inserted.")


def viewmember():
    mydb = mysql.connector.connect(
        host="localhost",
        user="maryam",
        password="123456m",
        database="mylibrary"
  )

    mycursor = mydb.cursor()

    mycursor.execute("SELECT * FROM members")

    myresult = mycursor.fetchall()

    for x in myresult:
     print(x)

