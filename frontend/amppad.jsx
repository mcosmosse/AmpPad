import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';

// for tests
import { signup, login, logout } from './actions/session_actions';
import { createStory, fetchStory, fetchStories, deleteStory, updateStory} from './actions/story_actions';
// end imports

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById("root");
    let store;

    if (window.currentUser) {
        const preloadedState = {
            entities: {
                users: {
                    [window.currentUser.id]: window.currentUser
                }
            },
            session: {
                currentUserId: window.currentUser.id
            }
        }
        store = configureStore(preloadedState);
        delete window.currentUser;
    } else {
        store = configureStore();
    }

   // TESTING
    window.signup = signup;
    window.login = login;
    window.logout = logout;
    window.createStory = createStory;
    window.fetchStory = fetchStory;
    window.fetchStories = fetchStories;
    window.deleteStory = deleteStory;
    window.updateStory = updateStory;
    window.getState = store.getState;
    window.dispatch = store.dispatch;
   // END TESTING
   
   ReactDOM.render(<Root store={store} />, root);
});