// Main JavaScript file for New Project

// Wait for DOM to be fully loaded
document.addEventListener('DOMContentLoaded', function() {
    console.log('New Project - JavaScript loaded');
    
    // Smooth scrolling for navigation links
    const navLinks = document.querySelectorAll('nav a[href^="#"]');
    
    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href').substring(1);
            const targetElement = document.getElementById(targetId);
            
            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
    
    // Add scroll effect to header
    window.addEventListener('scroll', function() {
        const header = document.querySelector('header');
        if (window.scrollY > 100) {
            header.style.backgroundColor = '#222';
        } else {
            header.style.backgroundColor = '#333';
        }
    });
    
    // Simple form validation (if you add forms later)
    function validateForm(form) {
        // Add your validation logic here
        return true;
    }
    
    // Initialize any other functionality
    initializeApp();
});

function initializeApp() {
    // Add your app initialization code here
    console.log('App initialized');
}

// Utility functions
function $(selector) {
    return document.querySelector(selector);
}

function $$(selector) {
    return document.querySelectorAll(selector);
}

// Export for use in other files (if needed)
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        validateForm,
        $,
        $$
    };
}
