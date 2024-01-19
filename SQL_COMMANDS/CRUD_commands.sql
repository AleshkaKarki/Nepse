import mysql.connector

# Connect to MySQL database
connection = mysql.connector.connect(host='localhost', user='root', passwd='', database='nepse porfolio')
cursor=connection.cursor()

# Read data from MySQL database table and display it
sql_select_Query = "select * from user"
cursor.execute(sql_select_Query)
records = cursor.fetchall()

records = pd.DataFrame(records)
print(records)

username = input('Enter Username: ')
password = input('Enter Password: ')
email = input('Enter email: ')
user_role = input('Enter user_role: ')


# insert new data
sql_select_Query = '''INSERT into user (username,password,email,user_role)
    
 VALUES (%s, %s, %s, %s)
'''


cursor.execute(sql_select_Query, (username, password, email, user_role))
connection.commit()
#delete data
sql_select_Query =''' DELETE from user
    WHERE user_role = 'user' '''
cursor.execute(sql_select_Query)
connection.commit()
#update user
sql_select_Query = '''UPDATE user
    SET user_role= 'user'
    WHERE user_role = 'admin' '''
cursor.execute(sql_select_Query)
connection.commit()
    
