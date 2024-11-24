# Micro-Reddit

A lightweight Reddit clone built with Ruby on Rails. This project focuses on modeling data and practicing ActiveRecord associations and validations. Users can create accounts, submit posts, and comment on posts.

---

## Features

- **Users**: Create and manage user accounts with unique usernames and emails.
- **Posts**: Users can create posts with titles and body content.
- **Comments**: Users can comment on posts.

---

## Models and Associations

### **User**
- **Associations**:
  - Has many posts.
  - Has many comments.
- **Attributes**:
  - `username` - string
  - `email` - string

### **Post**
- **Associations**:
  - Belongs to a user.
  - Has many comments.
- **Attributes**:
  - `title` - string
  - `body` - text
  - `user_id` - integer (foreign key)

### **Comment**
- **Associations**:
  - Belongs to a user.
  - Belongs to a post.
- **Attributes**:
  - `body` - text
  - `user_id` - integer (foreign key)
  - `post_id` - integer (foreign key)

---

## Validations

### **User**
- `username`: Must be present, unique, and 4-12 characters long.
- `email`: Must be present and unique.

### **Post**
- `title`: Must be present and unique.
- `body`: Must be present.

### **Comment**
- `body`: Must be present.

---

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/micro-reddit.git
   cd micro-reddit
