from flask import Flask,request,jsonify
import numpy as np
import pickle

model = pickle.load(open('thyrocare.pkl','rb'))

app = Flask(__name__)

@app.route('/')
def index():
    return "ThyroCare"

@app.route('/predict',methods=['GET', 'POST'])
def predict():
    TSH = request.form.get('TSH')
    T3 = request.form.get('T3')
    TT4 = request.form.get('TT4')
    T4U = request.form.get('T4U')
    FTI = request.form.get('FTI')

    input_query = np.array([[TSH, T3, TT4, T4U,FTI]])

    result = model.predict(input_query)[0]

    return jsonify({'classes':str(result)})

if __name__ == '__main__':
    app.run(debug=True)