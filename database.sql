1
SELECT * FROM "accounts"
WHERE "city" ILIKE 'chicago';

2
SELECT * FROM "accounts"
WHERE "username" ILIKE '%a%';

3
UPDATE "accounts"
SET "account_balance" = 10.00
WHERE (
"account_balance" = 0
AND
"transactions_attempted" = 0
);

4
SELECT * FROM "accounts"
WHERE "transactions_attempted" > 8

5
SELECT "username", "account_balance" FROM "accounts"
WHERE "account_balance" > '300'
ORDER BY "account_balance" DESC
LIMIT 3;

6
SELECT "username", "account_balance" FROM "accounts"
WHERE "account_balance" < '100'
ORDER BY "account_balance" ASC
LIMIT 3;

7
SELECT * FROM "accounts"
WHERE "account_balance" > '100';

8
INSERT INTO "accounts" ("username", "city", "transactions_completed", "transactions_attempted", "account_balance") 
VALUES( 'Johnnie Walters', 'Saint Paul', 0, 0, 4000000);

9
DELETE * FROM "accounts"
WHERE ("city" = 'miami'
AND "transactions_completed" < 5)
or ("city" = 'phoenix'
AND "transactions_completed" < 5);