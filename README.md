# Project Overview

# The Stoop
A collaborative tool, built with Ruby on Rails, that assists individuals in identifying and sharing experiences about civictech, government and community provided benefits, products and services in NYC.

## Project Schedule

This schedule will be used to keep track of our progress throughout the week and align with our expectations.  

|  Day | Deliverable | Approval From Squad Lead |
|---|---| ---|
|Day 1: Fri| Project Idea, Wireframes, Project Setup| Complete |
|Day 2: Tue| Project Setup| Complete |
|Day 3: Wed| Basic Clickable Model | Complete |
|Day 4: Thurs| Working Prototype and Styling| Complete |
|Day 5: Fri| Additional Styling | Complete |
|Day 6: Mon| Post-MVP Updates | Complete |
|Final Due Date: Wed| Project Showcase | Complete |

## MVP

1. CRUD functionality
2. Mobile and Desktop responsive; styling like wireframes
3. Deploy on Heroku

## POST MVP

1. Google Maps API; show locations on map
2. Add in registration (auth) for organizations/admins
3. Fun styling with loading placeholders

## Table Structures
1. Category - title, description
2. Product - category_id, title, description, website, contact
3. Experience - product_id, title, description, tip, name

A category can have many products and a product can have many experiences; but a category has no experiences.

## Code Snippet

<%= link_to "Add New Experience", new_experience_path(:product_id => @product.id) %>
<%= link_to "All products", category_path(:id => @product.category_id) %>

## Issues and Resolutions
Issue: Had trouble getting certain routes based upon product_id and category_id for easier user navigation
Resolution: Force the :id to be defined by telling it to explicitly reference something in the database
Reference:
https://stackoverflow.com/questions/14569590/ruby-on-rails-pass-id-to-new-create-form
