# Purpose
Simple todo application made with Rails.

###Details
- 3 main models: User, Task, and Page
- A user has many tasks
- A task has one user
- Each user has a unique ID, which is also the foreign key for the tasks (helps create relations)
- Login/Logout is achieved through session IDs. Each session id is created based on the user's ID.
- Session ids used to display only the logged in user's tasks (personal to-do list)
- Security and validation: backed with Heroku.

<br>
AgentZ
