"""
The flask application package.
"""

from flask import Flask
app = Flask(__name__)

import DicksSportingGoodsWebApp.views

if '__name__' == '__main__':
	app.run(debug=True)
