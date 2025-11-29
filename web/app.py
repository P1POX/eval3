from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)
@app.route("/")
def home():
    conn = mysql.connector.connect(host="db", user="root", password="root")
    cursor=conn.cursor()
    cursor.execute("SELECT 'flask conectado'")
    result = cursor.fetchone()[0]
    cursor.close()
    conn.close()
    return render_template(
        "index.html"
    )

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)