import React from 'react';
import ReactDOM from 'react-dom';
// import Root from './components/root';
import configureStore from './store/store';

// for tests
import { signup, login, logout } from './utils/session_api_util';
// end imports

document.addEventListener('DOMContentLoaded', () => {
   const root = document.getElementById('root');
   const store = configureStore();

   // TESTING
    window.signup = signup;
    window.login = login;
    window.logout = logout;
    window.getState = store.getState;
    window.dispatch = store.dispatch;
   // END TESTING
   
   ReactDOM.render(<p>Welcome to the AmpPad homepage!</p>, root);
});