# -*- coding: utf-8 -*-
"""
Created on Mon Apr 26 11:02:57 2021

@author: Mitch Perez and Shayne Sendera
"""

from flask import Flask, render_template, request
from datetime import datetime
from random import randrange
import pymysql as mysql
import numpy as np

connection = mysql.connect(host='localhost',
                           user='root',
                           password='Mitchell2',
                           db='dicksschema')


app = Flask(__name__)
  
@app.route('/')
@app.route('/home')
def home():
    """Renders the home page."""
    return render_template('index.html', title='Home Page', year=datetime.now().year)

@app.route('/contact')
def contact():
    """Renders the contact page."""
    return render_template('contact.html', title='Contact Us', year=datetime.now().year,
                           message="Dick's Sporting Goods Cooperate Headquarters")

@app.route('/about')
def about():
    """Renders the about page."""
    return render_template('about.html', title="About Dick's Sporting Goods", year=datetime.now().year,
                           message='Enterprise Description', mission='Our Mission')

@app.route('/orders', methods =['GET', 'POST'])
def orders():
    cur = connection.cursor()
    if request.method == 'POST':
        onum = request.form.get('order_num')
        odate = request.form.get('order_date')
        
        connection
        cur
        sql = "SELECT * FROM orders WHERE order_num = %s AND order_date = %s"
        loc = (str(onum), str(odate))
        cur.execute(sql, loc)
        connection.commit()
        cur.close()
        return render_template('orders.html', title='View your exsisting orders', year=datetime.now().year,
                               message='Order Number: '+str(onum))
    """Renders the orders page."""
    return render_template('orders.html', title='View your existing orders', year=datetime.now().year,
                           message='Your orders')

@app.route('/login', methods =['POST', 'GET'])
def login():
    cur = connection.cursor()
    username = request.form.get('username')
    password = request.form.get('password')
        
    connection
    cur
    sql = "SELECT * FROM customers WHERE username=%s AND passwrd=%s ORDER BY username"
    loc = (str(username), str(password))
    cur.execute(sql, loc)
    user = cur.fetchone()
    while user is not None:
       cur.close()
       return render_template('orders.html', title='View your exsisting orders', year=datetime.now().year, 
                                  message='Logged in! Your orders')
      
        
    """Renders the login page."""
    return render_template('login.html', title='Account Login',
                           year=datetime.now().year, message='Login to your account to proceed')

@app.route('/catelog', methods =['GET', 'POST'])
def catelog():
    cur = connection.cursor()
    if request.method == 'POST':
        iname = request.form.get('item_name')
        color = list(np.random.choice(range(256), size = 3))
        
        connection
        cur
        sql = "SELECT * FROM products WHERE item_name = %s AND color =%s"
        loc = (str(iname), color)
        cur.execute(sql, loc)
        connection.commit()
        product = cur.fetchone()
        cur.close()
        return render_template('orders.html', product=product)
    """Renders the shopping page."""
    return render_template('catelog.html', title='Browse Stores and Shopping', year=datetime.now().year,
                           message='Browse our stores')

@app.route('/create_account', methods =['POST', 'GET'])
def create_account():
    cur = connection.cursor()
    if request.method == 'POST':
        customer_id = randrange(1000000)
        customer_name = request.form.get('custname')
        username = request.form.get('username')
        password = request.form.get('password')
        email = request.form.get('email')
        street_number = request.form.get('num')
        street_name = request.form.get('sname')
        apt_num = randrange(999)
        city = request.form.get('city')
        state = request.form.get('state')
        postalcode = request.form.get('zip')
        points = 0
        phone = request.form.get('phone')
        
        connection
        cur
        sql = "INSERT INTO customers(customer_id,customer_name,username,passwrd,email,street_number,street_name,apt_num,city,state,zip,points,phone_num)"\
              "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
        loc = (str(customer_id), str(customer_name), str(username), str(password), str(email), str(street_number), str(street_name), str(apt_num), str(city), str(state), str(postalcode), str(points), str(phone))
        cur.execute(sql, loc)
        connection.commit()
        cur.close()
        return render_template('account.html', title="Create your Dick's Sporting Goods Account", 
                               year=datetime.now().year, message='You have successfully registered!')
    
    """Renders the create account page."""
    return render_template('account.html', title="Create your Dick's Sporting Goods Account", 
                           year=datetime.now().year, message='Fill in infromation below to create your account')

if __name__ == "__main__":
    app.run(debug=True)
    
