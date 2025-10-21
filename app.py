from flask import Flask, render_template, request, redirect, url_for
import mysql.connector

app = Flask(__name__)

# Connexion à la base de données
def get_db_connection():
    return mysql.connector.connect(
        host=os.getenv("DB_HOST"),
        database=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        port=os.getenv("DB_PORT")
    )

# Page d’accueil
@app.route('/')
def index():
     return render_template('index.html')

# Page avec formulaire
@app.route('/formulaire', methods=['GET', 'POST'])
def formulaire():
    if request.method == 'POST':
        nom = request.form['nom']
        prenom = request.form['prenom']

        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("INSERT INTO utilisateurs (nom, prenom) VALUES (%s, %s)", (nom, prenom))
        conn.commit()
        cursor.close()
        conn.close()

        return redirect(url_for('merci'))

    return render_template('formulaire.html')

# Page de remerciement
@app.route('/merci')
def merci():
    return "<h2>Données enregistrées avec succès !</h2>"

if __name__ == "__main__":
    app.run(debug=True)


