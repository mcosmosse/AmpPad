import { connect } from 'react-redux';
import MyStoryIndex from './my_story_index';
import { fetchStories } from '../../actions/story_actions';
import { myStories } from '../../reducers/selectors';

const mSTP = state => ({
    stories: myStories(state, state.session.currentUserId),
    currentUser: state.entities.users[state.session.currentUserId]
});

const mDTP = dispatch => ({
    fetchStories: () => dispatch(fetchStories())
});

export default connect(mSTP, mDTP)(MyStoryIndex);