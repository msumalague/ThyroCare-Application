from flask import Flask,request,jsonify
import numpy as np
import pickle

model = pickle.load(open('ABR.pkl','rb'))

app = Flask(__name__)

@app.route('/')
def index():
    return "Hello world"

@app.route('/predict',methods=['GET', 'POST'])
def predict():
    T3 = request.form.get('T3')
    T4U = request.form.get('T4U')

    input_query = np.array([[T3,T4U]])

    result = model.predict(input_query)[0]

    return jsonify({'classes':str(result)})

if __name__ == '__main__':
    app.run(debug=True)