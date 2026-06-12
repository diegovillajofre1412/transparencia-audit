# To-Do List Application

A fully functional to-do list web application with **local storage** persistence, filtering, and statistics.

## Features

✅ **Local Storage** - All tasks persist even after closing the browser  
✅ **Add/Delete Tasks** - Easy task management  
✅ **Mark Complete** - Toggle task completion status  
✅ **Filter Tasks** - View All, Active, or Completed tasks  
✅ **Statistics** - Track total, completed, and pending tasks  
✅ **Clear Completed** - Remove all completed tasks at once  
✅ **Delete All** - Clear entire task list (with confirmation)  
✅ **Timestamps** - See when each task was created  
✅ **Responsive Design** - Works on desktop and mobile  
✅ **Beautiful UI** - Modern gradient design with smooth animations  

## File Structure

```
todo-app/
├── index.html      # HTML structure
├── style.css       # Styling and animations
├── app.js          # JavaScript logic
└── README.md       # This file
```

## How to Use

### Local Machine
1. Open `index.html` in your web browser
2. Start adding tasks
3. Tasks are automatically saved to your browser's local storage

### Online
Deploy the files to any web hosting service (GitHub Pages, Netlify, Vercel, etc.)

## Usage Instructions

### Adding Tasks
- Type your task in the input field
- Click "Add Task" button or press Enter
- Task appears at the top of the list

### Managing Tasks
- **Check box** to mark task as complete
- **Delete button** to remove a specific task
- **Clear Completed** button to remove all completed tasks
- **Delete All** button to remove all tasks (requires confirmation)

### Filtering
- Click filter buttons to view:
  - **All** - All tasks
  - **Active** - Incomplete tasks only
  - **Completed** - Completed tasks only

### Statistics
- View real-time counts:
  - Total tasks
  - Completed tasks
  - Pending tasks

## Local Storage Details

### Storage Key
- `todoAppTasks` - Stores all tasks in JSON format

### Storage Limit
- Most browsers allow ~5-10MB of local storage
- This app uses minimal space, typically <100KB

### Data Structure
Each task object contains:
```javascript
{
    id: 1234567890,           // Unique timestamp ID
    text: "Task description", // Task text
    completed: false,         // Completion status
    createdAt: "6/12/2026, 2:30:45 PM" // Creation date/time
}
```

## Browser Compatibility

✅ Chrome/Edge (v4+)  
✅ Firefox (v3.5+)  
✅ Safari (v4+)  
✅ Opera (v10.5+)  
✅ Mobile browsers (iOS Safari, Chrome Mobile)  

## Installation

### Option 1: Direct File Access
Simply open `index.html` in your browser.

### Option 2: Local Server (Recommended)
```bash
# Python 3
python -m http.server 8000

# Node.js
npx http-server

# Go to http://localhost:8000
```

### Option 3: Deploy Online

#### GitHub Pages
1. Create a GitHub repository
2. Push these files to `main` branch
3. Enable GitHub Pages in Settings
4. Access at `username.github.io/todo-app`

#### Netlify
1. Drag and drop the folder at https://app.netlify.com
2. Get instant hosting with custom domain option

#### Vercel
1. Push to GitHub
2. Import project in Vercel
3. Auto-deploys with each commit

## Customization

### Change Colors
Edit gradient colors in `style.css`:
```css
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
```

### Change Storage Key
Edit in `app.js`:
```javascript
this.storageKey = 'myCustomKey';
```

### Add Categories/Tags
Extend the task object in `app.js` to include category property.

### Add Due Dates
Modify task structure to include `dueDate` field.

## Troubleshooting

### Tasks not saving?
- Check browser's local storage is enabled
- Ensure not in private/incognito mode
- Clear browser cache and retry

### Tasks disappeared?
- May have been cleared by browser cache clear
- Regular backup: Export as JSON (future enhancement)

### Performance issues?
- Local storage works best with <1000 tasks
- Clear completed tasks regularly
- Use "Delete All" and start fresh

## Future Enhancements

- Export/Import tasks as JSON
- Drag-and-drop reordering
- Categories/Tags
- Due dates and reminders
- Dark mode toggle
- Cloud sync (Firebase, etc.)
- Task priority levels
- Search functionality
- Recurring tasks

## License

Free to use and modify for personal or commercial projects.

## Support

For issues or suggestions, create an issue in the repository.

---

**Made with ❤️ for productivity**
