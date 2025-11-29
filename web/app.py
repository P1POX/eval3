from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)
@app.route("/")
def home():
    conn = mysql.connector.connect(host="db", user="root", password="root", database="lonkito")
    cursor=conn.cursor()
    cursor.execute("SELECT hora,actividad,estado,imagen FROM log")
    datos = cursor.fetchall()
    cursor.close()
    conn.close()
    return render_template("index.html", datos=datos)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)