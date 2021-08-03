import { connect } from 'react-redux';
import ChapterShow from './chapter_show';
import { fetchStory } from '../../actions/story_actions';
import { fetchChapter } from '../../actions/chapter_actions';
import { createComment, fetchComment, deleteComment } from '../../actions/comment_actions';
import { createCollectionEntry, deleteCollectionEntry, fetchCollections } from '../../actions/collection_actions';
import { createVote, deleteVote } from '../../actions/vote_actions';
import { orderChapters, myCollections } from '../../reducers/selectors';

const mSTP = (state, ownProps) => ({
    chapter: state.entities.chapters[ownProps.match.params.chapterId],
    chapters: orderChapters(state, ownProps.match.params.storyId),
    comments: Object.values(state.entities.comments).reverse(),
    authorId: state.session.currentUserId,
    story: state.entities.stories[ownProps.match.params.storyId],
    collections: myCollections(state, state.session.currentUserId),
});

const mDTP = dispatch => ({
    fetchStory: (id) => dispatch(fetchStory(id)),
    fetchChapter: (id) => dispatch(fetchChapter(id)),
    createComment: (comment) => dispatch(createComment(comment)),
    fetchComment: (id) => dispatch(fetchComment(id)),
    deleteComment: (id) => dispatch(deleteComment(id)),
    createCollectionEntry: (entry) => dispatch(createCollectionEntry(entry)),
    deleteCollectionEntry: (entry) => dispatch(deleteCollectionEntry(entry)),
    fetchCollections: () => dispatch(fetchCollections()),
    createVote: (vote) => dispatch(createVote(vote)),
    deleteVote: (vote) => dispatch(deleteVote(vote))
});

export default connect(mSTP, mDTP)(ChapterShow);