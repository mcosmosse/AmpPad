import * as Util from '../utils/vote_util';

export const createVote = (vote) => dispatch => (
    Util.createVote(vote)
);

export const deleteVote = (vote) => dispatch => (
    Util.deleteVote(vote)
);