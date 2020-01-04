
CREATE TABLE company (
   name VARCHAR(280) PRIMARY KEY
);

CREATE TABLE employee (
   id SERIAL,
   company_name VARCHAR(280) NOT NULL,
   PRIMARY KEY (id, company_name),
   name VARCHAR(280),
   role VARCHAR(280),
   CONSTRAINT company_name_fkey FOREIGN KEY (company_name)
        REFERENCES company (name) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

INSERT INTO company VALUES
                           ('headbook'),
                           ('doogle');

INSERT INTO employee (company_name, name, role)
VALUES
       ('headbook', 'John Smith', 'CEO'),
       ('headbook', 'Jane Doe', 'VP of Technology'),
       ('doogle', 'Jane Doe', 'CEO'),
       ('doogle', 'John Smith', 'VP of Technology');

SELECT * FROM company;
SELECT * FROM employee;
