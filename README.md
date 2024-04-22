## Description
This application is designed as a simple and maintainable cash register that can add products to a cart and compute the total price, incorporating special pricing rules.

The application is built with flexibility and simplicity in mind, adhering to best practices in coding and project organization.

## Objective
The goal is to build a CLI application that meets the following criteria:

- Usable and straightforward in functionality
- Maintainable and readable code structure
- Easily extendable for future enhancements

## Project Structure

The application's directory is structured as follows:
```
├── lib/            # Core application code
│   ├── cart.rb     # Cart class
│   └── store.rb  # Store class
|   └── interface.rb  # Executes
implementation
│
├── spec/           # Test specifications
│   ├── cash_resgister_spec.rb       # Tests for special pricing
│
└── README.md       # Documentation of the project
```

## Getting started

Prerequisites
- Ensure you have Ruby installed on your machine. You can download Ruby from the official site.

Installation
1. Clone the repository to your local machine:

git clone https://github.com/marinaarrudalima/cash_register

2. Navigate to the application directory:

cd cash_register

Usage

- Run the application from the command line using Ruby. Here's how you can start the cash register:

ruby lib/interface.rb


- Follow the prompts to add items to your cart and compute the total price.

## Features

Products
- The cash register supports the following predefined products:

  Green Tea (GR1) at €3.11
  Strawberries (SR1) at €5.00
  Coffee (CF1) at €11.23

Special Pricing Rules

- Buy-One-Get-One-Free on Green Tea: Automatically applies when Green Tea is added to the cart.
- Discount on bulk purchase of Strawberries: Price drops to €4.50 each when 3 or more are purchased.
- Discount on bulk purchase of Coffee: Price drops to 2/3 of the original price when 3 or more are purchased.

## Technical Details

Testing

- The application is covered by tests. To run the tests, navigate to the application directory and execute:

rspec spec/cash_register_spec.rb

Extensibility

- The application's design allows for easy adjustment of product prices and the addition of new pricing rules without significant modifications to the existing codebase.

Versioning

### v1.0.0 - 2024-04-22
**Initial Release**
- Features:
  - Basic CLI for buying product and checkout.
  - Support for special pricing rules.

Authors
- Marina Lima - Owner

Acknowledgments
- Thanks to Amenitiz for providing the opportunity to undertake this interesting project.
