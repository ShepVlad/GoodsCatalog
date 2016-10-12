CREATE TABLE [product] (
	id int NOT NULL,
	category_id int NOT NULL,
	name nvarchar(255) NOT NULL,
	price float NOT NULL,
	description nvarchar(255) NOT NULL,
	created_at datetime NOT NULL,
	updated_at datetime NOT NULL,
  CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [product_category] (
	id int NOT NULL,
	name nvarchar(255) NOT NULL,
	created_at datetime NOT NULL,
	updated_at datetime NOT NULL,
  CONSTRAINT [PK_PRODUCT_CATEGORY] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [cart] (
	id int NOT NULL,
	product_id int NOT NULL,
  CONSTRAINT [PK_CART] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [product] WITH CHECK ADD CONSTRAINT [product_fk0] FOREIGN KEY ([category_id]) REFERENCES [product_category]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [product] CHECK CONSTRAINT [product_fk0]
GO


ALTER TABLE [cart] WITH CHECK ADD CONSTRAINT [cart_fk0] FOREIGN KEY ([product_id]) REFERENCES [product]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [cart] CHECK CONSTRAINT [cart_fk0]
GO

