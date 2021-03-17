import { RECEIVE_COMMENT, RECEIVE_COMMENTS, REMOVE_COMMENT } from '../actions/comment_actions';
import { RECEIVE_CHAPTER } from '../actions/chapter_actions';

const commentsReducer = (state = {}, action) => {
    Object.freeze(state);
    const newState = Object.assign({}, state);
    switch (action.type) {
        case RECEIVE_CHAPTER:
            return action.payload.comments != undefined ? action.payload.comments : {} ;
        case RECEIVE_COMMENT:
            newState[action.comment.id] = action.comment;
            return newState;
        case RECEIVE_COMMENTS:
            return action.comments;
        case REMOVE_COMMENT:
            delete newState[action.comment.id];
            return newState;
        default:
            return state;
    }
}

export default commentsReducer;