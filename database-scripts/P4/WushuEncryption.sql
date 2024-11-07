-- Implement column encryption on the `password` column in the `User` table

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'StrongPasswordForDMK!123';

CREATE CERTIFICATE UserCertificate
WITH SUBJECT = 'Certificate for encrypting sensitive user data';

CREATE SYMMETRIC KEY UserSymmetricKey
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE UserCertificate;

OPEN SYMMETRIC KEY UserSymmetricKey DECRYPTION BY CERTIFICATE UserCertificate;

UPDATE [User]
SET [password] = ENCRYPTBYKEY(KEY_GUID('UserSymmetricKey'), [password]);

CLOSE SYMMETRIC KEY UserSymmetricKey;

OPEN SYMMETRIC KEY UserSymmetricKey 
DECRYPTION BY CERTIFICATE UserCertificate;

SELECT 
    userID,
    [name],
    CONVERT(VARCHAR(255), DECRYPTBYKEY([password])) AS DecryptedPassword
FROM [User] where userID = 1;

CLOSE SYMMETRIC KEY UserSymmetricKey;