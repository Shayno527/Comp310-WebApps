# -*- coding: utf-8 -*-
"""
Created on Mon Apr 26 11:02:57 2021

@author: Mitch Perez and Shayne Sendera
"""

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World!'

if __name__ == "__main__":
    app.run(debug=True)
