# jekyll-netlify-minimal-notes-and-project

### Platforms

- Jekyll
- Netlify CMS
- Bootstrap Navbar

<!-- Markdown snippet -->
[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/numoonchld/jekyll-netlify-minimal-notes-and-project)

***

### Goal

- Create Notes and organize them by the course 
  - mathematics, geography, etc
- Create groups for courses 
  - fall 2019, winter 2019, etc
  
- Dedicated Projects 'Course' to blog about specific projects
  - already initialized in template

***

### Pages

- Landing Page shows recent posts and an RSS feed
- Notes Page shows notes organized by Course Groups in a bootstrap accordion
  - the leaves of the accordion are the Courses
  - the notes for that course are listed under the leaf expansion
- Projects Page shows all the posts under the Projects class

***

### Post Netlify Deploy

- In the Netlify account
  - Enable Identity
  - Enable Github Gateway
  
- Create a login with Sign Up in the admin tab
  - login after authenticating email

- Ensure adding new course groups shows up 
  - in the selction of course group option 
  - while creating new courses 
- Ensure adding new courses shows up in the 
  - in the selection of the course option
  - when creating new posts

- In case you want to add Trello Board or some Kanban-type tracker board, use the Progress Board Page 
  - simple paste the URL 
  
  
***

### Usage Notes

- it takes some time (depends on latency on the netlify server and your internet connection)
  - for the newly added courses and course group options to populate the dropdown menu
  - sometimes this is almost 20-25 minutes 
- current depoly status can be monitored 
  - in the Deploy tab of your website in Netlify
- refresh the page bunch of times after the deploy has completed
  - if the options dont show up immediately

***
