import { RECEIVE_COLLECTION, RECEIVE_COLLECTIONS, REMOVE_COLLECTION } from '../actions/collection_actions';

const collectionsReducer = (state = {}, action) => {
    Object.freeze(state);
    const newState = Object.assign({}, state);
    switch(action.type) {
        case RECEIVE_COLLECTION:
            newState[action.collection.id] = action.collection;
            return newState;
        case RECEIVE_COLLECTIONS:
            return action.collections;
        case REMOVE_COLLECTION:
            delete newState[action.collection.id];
            return newState;
        default:
            return state;
    }
}

export default collectionsReducer;