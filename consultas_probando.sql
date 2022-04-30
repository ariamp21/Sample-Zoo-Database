
SELECT * FROM alfred.ANIMAL #Con feeding species

--# FIND OUT HOW MANY OF EACH CLASS OF ANIMALS ARE IN THE DATABASE.
SELECT CLASS, COUNT(ANIMALID) AS 'CANTIDAD_CLASE'
FROM alfred.ANIMAL
GROUP BY CLASS;

--# Find the food associated to the proper name NOT the classification of the animal

Select ANIMAL.Name, FEEDING.FoodType
From alfred.ANIMAL, alfred.FEEDING
Where ANIMAL.Species = FEEDING.Species;

--# Encontrar la cantidad de CLASES DE ANIMALES que su tipo de comida son hormigas
SELECT ANIMAL.Class, FEEDING.FoodType, COUNT(Class)
FROM alfred.ANIMAL, alfred.FEEDING
WHERE FEEDING.FoodType = 'Ants'
group by Class ;



--# Find which animals are in the class Mammalia ordered by their species

Select *
From alfred.ANIMAL
Where Class = 'Mammalia'
Order By Species;


SELECT * FROM alfred.EMPLOYEE #este con ZOOKEEPER en employeeid ZempID

SELECT EMPLOYEEFULLNAME
FROM alfred.EMPLOYEE
WHERE HIREDATE < '2000/01/01';


SELECT * FROM alfred.EXHIBIT

SELECT * FROM alfred.FEEDING #con animal x species

--# Find which species of animals only eat meat

Select Species AS MeatLovers
From FEEDING
Where FoodType = 'Meat';

SELECT * FROM alfred.OSTAFF

SELECT * FROM alfred.PERSON 

SELECT US_STATE, COUNT(FULLNAME)
FROM alfred.PERSON
GROUP BY US_STATE
ORDER BY COUNT(FULLNAME) DESC;

SELECT US_STATE, COUNT(FULLNAME) as 'CANT_PAIS'
FROM alfred.PERSON
GROUP BY US_STATE
ORDER BY 'CANT_PAIS' DESC;

--# Update the address for 'Amy Rice'. She just moved to 123 Chickpea Lane, Orlando, Florida 32826

UPDATE alfred.PERSON
SET Street = '123 Chickpea Lane', City = 'Orlando', ZipCode = '32826', US_State = 'Florida'
WHERE FullName = 'Amy Rice';

#SELECT * FROM alfred.PERSON

SELECT * FROM alfred.VISITOR

SELECT * FROM alfred.ZOOKEEPER #este con employee en ZempID

--#Encuentre los nombres de los zookeeper 

SELECT EmployeeFullName FROM alfred.EMPLOYEE, alfred.ZOOKEEPER  
where EmployeeType = 'Zookeeper'
ORDER BY KeeperID

SELECT * FROM alfred.ZSKILLS #este con zookeeper skill id

