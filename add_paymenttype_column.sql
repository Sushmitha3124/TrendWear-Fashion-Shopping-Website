-- Add missing PaymentType column causing EF insert error
ALTER TABLE Orders ADD COLUMN PaymentType VARCHAR(20) DEFAULT 'COD';

