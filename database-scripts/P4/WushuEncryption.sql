-- Implement column encryption on the `password` column in the `User` table
-- Note: We encountered issues with this code in SQL Server Management Studio, but it ran w/o error in Azure Data Studio

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