# 🌐 Localhost Setup Instructions

## Option 1: Python HTTP Server (Recommended)

1. **Open Command Prompt/Terminal**
2. **Navigate to project directory:**
   ```bash
   cd "c:\Users\paren\CascadeProjects\windsurf-project\new-project"
   ```

3. **Start Python server:**
   ```bash
   python -m http.server 3000
   ```
   OR if you have Python 3:
   ```bash
   python3 -m http.server 3000
   ```

4. **Open browser:** Go to `http://localhost:3000`

## Option 2: Node.js Server

1. **Install Node.js** (if not already installed)

2. **Navigate to project directory:**
   ```bash
   cd "c:\Users\paren\CascadeProjects\windsurf-project\new-project"
   ```

3. **Start Node.js server:**
   ```bash
   node server.js
   ```

4. **Open browser:** Go to `http://localhost:3000`

## Option 3: Direct Browser Access

1. **Open file directly:**
   - Double-click `index.html` 
   - OR right-click → "Open with" → your browser

2. **Note:** Some features may not work due to CORS restrictions when opening directly

## 🔧 Troubleshooting

### Python not found:
- Install Python from https://python.org
- Add Python to PATH during installation

### Port already in use:
- Try a different port: `python -m http.server 8080`
- Go to `http://localhost:8080`

### Images not loading:
- Ensure all screenshot files are in `/assets/images/`
- Check file names: `screen1.png` through `screen10.png`

### Form not working:
- Direct file access may block form submission
- Use HTTP server for full functionality

## 📱 Testing Checklist

Once localhost is running:

- [ ] Image slider cycles through 10 screens
- [ ] Fade transitions work smoothly (1s fade, 3s hold)
- [ ] Waitlist form validates 10-digit numbers
- [ ] "Join Waitlist" buttons scroll to form
- [ ] Responsive design works on mobile/tablet/desktop
- [ ] All images load correctly

## 🚀 Ready to Test!

The Rentify app demo is ready for localhost testing. Follow the instructions above to start your local server and experience the interactive app showcase.
