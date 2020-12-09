import { RECEIVE_ERRORS, RECEIVE_CURRENT_USER } from '../actions/session_actions'

const sessionErrorsReducer = (state = {}, action) => {
    Object.freeze(state);

    switch (action.type) {
        case RECEIVE_ERRORS:
            return { errors: action.errors }
        case RECEIVE_CURRENT_USER:
            const newState = Object.assign({}, state);
            delete newState.errors;
            return newState;
        default:
            return state;
    }
}

export default sessionErrorsReducer;