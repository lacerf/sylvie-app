# Sylvie App

## Key requirement: company needs ticket system to prioritize and manage the status of business tasks
## Models
- Ticket -> date:date rationale:text
- User -> Devise
- AdminUser -> STI
- Comment -> description:text
- Watcher -> belongs to user and ticket

## Features:
- Approval Workflow
- Email Sending -> overdue tasks
- Administrate admin dashboard
- Block non admin and guest users

## UI:
- Bootstrap -> formatting
- Icons from Font Awesome
- Update the styles for forms

## Refactor TODOS:
- none yet
