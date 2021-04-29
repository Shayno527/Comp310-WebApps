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
        title='Orders',
        year=datetime.now().year,
        message='Your application description page.'
    )
