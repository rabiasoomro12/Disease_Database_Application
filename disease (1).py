import mysql.connector
import tkinter as tk
from tkinter import ttk, messagebox

class DiseaseApp:
    def _init_(self, root):
        self.root = root
        self.root.title("Disease Database")
        self.root.geometry("600x600")
        self.root.configure(bg="#e6f0fa")

        # Database connection
        self.db_config = {
            "host": "localhost",
            "user": "root",  # Replace with your MySQL username
            "password": "root",  # Replace with your MySQL password
            "database": "Diseases"
        }

        # Specialty dropdown
        tk.Label(root, text="Select Specialty:", bg="#e6f0fa", font=("Arial", 12)).pack(pady=10)
        self.specialty_var = tk.StringVar()
        self.specialty_combo = ttk.Combobox(root, textvariable=self.specialty_var, state="readonly", width=30, font=("Arial", 12))
        self.specialty_combo.pack(pady=10)
        self.load_specialties()
        self.specialty_combo.bind("<<ComboboxSelected>>", self.load_diseases)

        # Search bar
        tk.Label(root, text="Search Disease or Symptom:", bg="#e6f0fa", font=("Arial", 12)).pack(pady=5)
        self.search_var = tk.StringVar()
        self.search_entry = tk.Entry(root, textvariable=self.search_var, width=30, font=("Arial", 12))
        self.search_entry.pack(pady=5)
        tk.Button(root, text="Search", command=self.search_diseases, font=("Arial", 12)).pack(pady=5)

        # Disease listbox
        self.disease_listbox = tk.Listbox(root, height=10, width=80, font=("Arial", 10))
        self.disease_listbox.pack(pady=10)
        self.disease_listbox.bind("<<ListboxSelect>>", self.show_details)

        # Details text area
        tk.Label(root, text="Disease Details:", bg="#e6f0fa", font=("Arial", 12)).pack(pady=5)
        self.details_text = tk.Text(root, height=8, width=60, wrap="word", font=("Arial", 10))
        self.details_text.pack(pady=5)
        self.details_text.config(state="disabled")

    def load_specialties(self):
        try:
            conn = mysql.connector.connect(**self.db_config)
            cursor = conn.cursor()
            cursor.execute("SELECT SpecialtyName FROM Specialties")
            specialties = [row[0] for row in cursor.fetchall()]
            print("Specialties fetched:", specialties)  # Debug print
            if specialties:
                self.specialty_combo.configure(values=specialties)
                self.specialty_var.set(specialties[0])  # Set default value
                print("Dropdown values set to:", self.specialty_combo["values"])  # Debug print
            else:
                print("No specialties found in database.")
                messagebox.showwarning("Warning", "No specialties found in the database.")
            cursor.close()
            conn.close()
        except mysql.connector.Error as e:
            print("Error in load_specialties:", e)  # Debug print
            messagebox.showerror("Error", f"Cannot load specialties: {e}")

    def load_diseases(self, event=None):
        self.disease_listbox.delete(0, tk.END)
        specialty = self.specialty_var.get()
        if not specialty:
            print("No specialty selected.")  # Debug print
            return
        table = self.get_table_for_specialty(specialty)
        query = f"SELECT DiseaseName, Symptoms_1, AffectedOrgan_1 FROM {table}"
        try:
            conn = mysql.connector.connect(**self.db_config)
            cursor = conn.cursor()
            cursor.execute(query)
            diseases = cursor.fetchall()
            for disease in diseases:
                self.disease_listbox.insert(tk.END, f"{disease[0]} | {disease[1]} | {disease[2]}")
            print(f"Loaded {len(diseases)} diseases for {specialty}")  # Debug print
            cursor.close()
            conn.close()
        except mysql.connector.Error as e:
            print("Error in load_diseases:", e)  # Debug print
            messagebox.showerror("Error", f"Cannot load diseases: {e}")

    def search_diseases(self):
        self.disease_listbox.delete(0, tk.END)
        search_term = self.search_var.get().strip().lower()
        if not search_term:
            print("Search term is empty.")  # Debug print
            return
        tables = ["Pediatricians", "Allergists", "Dermatologists", "Ophthalmologists",
                  "Gynecologists", "Cardiologists", "Endocrinologists", "Gastroenterologists",
                  "Nephrologists", "Urologists"]
        try:
            conn = mysql.connector.connect(**self.db_config)
            cursor = conn.cursor()
            for table in tables:
                try:
                    query = f"SELECT DiseaseName, Symptoms_1, AffectedOrgan_1 FROM {table} WHERE LOWER(DiseaseName) LIKE %s OR LOWER(Symptoms_1) LIKE %s"
                    cursor.execute(query, (f"%{search_term}%", f"%{search_term}%"))
                    diseases = cursor.fetchall()
                    for disease in diseases:
                        self.disease_listbox.insert(tk.END, f"{disease[0]} | {disease[1]} | {disease[2]}")
                except mysql.connector.Error as e:
                    print(f"Error searching in table {table}: {e}")  # Debug print
            print(f"Search for '{search_term}' found {self.disease_listbox.size()} results")  # Debug print
            cursor.close()
            conn.close()
        except mysql.connector.Error as e:
            print("Error in search_diseases:", e)  # Debug print
            messagebox.showerror("Error", f"Search failed: {e}")

    def show_details(self, event):
        selection = self.disease_listbox.curselection()
        if not selection:
            print("No disease selected in listbox.")  # Debug print
            return
        selected = self.disease_listbox.get(selection[0])
        try:
            disease_name = selected.split(" | ")[0]
        except IndexError:
            print(f"Error parsing selected item: {selected}")  # Debug print
            return
        print(f"Selected disease: {disease_name}")  # Debug print
        tables = ["Pediatricians", "Allergists", "Dermatologists", "Ophthalmologists",
                  "Gynecologists", "Cardiologists", "Endocrinologists", "Gastroenterologists",
                  "Nephrologists", "Urologists"]
        result = None
        found_table = None
        try:
            conn = mysql.connector.connect(**self.db_config)
            cursor = conn.cursor()
            for table in tables:
                try:
                    query = f"SELECT DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2 FROM {table} WHERE LOWER(DiseaseName) = %s"
                    cursor.execute(query, (disease_name.lower(),))
                    result = cursor.fetchone()
                    if result:
                        found_table = table
                        break
                except mysql.connector.Error as e:
                    print(f"Error querying table {table}: {e}")  # Debug print
            if result:
                print(f"Found in table: {found_table}, Data: {result}")  # Debug print
                details = (f"Disease: {result[0]}\n"
                          f"Symptom 1: {result[1]}\n"
                          f"Symptom 2: {result[2] if result[2] else 'None'}\n"
                          f"Symptom 3: {result[3] if result[3] else 'None'}\n"
                          f"Organ 1: {result[4]}\n"
                          f"Organ 2: {result[5] if result[5] else 'None'}")
                self.details_text.config(state="normal")
                self.details_text.delete("1.0", tk.END)
                self.details_text.insert(tk.END, details)
                self.details_text.config(state="disabled")
            else:
                print(f"Disease '{disease_name}' not found in any table.")  # Debug print
                self.details_text.config(state="normal")
                self.details_text.delete("1.0", tk.END)
                self.details_text.insert(tk.END, "Disease not found.")
                self.details_text.config(state="disabled")
            cursor.close()
            conn.close()
        except mysql.connector.Error as e:
            print("Error in show_details:", e)  # Debug print
            messagebox.showerror("Error", f"Cannot load details: {e}")

    def get_table_for_specialty(self, specialty):
        specialty_tables = {
            "Pediatrics": "Pediatricians",
            "Allergy and Immunology": "Allergists",
            "Dermatology": "Dermatologists",
            "Ophthalmology": "Ophthalmologists",
            "Gynecology": "Gynecologists",
            "Cardiology": "Cardiologists",
            "Endocrinology": "Endocrinologists",
            "Gastroenterology": "Gastroenterologists",
            "Nephrology": "Nephrologists",
            "Urology": "Urologists"
        }
        return specialty_tables.get(specialty, "Pediatricians")

# Launch the GUI
root = tk.Tk()
app = DiseaseApp(root)
root.mainloop()