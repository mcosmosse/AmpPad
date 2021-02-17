import { connect } from 'react-redux';
import StoryShow from './story_show';
import { fetchStory, updateStory, deleteStory } from '../../actions/story_actions';
import { } from '../../actions/chapter_actions';
import { orderChapters } from '../../reducers/selectors';

const mSTP = (state, ownProps) => ({
    story: state.entities.stories[ownProps.match.params.storyId],
    chapters: orderChapters(state, ownProps.match.params.storyId),
    currentUser: state.session.currentUserId
});

const mDTP = dispatch => ({
    updateStory: (story) => dispatch(updateStory(story)),
    deleteStory: (id) => dispatch(deleteStory(id)),
    fetchStory: (id) => dispatch(fetchStory(id))
});

export default connect(mSTP, mDTP)(StoryShow);