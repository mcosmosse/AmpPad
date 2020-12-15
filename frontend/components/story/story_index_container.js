import { connect } from 'react-redux';
import StoryIndex from './story_index';
import { fetchStories } from '../../actions/story_actions';

const mSTP = state => ({
    stories: Object.values(state.entities.stories)
});

const mDTP = dispatch => ({
    fetchStories: () => dispatch(fetchStories())
});

export default connect(mSTP, mDTP)(StoryIndex);