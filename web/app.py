from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)
@app.route("/")
def home():
    conn = mysql.connector.connect(host="db")
    cursor=conn.cursor()
    cursor.execute("SELECT 'flask conectado'")
    result = cursor.fetchome()[0]
    cursor.close()
    conn.close()
    return result

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)