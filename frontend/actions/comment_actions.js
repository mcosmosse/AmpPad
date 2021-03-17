import * as Util from '../utils/comment_util';

export const RECEIVE_COMMENT = "RECEIVE_COMMENT";
export const RECEIVE_COMMENTS = "RECEIVE_COMMENTS";
export const REMOVE_COMMENT = "REMOVE_COMMENT";

// regular actions

export const receiveComment = (comment) => ({
    type: RECEIVE_COMMENT,
    comment
});

export const receiveComments = (comments) => ({
    type: RECEIVE_COMMENTS,
    comments
});

export const removeComment = (comment) => ({
    type: REMOVE_COMMENT,
    comment
})

// thunk action creators

export const fetchComment = id => dispatch => (
    Util.fetchComment(id).then(comment => (
        dispatch(receiveComment(comment))
    ))
);

export const fetchComments = () => dispatch => (
    Util.fetchComments().then(comments => (
        dispatch(receiveComments(comments))
    ))
);

export const deleteComment = id => dispatch => (
    Util.deleteComment(id).then(comment => (
        dispatch(removeComment(comment))
    ))
);

export const createComment = comment => dispatch => (
    Util.createComment(comment).then(newChapter => (
        dispatch(receiveComment(newChapter))
    ))
);

export const updateComment = comment => dispatch => (
    Util.updateComment(comment).then(newChapter => (
        dispatch(receiveComment(newChapter))
    ))
);