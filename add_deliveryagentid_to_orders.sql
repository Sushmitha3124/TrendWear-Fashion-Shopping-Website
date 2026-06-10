-- Add DeliveryAgentId column to Orders table
ALTER TABLE Orders ADD COLUMN DeliveryAgentId INT NULL;

-- Add foreign key constraint
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_DeliveryAgent 
FOREIGN KEY (DeliveryAgentId) REFERENCES DeliveryAgents(Id) 
ON DELETE SET NULL;
