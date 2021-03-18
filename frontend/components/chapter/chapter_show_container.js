import { connect } from 'react-redux';
import ChapterShow from './chapter_show';
import { fetchStory } from '../../actions/story_actions';
import { fetchChapter } from '../../actions/chapter_actions';
import { createComment, fetchComment, deleteComment } from '../../actions/comment_actions';
import { orderChapters } from '../../reducers/selectors';

const mSTP = (state, ownProps) => ({
    chapter: state.entities.chapters[ownProps.match.params.chapterId],
    chapters: orderChapters(state, ownProps.match.params.storyId),
    comments: Object.values(state.entities.comments).reverse(),
    authorId: state.session.currentUserId,
    story: state.entities.stories[ownProps.match.params.storyId]
});

const mDTP = dispatch => ({
    fetchStory: (id) => dispatch(fetchStory(id)),
    fetchChapter: (id) => dispatch(fetchChapter(id)),
    createComment: (comment) => dispatch(createComment(comment)),
    fetchComment: (id) => dispatch(fetchComment(id)),
    deleteComment: (id) => dispatch(deleteComment(id))
});

export default connect(mSTP, mDTP)(ChapterShow);