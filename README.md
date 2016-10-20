## Time Tracker App

Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Features:
- Approval Workflow
-	SMS Sending -> link to approval or overtime input
-	x Administrate admin dashboard
- x Block non admin and guest users
-	Email summary to managers for approval
-	Needs to be documented if employee did not log overtime

## UI:
- x Bootstrap -> formatting
- x layoutit.com/build
- x Icons from glyphicons
- x Update the styles for forms

## Testing:
- x RSpec
- x Capybara

## Refactor TODOS:
- xRefactor posts/_form for admin user with status