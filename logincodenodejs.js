const express = require('express');
const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;
const session = require('express-session');
const bodyParser = require('body-parser');

// Import the user model
const User = require('./models/user');

const app = express();

// Use express-session for tracking logins
app.use(session({
  secret: 'mysecret',
  resave: true,
  saveUninitialized: false
}));

// Use Passport.js for authentication
app.use(passport.initialize());
app.use(passport.session());

// Use body-parser to parse form data
app.use(bodyParser.urlencoded({ extended: false }));

// Define a local strategy for Passport.js
passport.use(new LocalStrategy((username, password, done) => {
  User.findOne({ username: username }, (err, user) => {
    if (err) { return done(err); }
    if (!user) {
      return done(null, false, { message: 'Incorrect username.' });
    }
    if (!user.validPassword(password)) {
      return done(null, false, { message: 'Incorrect password.' });
    }
    return done(null, user);
  });
}));

// Serialize user for the session
passport.serializeUser((user, done) => {
  done(null, user.id);
});

// Deserialize user for the session
passport.deserializeUser((id, done) => {
  User.findById(id, (err, user) => {
    done(err, user);
  });
});

// Define a login route
app.get('/login', (req, res) => {
  res.render('login');
});

// Define a login action
app.post('/login', passport.authenticate('local', {
  successRedirect: '/',
  failureRedirect: '/login'
}));

// Define a logout route
app.get('/logout', (req, res) => {
  req.logout();
  res.redirect('/');
});

// Start the server
app.listen(3000, () => {
  console.log('Server started on http://localhost:3000');
});
