import React from 'react';
import ReactDOM from 'react-dom';
// import Root from './components/root';
// import configureStore from './store/store';

// for tests
import { signUp, login, logout } from './utils/session_api_util';
// end imports

document.addEventListener('DOMContentLoaded', () => {
   const root = document.getElementById('root');
//    const store = configureStore();

   // TESTING
    window.signUp = signUp;
    window.login = login;
    window.logout = logout;
   // END TESTING
   
   ReactDOM.render(<p>it's rendered!</p>, root);
});