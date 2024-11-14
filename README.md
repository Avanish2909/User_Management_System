# User_Management_System
Complete the assignment task of user management system using servlet, jsp and postgresql


Download: 
  1). Eclipse Ide
  2). Postgres Database and pgadmin4

Step-2: Download this project zip file in your system and extract all file.

Step-3: Open extract file in your eclipse Ide.

step-4: Open pgadmin and run this given sql query one-by-one.

   Query-1:
        CREATE DATABASE user_management_system_db.
   
   Query-2:
        -- Users Table
        CREATE TABLE users (
            id SERIAL PRIMARY KEY,
            username VARCHAR(50) UNIQUE NOT NULL,
            password VARCHAR(50) NOT NULL,
            role VARCHAR(20) NOT NULL
        );

  Query-3:
        -- Software Table
        CREATE TABLE software (
            id SERIAL PRIMARY KEY,
            name VARCHAR(100) UNIQUE NOT NULL,
            description TEXT,
            access_levels VARCHAR(100) NOT NULL
        );

  Query-4:
        -- Requests Table
        CREATE TABLE requests (
            id SERIAL PRIMARY KEY,
            user_id INT REFERENCES users(id),
            software_id INT REFERENCES software(id),
            access_type VARCHAR(20) NOT NULL,
            reason TEXT,
            status VARCHAR(20) DEFAULT 'Pending'
        );

  Query-5:
        INSERT INTO users (username, password, role) VALUES 
        ('Avanish', 'Avanish@123', 'Employee'),
        ('Akash', 'Akash@123', 'Admin'),
        ('Rahul', 'Rahul@123', 'Manager');

  Query-6:
        INSERT INTO software (name, description, access_levels) VALUES 
        ('Java', 'description', 'Write');

  Query-7:
        INSERT INTO requests (user_id, software_id, access_type, reason, status) VALUES 
        (2, 1, 'Read', 'Need access for project tasks', 'Pending');

step-5: Edit the username, password of given code... according to your postgresql database.
step-6: Run project....
