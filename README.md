 Disease Database Application

This repository contains the implementation of a Disease Database Application, a user-friendly tool designed to explore medical conditions across various specialties. The project was developed as part of a Database Management Systems (DBMS) practical assignment, completed on May 18, 2025, for the Bachelor of Engineering in Computer Systems Engineering.
Project Overview
The Disease Database Application integrates a MySQL database with a Python-based graphical user interface (GUI) built using Tkinter. It serves as an educational resource for students, researchers, or junior medical professionals, allowing users to browse diseases by medical specialty, search for conditions based on symptoms, and view detailed disease information. The application emphasizes robust database design, intuitive GUI development, and error handling.
Key Features

Specialty-Based Browsing: Select from 10 medical specialties (e.g., Pediatrics, Cardiology) to view associated diseases.
Symptom Search: Search for diseases by name or symptom (e.g., "fever") across all specialties.
Detailed Disease Information: Display symptoms and affected organs for selected diseases.
MySQL Database: Stores 100 diseases across 10 specialty tables with foreign key constraints.
Tkinter GUI: Features a dropdown menu, search bar, listbox, and text area for user interaction.

System Design
Database Structure
The MySQL database, named Diseases, consists of:

Specialties Table: Columns SpecialtyID (primary key) and SpecialtyName for 10 specialties.
Specialty Tables (e.g., Pediatricians, Cardiologists): Each contains DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2, and SpecialtyID (foreign key).
Total: 100 diseases (10 per specialty) with referential integrity via foreign keys.

ER Diagram
The Entity-Relationship (ER) diagram illustrates the one-to-many relationship between the Specialties table and each specialty table, linked by SpecialtyID.

GUI Layout
The Tkinter GUI includes:

Dropdown Menu: Select a specialty to populate the listbox.
Search Bar: Input keywords to find diseases across specialties.
Listbox: Displays diseases with primary symptom and affected organ (e.g., "Acne | Pimples | Skin").
Text Area: Shows detailed disease information (e.g., symptoms, organs) upon selection.
Styling: Light blue background (#e6f0fa) for a professional look.

Implementation
Technology Stack

Programming Language: Python 3.x
GUI Framework: Tkinter
Database: MySQL (via mysql-connector-python)
Environment: Jupyter Notebook

Key Components

Database Creation:

Created Diseases database with SQL scripts in MySQL Workbench.
Populated Specialties table with 10 specialties and 10 specialty tables with 100 diseases.
Enforced foreign key constraints for referential integrity.


GUI Development:

Implemented DiseaseApp class in Tkinter with methods:
load_specialties: Fetches specialties for the dropdown.
load_diseases: Populates listbox with diseases for the selected specialty.
search_diseases: Queries all tables for disease/symptom matches.
show_details: Displays detailed disease information across tables.


Added error handling with messagebox for user feedback.


Optimizations:

Removed redundant SpecialtyID filters in queries.
Enhanced show_details to search all tables for cross-specialty searches.
Added debug logging for troubleshooting.



Core Code
import tkinter as tk
from tkinter import messagebox
import mysql.connector

class DiseaseApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Disease Database Application")
        self.root.configure(bg='#e6f0fa')
        self.db_config = {'user': 'root', 'password': 'password', 'host': 'localhost', 'database': 'Diseases'}
        self.setup_gui()
        self.load_specialties()

    def setup_gui(self):
        tk.Label(self.root, text="Select Specialty", bg='#e6f0fa').pack()
        self.specialty_var = tk.StringVar()
        self.specialty_dropdown = tk.OptionMenu(self.root, self.specialty_var, "")
        self.specialty_dropdown.pack()
        tk.Label(self.root, text="Search Disease or Symptom", bg='#e6f0fa').pack()
        self.search_entry = tk.Entry(self.root)
        self.search_entry.pack()
        tk.Button(self.root, text="Search", command=self.search_diseases).pack()
        self.disease_listbox = tk.Listbox(self.root, height=10, width=50)
        self.disease_listbox.pack()
        self.disease_listbox.bind('<<ListboxSelect>>', self.show_details)
        self.details_text = tk.Text(self.root, height=10, width=50)
        self.details_text.pack()

    def load_specialties(self):
        try:
            conn = mysql.connector.connect(**self.db_config)
            cursor = conn.cursor()
            cursor.execute("SELECT SpecialtyName FROM Specialties")
            specialties = [row[0] for row in cursor.fetchall()]
            self.specialty_var.set(specialties[0])
            menu = self.specialty_dropdown["menu"]
            menu.delete(0, "end")
            for specialty in specialties:
                menu.add_command(label=specialty, command=lambda s=specialty: self.specialty_var.set(s))
            cursor.close()
            conn.close()
            self.load_diseases()
        except mysql.connector.Error as err:
            messagebox.showerror("Error", f"Database error: {err}")

if __name__ == "__main__":
    root = tk.Tk()
    app = DiseaseApp(root)
    root.mainloop()

Results

Specialty Browsing: Dropdown lists 10 specialties; selecting one (e.g., "Pediatrics") shows 10 diseases (e.g., "Common Cold | Runny nose | Upper respiratory tract").
Search Functionality: Searching "fever" retrieves relevant diseases across specialties (e.g., "Chickenpox," "Heart Attack").
Detailed Display: Clicking a disease shows full details (e.g., symptoms, organs).
Error Handling: Pop-up messages handle database connection issues or invalid searches.
Performance: Stable operation with efficient query execution.

Installation
To run the project, ensure Python 3.8+ and MySQL are installed. Follow these steps:

Clone the repository:
git clone https://github.com/your-username/disease-database-application.git
cd disease-database-application


Install dependencies:
pip install -r requirements.txt


Requirements file (requirements.txt):
mysql-connector-python==8.0.29


Set up the MySQL database:

Create the Diseases database in MySQL Workbench.
Run the provided database_setup.sql script to create and populate tables.
Update db_config in the Python script with your MySQL credentials.



Usage

Run the application:python main.py


The GUI will open, allowing you to:
Select a specialty from the dropdown to view diseases.
Enter a keyword (e.g., "fever") in the search bar to find diseases.
Click a disease in the listbox to view detailed information.



Example
# Run in Jupyter Notebook or Python environment
from disease_app import DiseaseApp
import tkinter as tk

root = tk.Tk()
app = DiseaseApp(root)
root.mainloop()

Challenges

SpecialtyID Error: Resolved by removing redundant filters in load_diseases.
Cross-Specialty Details: Fixed show_details to query all tables for search results.
Database Connectivity: Corrected MySQL authentication issues.
Jupyter GUI Issues: Mitigated unresponsiveness with cell-based execution and debug logs.

Limitations

Data Scope: Limited to 100 diseases across 10 specialties.
Search Filters: Lacks advanced options (e.g., filter by organ).
GUI Styling: Basic design with minimal interactivity.
Deployment: Not packaged as a standalone executable.

Future Improvements

Expand the database with more diseases and specialties.
Add advanced search filters (e.g., by affected organ).
Enhance GUI with sorting, styling, and interactive elements.
Package as a standalone app using PyInstaller.
Implement user authentication for secure access.

Team Collaboration

Rabia Soomro: Designed and populated the MySQL database, ensuring data consistency.
Nimerta Wadhwani: Developed the Tkinter GUI, focusing on layout and styling.
Waqar Abbas: Implemented core functionality, debugging, and optimization.

References

MySQL Documentation. (n.d.). MySQL 8.0 Reference Manual. Retrieved May 18, 2025, from https://dev.mysql.com/doc/refman/8.0/en/
Python Software Foundation. (2025). Python 3.x Documentation - Tkinter Module. Retrieved May 18, 2025, from https://docs.python.org/3/library/tkinter.html
Oracle. (2025). MySQL Connector/Python Developer Guide. Retrieved May 18, 2025, from https://dev.mysql.com/doc/connector-python/en/

License
This project is licensed under the MIT License. See the LICENSE file for details.
Acknowledgments

Supervisor: Mrs. Zainab Umair.
Libraries: Thanks to the developers of mysql-connector-python and tkinter.


Explore the code, test it with your own MySQL setup, and contribute to improving the application! For questions, reach out via GitHub Issues.
