"""
Routes and views for the flask application.
"""

from datetime import datetime
from flask import render_template
from DicksSportingGoodsWebApp import app

@app.route('/')
@app.route('/home')
def home():
    """Renders the home page."""
    return render_template(
        'index.html',
        title='Home Page',
        year=datetime.now().year,
    )

@app.route('/contact')
def contact():
    """Renders the contact page."""
    return render_template(
        'contact.html',
        title='Contact Us',
        year=datetime.now().year,
        message="Dick's Sporting Goods Cooperate Headquarters"
    )

@app.route('/about')
def about():
    """Renders the about page."""
    return render_template(
        'about.html',
        title="About Dick's Sporting Goods",
        year=datetime.now().year,
        message='Enterprise Description',
        mission='Our Mission'
    )

@app.route('/orders')
def orders():
    """Renders the orders page."""
    return render_template(
        'orders.html',
        title='View your existing orders',
        year=datetime.now().year,
        message='Your orders'
    )

@app.route('/login')
def login():
    """Renders the login page."""
    return render_template(
        'login.html',
        title='Account Login',
        year=datetime.now().year,
        message='Login to your account to proceed'
    )

@app.route('/catelog')
def catelog():
    """Renders the shopping page."""
    return render_template(
        'catelog.html',
        title='Browse Stores and Shopping',
        year=datetime.now().year,
        message='Browse our stores'
    )

@app.route('/create_account')
def create_account():
    """Renders the account creation page."""
    return render_template(
        'account.html',
        title="Create your Dick's Sporting Goods Account",
        year=datetime.now().year,
        message='Fill in infromation below to create your account'
    )
