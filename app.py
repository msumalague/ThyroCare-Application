from flask import Flask,jsonify,request
import pandas as pd
import pickle

model = pickle.load(open('FinalXGB.pkl','rb'))

app = Flask(__name__)

@app.route("/")
def index():
    return "ThyroCare"

@app.route("/predict/",methods=['GET'])
def predict():
    result=request.args
    data=[[float(result["TSH"]),float(result["T3"]),float(result["TT4"]),float(result["T4U"]),float(result["FTI"])]]
    prediction=model.predict(data)
    return jsonify({'classes': int(prediction)})

if __name__ == '__main__':
    app.run()