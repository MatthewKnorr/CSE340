-- Insert the new record Task#1
INSERT INTO public.account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Display the inserted record
SELECT * FROM public.account
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

-- Update Tony Stark's account type to 'Admin'Task#2
UPDATE public.account
SET account_type = 'Admin'
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

-- Display the updated state of the table
SELECT * FROM public.account;

-- Delete the Tony Stark record Task#3
DELETE FROM public.account
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

-- Display the updated state of the table
SELECT * FROM public.account;

-- Modify the "GM Hummer" record Task#4
UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- Display the updated state of the table after modification Task#5
SELECT * FROM public.inventory
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- Select make, model, and classification name for items belonging to the "Sport" category Task#6
SELECT inv.inv_make, inv.inv_model, cls.classification_name
FROM public.inventory inv
INNER JOIN public.classification cls ON inv.classification_id = cls.classification_id
WHERE cls.classification_name = 'Sport';
